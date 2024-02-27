The dart:core library (API reference) provides a small but critical set of built-in functionality. This library is automatically imported into every Dart program.
# Printing to the console
The top-level print() method takes a single argument (any Object) and displays that object’s string value (as returned by toString()) in the console.
```
print(anObject);
print('I drink $tea.');
```
# Numbers
The dart:core library defines the num, int, and double classes, which have some basic utilities for working with numbers.

You can convert a string into an integer or double with the parse() methods of int and double, respectively:
```
assert(int.parse('42') == 42);
assert(int.parse('0x42') == 66);
assert(double.parse('0.50') == 0.5);    
```
Or use the parse() method of num, which creates an integer if possible and otherwise a double:
```
assert(num.parse('42') is int);
assert(num.parse('0x42') is int);
assert(num.parse('0.50') is double);
```
To specify the base of an integer, add a radix parameter:
```
assert(int.parse('42', radix: 16) == 66);
```
Use the toString() method to convert an int or double to a string. To specify the number of digits to the right of the decimal, use toStringAsFixed(). To specify the number of significant digits in the string, use toStringAsPrecision():
```
// Convert an int to a string.
assert(42.toString() == '42');

// Convert a double to a string.
assert(123.456.toString() == '123.456');

// Specify the number of digits after the decimal.
assert(123.456.toStringAsFixed(2) == '123.46');

// Specify the number of significant figures.
assert(123.456.toStringAsPrecision(2) == '1.2e+2');
assert(double.parse('1.2e+2') == 120.0);
```
# Strings and regular expressions
A string in Dart is an immutable sequence of UTF-16 code units. The language tour has more information about strings. You can use regular expressions (RegExp objects) to search within strings and to replace parts of strings.

The String class defines such methods as split(), contains(), startsWith(), endsWith(), and more.

## Searching inside a string
You can find particular locations within a string, as well as check whether a string begins with or ends with a particular pattern. For example:
```
// Check whether a string contains another string.
assert('Never odd or even'.contains('odd'));

// Does a string start with another string?
assert('Never odd or even'.startsWith('Never'));

// Does a string end with another string?
assert('Never odd or even'.endsWith('even'));

// Find the location of a string inside a string.
assert('Never odd or even'.indexOf('odd') == 6);
```
## Extracting data from a string
You can get the individual characters from a string as Strings or ints, respectively. To be precise, you actually get individual UTF-16 code units; high-numbered characters such as the treble clef symbol (‘\u{1D11E}’) are two code units apiece.

