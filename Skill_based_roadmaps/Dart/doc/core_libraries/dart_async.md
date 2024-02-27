Asynchronous programming often uses callback functions, but Dart provides alternatives: Future and Stream objects. A Future is like a promise for a result to be provided sometime in the future. A Stream is a way to get a sequence of values, such as events. Future, Stream, and more are in the dart:async library (API reference).

**Note: You don’t always need to use the Future or Stream APIs directly. The Dart language supports asynchronous coding using keywords such as async and await. See the asynchronous programming codelab for details.**

The dart:async library works in both web apps and command-line apps. To use it, import dart:async:
```
import 'dart:async';
```
**Tip: You don’t need to import dart:async to use the Future and Stream APIs, because dart:core exports those classes.**

# Future
Future objects appear throughout the Dart libraries, often as the object returned by an asynchronous method. When a future completes, its value is ready to use.
## Using await
Before you directly use the Future API, consider using await instead. Code that uses await expressions can be easier to understand than code that uses the Future API.

Consider the following function. It uses Future’s then() method to execute three asynchronous functions in a row, waiting for each one to complete before executing the next one.
```
void runUsingFuture() {
  // ...
  findEntryPoint().then((entryPoint) {
    return runExecutable(entryPoint, args);
  }).then(flushThenExit);
}
```
The equivalent code with await expressions looks more like synchronous code:
```
Future<void> runUsingAsyncAwait() async {
  // ...
  var entryPoint = await findEntryPoint();
  var exitCode = await runExecutable(entryPoint, args);
  await flushThenExit(exitCode);
}
```
An async function can catch exceptions from Futures. For example:
```
var entryPoint = await findEntryPoint();
try {
  var exitCode = await runExecutable(entryPoint, args);
  await flushThenExit(exitCode);
} catch (e) {
  // Handle the error...
}
```
** Important: Async functions return Futures. If you don’t want your function to return a future, then use a different solution. For example, you might call an async function from your function.**

## Basic usage
You can use then() to schedule code that runs when the future completes. For example, Client.read() returns a Future, since HTTP requests can take a while. Using then() lets you run some code when that Future has completed and the promised string value is available:
```
httpClient.read(url).then((String result) {
  print(result);
});
```
Use catchError() to handle any errors or exceptions that a Future object might throw.
```
httpClient.read(url).then((String result) {
  print(result);
}).catchError((e) {
  // Handle or ignore the error.
});
```
The then().catchError() pattern is the asynchronous version of try-catch.

**Important: Be sure to invoke catchError() on the result of then()—not on the result of the original Future. Otherwise, the catchError() can handle errors only from the original Future’s computation, but not from the handler registered by then().**

## Chaining multiple asynchronous methods
The then() method returns a Future, providing a useful way to run multiple asynchronous functions in a certain order. If the callback registered with then() returns a Future, then() returns a Future that will complete with the same result as the Future returned from the callback. If the callback returns a value of any other type, then() creates a new Future that completes with the value.
```
Future result = costlyQuery(url);
result
    .then((value) => expensiveWork(value))
    .then((_) => lengthyComputation())
    .then((_) => print('Done!'))
    .catchError((exception) {
  /* Handle exception... */
});
```
In the preceding example, the methods run in the following order:
* costlyQuery()
* expensiveWork()
* lengthyComputation()

Here is the same code written using await:
```
try {
  final value = await costlyQuery(url);
  await expensiveWork(value);
  await lengthyComputation();
  print('Done!');
} catch (e) {
  /* Handle exception... */
}
```
## Waiting for multiple futures
Sometimes your algorithm needs to invoke many asynchronous functions and wait for them all to complete before continuing. Use the Future.wait() static method to manage multiple Futures and wait for them to complete:
```
Future<void> deleteLotsOfFiles() async =>  ...
Future<void> copyLotsOfFiles() async =>  ...
Future<void> checksumLotsOfOtherFiles() async =>  ...

await Future.wait([
  deleteLotsOfFiles(),
  copyLotsOfFiles(),
  checksumLotsOfOtherFiles(),
]);
print('Done with all the long steps!');
```
Future.wait() returns a future which completes once all the provided futures have completed. It completes either with their results, or with an error if any of the provided futures fail.
## Handling errors for multiple futures
You can also wait for parallel operations on an iterable or record of futures.

These extensions return a future with the resulting values of all provided futures. Unlike Future.wait, they also let you handle errors.

If any future in the collection completes with an error, wait completes with a ParallelWaitError. This allows the caller to handle individual errors and dispose successful results if necessary.

