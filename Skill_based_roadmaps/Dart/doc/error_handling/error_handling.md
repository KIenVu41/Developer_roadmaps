# Exceptions
Your Dart code can throw and catch exceptions. Exceptions are errors indicating that something unexpected happened. If the exception isn’t caught, the isolate that raised the exception is suspended, and typically the isolate and its program are terminated.

In contrast to Java, all of Dart’s exceptions are unchecked exceptions. Methods don’t declare which exceptions they might throw, and you aren’t required to catch any exceptions.

Dart provides Exception and Error types, as well as numerous predefined subtypes. You can, of course, define your own exceptions. However, Dart programs can throw any non-null object—not just Exception and Error objects—as an exception.
## Throw
Here’s an example of throwing, or raising, an exception:
```
throw FormatException('Expected at least 1 section');
```
You can also throw arbitrary objects:
```
throw 'Out of llamas!';
```
**Note:** Production-quality code usually throws types that implement Error or Exception.

Because throwing an exception is an expression, you can throw exceptions in => statements, as well as anywhere else that allows expressions:
```
void distanceTo(Point other) => throw UnimplementedError();
```
## Catch
Catching, or capturing, an exception stops the exception from propagating (unless you rethrow the exception). Catching an exception gives you a chance to handle it:
```
try {
  breedMoreLlamas();
} on OutOfLlamasException {
  buyMoreLlamas();
}
```
To handle code that can throw more than one type of exception, you can specify multiple catch clauses. The first catch clause that matches the thrown object’s type handles the exception. If the catch clause does not specify a type, that clause can handle any type of thrown object:
```
try {
  breedMoreLlamas();
} on OutOfLlamasException {
  // A specific exception
  buyMoreLlamas();
} on Exception catch (e) {
  // Anything else that is an exception
  print('Unknown exception: $e');
} catch (e) {
  // No specified type, handles all
  print('Something really unknown: $e');
}
```
As the preceding code shows, you can use either on or catch or both. Use on when you need to specify the exception type. Use catch when your exception handler needs the exception object.

You can specify one or two parameters to catch(). The first is the exception that was thrown, and the second is the stack trace (a StackTrace object).
```
try {
  // ···
} on Exception catch (e) {
  print('Exception details:\n $e');
} catch (e, s) {
  print('Exception details:\n $e');
  print('Stack trace:\n $s');
}
```
To partially handle an exception, while allowing it to propagate, use the rethrow keyword.
```
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

void main() {
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}
```
## Finally
To ensure that some code runs whether or not an exception is thrown, use a finally clause. If no catch clause matches the exception, the exception is propagated after the finally clause runs:
```
try {
  breedMoreLlamas();
} finally {
  // Always clean up, even if an exception is thrown.
  cleanLlamaStalls();
}
```
The finally clause runs after any matching catch clauses:
```
try {
  breedMoreLlamas();
} catch (e) {
  print('Error: $e'); // Handle the exception first.
} finally {
  cleanLlamaStalls(); // Then clean up.
}
```
# Assert
During development, use an assert statement— assert(<condition>, <optionalMessage>); —to disrupt normal execution if a boolean condition is false.
```
// Make sure the variable has a non-null value.
assert(text != null);

// Make sure the value is less than 100.
assert(number < 100);

// Make sure this is an https URL.
assert(urlString.startsWith('https'));
```
To attach a message to an assertion, add a string as the second argument to assert (optionally with a trailing comma):
```
assert(urlString.startsWith('https'),
    'URL ($urlString) should start with "https".');
```
The first argument to assert can be any expression that resolves to a boolean value. If the expression’s value is true, the assertion succeeds and execution continues. If it’s false, the assertion fails and an exception (an AssertionError) is thrown.