You can also extract a substring or split a string into a list of substrings:
```
// Grab a substring.
assert('Never odd or even'.substring(6, 9) == 'odd');

// Split a string using a string pattern.
var parts = 'progressive web apps'.split(' ');
assert(parts.length == 3);
assert(parts[0] == 'progressive');

// Get a UTF-16 code unit (as a string) by index.
assert('Never odd or even'[0] == 'N');

// Use split() with an empty string parameter to get
// a list of all characters (as Strings); good for
// iterating.
for (final char in 'hello'.split('')) {
  print(char);
}

// Get all the UTF-16 code units in the string.
var codeUnitList = 'Never odd or even'.codeUnits.toList();
assert(codeUnitList[0] == 78);
```
## Converting to uppercase or lowercase
You can easily convert strings to their uppercase and lowercase variants:
```
// Convert to uppercase.
assert('web apps'.toUpperCase() == 'WEB APPS');

// Convert to lowercase.
assert('WEB APPS'.toLowerCase() == 'web apps');
```
## Trimming and empty strings
Remove all leading and trailing white space with trim(). To check whether a string is empty (length is zero), use isEmpty.
```
// Trim a string.
assert('  hello  '.trim() == 'hello');

// Check whether a string is empty.
assert(''.isEmpty);

// Strings with only white space are not empty.
assert('  '.isNotEmpty);
```
## Replacing part of a string
Strings are immutable objects, which means you can create them but you can’t change them. If you look closely at the String API reference, you’ll notice that none of the methods actually changes the state of a String. For example, the method replaceAll() returns a new String without changing the original String:
```
var greetingTemplate = 'Hello, NAME!';
var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');

// greetingTemplate didn't change.
assert(greeting != greetingTemplate);
```
## Building a string
To programmatically generate a string, you can use StringBuffer. A StringBuffer doesn’t generate a new String object until toString() is called. The writeAll() method has an optional second parameter that lets you specify a separator—in this case, a space.
```
var sb = StringBuffer();
sb
  ..write('Use a StringBuffer for ')
  ..writeAll(['efficient', 'string', 'creation'], ' ')
  ..write('.');

var fullString = sb.toString();

assert(fullString == 'Use a StringBuffer for efficient string creation.');
```
## Regular expressions
The RegExp class provides the same capabilities as JavaScript regular expressions. Use regular expressions for efficient searching and pattern matching of strings.
```
// Here's a regular expression for one or more digits.
var numbers = RegExp(r'\d+');

var allCharacters = 'llamas live fifteen to twenty years';
var someDigits = 'llamas live 15 to 20 years';

// contains() can use a regular expression.
assert(!allCharacters.contains(numbers));
assert(someDigits.contains(numbers));

// Replace every match with another string.
var exedOut = someDigits.replaceAll(numbers, 'XX');
assert(exedOut == 'llamas live XX to XX years');
```
You can work directly with the RegExp class, too. The Match class provides access to a regular expression match.
```
var numbers = RegExp(r'\d+');
var someDigits = 'llamas live 15 to 20 years';

// Check whether the reg exp has a match in a string.
assert(numbers.hasMatch(someDigits));

// Loop through all matches.
for (final match in numbers.allMatches(someDigits)) {
  print(match.group(0)); // 15, then 20
}
```
# Collections
## Lists
The List class also defines several methods for adding items to and removing items from lists.
```
// Create an empty list of strings.
var grains = <String>[];
assert(grains.isEmpty);

// Create a list using a list literal.
var fruits = ['apples', 'oranges'];

// Add to a list.
fruits.add('kiwis');

// Add multiple items to a list.
fruits.addAll(['grapes', 'bananas']);

// Get the list length.
assert(fruits.length == 5);

// Remove a single item.
var appleIndex = fruits.indexOf('apples');
fruits.removeAt(appleIndex);
assert(fruits.length == 4);

// Remove all elements from a list.
fruits.clear();
assert(fruits.isEmpty);

// You can also create a List using one of the constructors.
var vegetables = List.filled(99, 'broccoli');
assert(vegetables.every((v) => v == 'broccoli'));
```
Use indexOf() to find the index of an object in a list:
```
var fruits = ['apples', 'oranges'];

// Access a list item by index.
assert(fruits[0] == 'apples');

// Find an item in a list.
assert(fruits.indexOf('apples') == 0);
```
Sort a list using the sort() method. You can provide a sorting function that compares two objects. This sorting function must return < 0 for smaller, 0 for the same, and > 0 for bigger. The following example uses compareTo(), which is defined by Comparable and implemented by String.
```
var fruits = ['bananas', 'apples', 'oranges'];

// Sort a list.
fruits.sort((a, b) => a.compareTo(b));
assert(fruits[0] == 'apples');
```
Lists are parameterized types (generics), so you can specify the type that a list should contain:
```
// This list should contain only strings.
var fruits = <String>[];

fruits.add('apples');
var fruit = fruits[0];
assert(fruit is String);
```
## Sets
A set in Dart is an unordered collection of unique items. Because a set is unordered, you can’t get a set’s items by index (position).
```
// Create an empty set of strings.
var ingredients = <String>{};

// Add new items to it.
ingredients.addAll(['gold', 'titanium', 'xenon']);
assert(ingredients.length == 3);

// Adding a duplicate item has no effect.
ingredients.add('gold');
assert(ingredients.length == 3);

// Remove an item from a set.
ingredients.remove('gold');
assert(ingredients.length == 2);

// You can also create sets using
// one of the constructors.
var atomicNumbers = Set.from([79, 22, 54]);
```
Use contains() and containsAll() to check whether one or more objects are in a set:
```
var ingredients = Set<String>();
ingredients.addAll(['gold', 'titanium', 'xenon']);

// Check whether an item is in the set.
assert(ingredients.contains('titanium'));

// Check whether all the items are in the set.
assert(ingredients.containsAll(['titanium', 'xenon']));
```
An intersection is a set whose items are in two other sets.
```
var ingredients = Set<String>();
ingredients.addAll(['gold', 'titanium', 'xenon']);

// Create the intersection of two sets.
var nobleGases = Set.from(['xenon', 'argon']);
var intersection = ingredients.intersection(nobleGases);
assert(intersection.length == 1);
assert(intersection.contains('xenon'));
```
## Maps
A map, commonly known as a dictionary or hash, is an unordered collection of key-value pairs. Maps associate a key to some value for easy retrieval. Unlike in JavaScript, Dart objects are not maps.