When you don’t need the result values from each individual future, use wait on an iterable of futures:
```
void main() async {
  Future<void> delete() async =>  ...
  Future<void> copy() async =>  ...
  Future<void> errorResult() async =>  ...
  
  try {
    // Wait for each future in a list, returns a list of futures:
    var results = await [delete(), copy(), errorResult()].wait;

    } on ParallelWaitError<List<bool?>, List<AsyncError?>> catch (e) {

    print(e.values[0]);    // Prints successful future
    print(e.values[1]);    // Prints successful future
    print(e.values[2]);    // Prints null when the result is an error

    print(e.errors[0]);    // Prints null when the result is successful
    print(e.errors[1]);    // Prints null when the result is successful
    print(e.errors[2]);    // Prints error
  }

}
```
When you do need the individual result values from each future, use wait on a record of futures. This provides the additional benefit that the futures can be of different types:
```
void main() async {
  Future<int> delete() async =>  ...
  Future<String> copy() async =>  ...
  Future<bool> errorResult() async =>  ...

  try {    
    // Wait for each future in a record, returns a record of futures:
    (int, String, bool) result = await (delete(), copy(), errorResult()).wait;
  
  } on ParallelWaitError<(int?, String?, bool?),
      (AsyncError?, AsyncError?, AsyncError?)> catch (e) {
    // ...
    }

  // Do something with the results:
  var deleteInt  = result.$1;
  var copyString = result.$2;
  var errorBool  = result.$3;
}
```
# Stream
Stream objects appear throughout Dart APIs, representing sequences of data. For example, HTML events such as button clicks are delivered using streams. You can also read a file as a stream.
## Using an asynchronous for loop
Sometimes you can use an asynchronous for loop (await for) instead of using the Stream API.

Consider the following function. It uses Stream’s listen() method to subscribe to a list of files, passing in a function literal that searches each file or directory.
```
void main(List<String> arguments) {
  // ...
  FileSystemEntity.isDirectory(searchPath).then((isDir) {
    if (isDir) {
      final startingDir = Directory(searchPath);
      startingDir.list().listen((entity) {
        if (entity is File) {
          searchFile(entity, searchTerms);
        }
      });
    } else {
      searchFile(File(searchPath), searchTerms);
    }
  });
}
```
The equivalent code with await expressions, including an asynchronous for loop (await for), looks more like synchronous code:
```
void main(List<String> arguments) async {
  // ...
  if (await FileSystemEntity.isDirectory(searchPath)) {
    final startingDir = Directory(searchPath);
    await for (final entity in startingDir.list()) {
      if (entity is File) {
        searchFile(entity, searchTerms);
      }
    }
  } else {
    searchFile(File(searchPath), searchTerms);
  }
}
```
**Important: Before using await for, make sure that it makes the code clearer and that you really do want to wait for all of the stream’s results. For example, you usually should not use await for for DOM event listeners, because the DOM sends endless streams of events. If you use await for to register two DOM event listeners in a row, then the second kind of event is never handled.**
## Listening for stream data
To get each value as it arrives, either use await for or subscribe to the stream using the listen() method:
```
// Add an event handler to a button.
submitButton.onClick.listen((e) {
  // When the button is clicked, it runs this code.
  submitData();
});
```
In this example, the onClick property is a Stream object provided by the submit button.

If you care about only one event, you can get it using a property such as first, last, or single. To test the event before handling it, use a method such as firstWhere(), lastWhere(), or singleWhere().

If you care about a subset of events, you can use methods such as skip(), skipWhile(), take(), takeWhile(), and where().
## Transforming stream data
Often, you need to change the format of a stream’s data before you can use it. Use the transform() method to produce a stream with a different type of data:
```
var lines =
    inputStream.transform(utf8.decoder).transform(const LineSplitter());
```
This example uses two transformers. First it uses utf8.decoder to transform the stream of integers into a stream of strings. Then it uses a LineSplitter to transform the stream of strings into a stream of separate lines. These transformers are from the dart:convert library (see the dart:convert section).
## Handling errors and completion
How you specify error and completion handling code depends on whether you use an asynchronous for loop (await for) or the Stream API.

If you use an asynchronous for loop, then use try-catch to handle errors. Code that executes after the stream is closed goes after the asynchronous for loop.
```
Future<void> readFileAwaitFor() async {
  var config = File('config.txt');
  Stream<List<int>> inputStream = config.openRead();

  var lines =
      inputStream.transform(utf8.decoder).transform(const LineSplitter());
  try {
    await for (final line in lines) {
      print('Got ${line.length} characters from stream');
    }
    print('file is now closed');
  } catch (e) {
    print(e);
  }
}
```
If you use the Stream API, then handle errors by registering an onError listener. Run code after the stream is closed by registering an onDone listener.
```
var config = File('config.txt');
Stream<List<int>> inputStream = config.openRead();

inputStream.transform(utf8.decoder).transform(const LineSplitter()).listen(
    (String line) {
  print('Got ${line.length} characters from stream');
}, onDone: () {
  print('file is now closed');
}, onError: (e) {
  print(e);
});
```