You can declare a map using a terse literal syntax, or you can use a traditional constructor:
```
// Maps often use strings as keys.
var hawaiianBeaches = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
};

// Maps can be built from a constructor.
var searchTerms = Map();

// Maps are parameterized types; you can specify what
// types the key and value should be.
var nobleGases = Map<int, String>();
```
You add, get, and set map items using the bracket syntax. Use remove() to remove a key and its value from a map.
```
var nobleGases = {54: 'xenon'};

// Retrieve a value with a key.
assert(nobleGases[54] == 'xenon');

// Check whether a map contains a key.
assert(nobleGases.containsKey(54));

// Remove a key and its value.
nobleGases.remove(54);
assert(!nobleGases.containsKey(54));
```
You can retrieve all the values or all the keys from a map:
```
var hawaiianBeaches = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
};

// Get all the keys as an unordered collection
// (an Iterable).
var keys = hawaiianBeaches.keys;

assert(keys.length == 3);
assert(Set.from(keys).contains('Oahu'));

// Get all the values as an unordered collection
// (an Iterable of Lists).
var values = hawaiianBeaches.values;
assert(values.length == 3);
assert(values.any((v) => v.contains('Waikiki')));
```
To check whether a map contains a key, use containsKey(). Because map values can be null, you cannot rely on simply getting the value for the key and checking for null to determine the existence of a key.
```
var hawaiianBeaches = {
  'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
  'Big Island': ['Wailea Bay', 'Pololu Beach'],
  'Kauai': ['Hanalei', 'Poipu']
};

assert(hawaiianBeaches.containsKey('Oahu'));
assert(!hawaiianBeaches.containsKey('Florida'));
```
Use the putIfAbsent() method when you want to assign a value to a key if and only if the key does not already exist in a map. You must provide a function that returns the value.
```
var teamAssignments = <String, String>{};
teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
assert(teamAssignments['Catcher'] != null);
```
# URIs
The Uri class provides functions to encode and decode strings for use in URIs (which you might know as URLs). These functions handle characters that are special for URIs, such as & and =. The Uri class also parses and exposes the components of a URI—host, port, scheme, and so on.
## Encoding and decoding fully qualified URIs
To encode and decode characters except those with special meaning in a URI (such as /, :, &, #), use the encodeFull() and decodeFull() methods. These methods are good for encoding or decoding a fully qualified URI, leaving intact special URI characters
```
var uri = 'https://example.org/api?foo=some message';

var encoded = Uri.encodeFull(uri);
assert(encoded == 'https://example.org/api?foo=some%20message');

var decoded = Uri.decodeFull(encoded);
assert(uri == decoded);
```
Notice how only the space between some and message was encoded.
## Encoding and decoding URI components
To encode and decode all of a string’s characters that have special meaning in a URI, including (but not limited to) /, &, and :, use the encodeComponent() and decodeComponent() methods.
```
var uri = 'https://example.org/api?foo=some message';

var encoded = Uri.encodeComponent(uri);
assert(
    encoded == 'https%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');

var decoded = Uri.decodeComponent(encoded);
assert(uri == decoded);
```
Notice how every special character is encoded. For example, / is encoded to %2F.
## Parsing URIs
If you have a Uri object or a URI string, you can get its parts using Uri fields such as path. To create a Uri from a string, use the parse() static method:
```
var uri = Uri.parse('https://example.org:8080/foo/bar#frag');

assert(uri.scheme == 'https');
assert(uri.host == 'example.org');
assert(uri.path == '/foo/bar');
assert(uri.fragment == 'frag');
assert(uri.origin == 'https://example.org:8080');
```
## Building URIs
You can build up a URI from individual parts using the Uri() constructor:
```
var uri = Uri(
    scheme: 'https',
    host: 'example.org',
    path: '/foo/bar',
    fragment: 'frag',
    queryParameters: {'lang': 'dart'});
assert(uri.toString() == 'https://example.org/foo/bar?lang=dart#frag');
```
If you don’t need to specify a fragment, to create a URI with a http or https scheme, you can instead use the Uri.http or Uri.https factory constructors:
```
var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});

assert(httpUri.toString() == 'http://example.org/foo/bar?lang=dart');
assert(httpsUri.toString() == 'https://example.org/foo/bar?lang=dart');
```
# Dates and times
A DateTime object is a point in time. The time zone is either UTC or the local time zone.

You can create DateTime objects using several constructors and methods:
```
// Get the current date and time.
var now = DateTime.now();

// Create a new DateTime with the local time zone.
var y2k = DateTime(2000); // January 1, 2000

// Specify the month and day.
y2k = DateTime(2000, 1, 2); // January 2, 2000

// Specify the date as a UTC time.
y2k = DateTime.utc(2000); // 1/1/2000, UTC

// Specify a date and time in ms since the Unix epoch.
y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);

// Parse an ISO 8601 date in the UTC time zone.
y2k = DateTime.parse('2000-01-01T00:00:00Z');

// Create a new DateTime from an existing one, adjusting just some properties:
var sameTimeLastYear = now.copyWith(year: now.year - 1);
```
**Warning: DateTime operations might give unexpected results related to Daylight Savings Time and other non-standard time adjustments.**

The millisecondsSinceEpoch property of a date returns the number of milliseconds since the “Unix epoch”—January 1, 1970, UTC:
```
// 1/1/2000, UTC
var y2k = DateTime.utc(2000);
assert(y2k.millisecondsSinceEpoch == 946684800000);

// 1/1/1970, UTC
var unixEpoch = DateTime.utc(1970);
assert(unixEpoch.millisecondsSinceEpoch == 0);
```
Use the Duration class to calculate the difference between two dates and to shift a date forward or backward:
```
var y2k = DateTime.utc(2000);

// Add one year.
var y2001 = y2k.add(const Duration(days: 366));
assert(y2001.year == 2001);

// Subtract 30 days.
var december2000 = y2001.subtract(const Duration(days: 30));
assert(december2000.year == 2000);
assert(december2000.month == 12);

// Calculate the difference between two dates.
// Returns a Duration object.
var duration = y2001.difference(y2k);
assert(duration.inDays == 366); // y2k was a leap year.
```
**Warning: Using a Duration to shift a DateTime by days can be problematic, due to clock shifts (to daylight saving time, for example). Use UTC dates if you must shift days.**

# Utility classes
The core library contains various utility classes, useful for sorting, mapping values, and iterating.

## Comparing objects
Implement the Comparable interface to indicate that an object can be compared to another object, usually for sorting. The compareTo() method returns < 0 for smaller, 0 for the same, and > 0 for bigger.
```
class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);

  @override
  int compareTo(Line other) => length - other.length;
}

void main() {
  var short = const Line(1);
  var long = const Line(100);
  assert(short.compareTo(long) < 0);
}
```
## Implementing map keys
Each object in Dart automatically provides an integer hash code, and thus can be used as a key in a map. However, you can override the hashCode getter to generate a custom hash code. If you do, you might also want to override the == operator. Objects that are equal (via ==) must have identical hash codes. A hash code doesn’t have to be unique, but it should be well distributed.

**Tip: To consistently and easily implement the hashCode getter, consider using the static hashing methods provided by the Object class. To generate a single hash code for multiple properties of an object, you can use Object.hash(). To generate a hash code for a collection, you can use either Object.hashAll() (if element order matters) or Object.hashAllUnordered().**
```
class Person {
  final String firstName, lastName;

  Person(this.firstName, this.lastName);

  // Override hashCode using the static hashing methods
  // provided by the `Object` class.
  @override
  int get hashCode => Object.hash(firstName, lastName);

  // You should generally implement operator `==` if you
  // override `hashCode`.
  @override
  bool operator ==(Object other) {
    return other is Person &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }
}

void main() {
  var p1 = Person('Bob', 'Smith');
  var p2 = Person('Bob', 'Smith');
  var p3 = 'not a person';
  assert(p1.hashCode == p2.hashCode);
  assert(p1 == p2);
  assert(p1 != p3);
}
```
## Iteration
The Iterable and Iterator classes support sequential access to a collection of values. To practice using these collections, follow the Iterable collections codelab.

If you create a class that can provide Iterators for use in for-in loops, extend (if possible) or implement Iterable. Implement Iterator to define the actual iteration ability.
```
class Process {
  // Represents a process...
}

class ProcessIterator implements Iterator<Process> {
  @override
  Process get current => ...
  @override
  bool moveNext() => ...
}

// A mythical class that lets you iterate through all
// processes. Extends a subclass of [Iterable].
class Processes extends IterableBase<Process> {
  @override
  final Iterator<Process> iterator = ProcessIterator();
}

void main() {
  // Iterable objects can be used with for-in.
  for (final process in Processes()) {
    // Do something with the process.
  }
}
```
# Exceptions
The Dart core library defines many common exceptions and errors. Exceptions are considered conditions that you can plan ahead for and catch. Errors are conditions that you don’t expect or plan for.

A couple of the most common errors are:

NoSuchMethodError
Thrown when a receiving object (which might be null) does not implement a method.

ArgumentError
Can be thrown by a method that encounters an unexpected argument.

Throwing an application-specific exception is a common way to indicate that an error has occurred. You can define a custom exception by implementing the Exception interface:
```
class FooException implements Exception {
  final String? msg;

  const FooException([this.msg]);

  @override
  String toString() => msg ?? 'FooException';
}
```
