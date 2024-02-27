# Operators
| Description                        | Operator                                                                               | Associativity |
| :----------------                  | :------:                                                                               | ----:         |
| unary postfix                      |   expr++    expr--    ()    []    ?[]    .    ?.    !                                  | None          |
| unary prefix                       |   -expr    !expr    ~expr    ++expr    --expr      await expr                          | None          |
| multiplicative                     |  *    /    %  ~/                                                                       | Left          |
| additive                           |  +    -                                                                                | Left          |
| shift                              | <<    >>    >>>                                                                        | Lefts         |
| bitwise AND                        | &                                                                                      | Left          |
| bitwise XOR                        | ^                                                                                      | Lefts         |
| bitwise OR                         | |                                                                                      | Lefts         |
| relational and type test           | >=    >    <=    <    as    is  is!                                                    | None          |
| equality                           | ==    !=                                                                               | None          |
| logical AND                        | &&                                                                                     | Left          |
| logical OR                         | ||                                                                                     | Lefts         |
| if null                            | ??                                                                                     | Lefts         |
| conditional                        | expr1 ? expr2 : expr3                                                                  | Right         |
| cascade                            | ..    ?..                                                                              | Left          |
| assignment                         | =    *=    /=   +=   -=   &=   ^=   etc.                                               |Right          |

## Operator precedence example
In the operator table, each operator has higher precedence than the operators in the rows that follow it. For example, the multiplicative operator % has higher precedence than (and thus executes before) the equality operator ==, which has higher precedence than the logical AND operator &&. That precedence means that the following two lines of code execute the same way:
```
// Parentheses improve readability.
if ((n % i == 0) && (d % i == 0)) ...

// Harder to read, but equivalent.
if (n % i == 0 && d % i == 0) ...
```
## Arithmetic operators
* +: Add
* -: Subtract
* -expr: Unary minus, also known as negation (reverse the sign of the expression)
* *: Multiply
* /: Divide
* ~/: Divide, returning an integer result
* %: Get the remainder of an integer division (modulo)

Example:
```
assert(2 + 3 == 5);
assert(2 - 3 == -1);
assert(2 * 3 == 6);
assert(5 / 2 == 2.5); // Result is a double
assert(5 ~/ 2 == 2); // Result is an int
assert(5 % 2 == 1); // Remainder

assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
```
Dart also supports both prefix and postfix increment and decrement operators.
* ++var: var = var + 1 (expression value is var + 1)
* var++: var = var + 1 (expression value is var)
* --var: var = var - 1 (expression value is var - 1)
* var--: var = var - 1 (expression value is var)

Example:
```
int a;
int b;

a = 0;
b = ++a; // Increment a before b gets its value.
assert(a == b); // 1 == 1

a = 0;
b = a++; // Increment a after b gets its value.
assert(a != b); // 1 != 0

a = 0;
b = --a; // Decrement a before b gets its value.
assert(a == b); // -1 == -1

a = 0;
b = a--; // Decrement a after b gets its value.
assert(a != b); // -1 != 0
```
## Equality and relational operators
* ==: Equal
* !=: Not equal
* '>': Greater than
* <: Less than
* '>=': Greater than or equal to
* <=: Less than or equal to

To test whether two objects x and y represent the same thing, use the == operator. (In the rare case where you need to know whether two objects are the exact same object, use the identical() function instead.) Here’s how the == operator works:
* If x or y is null, return true if both are null, and false if only one is null.
* Return the result of invoking the == method on x with the argument y. (That’s right, operators such as == are methods that are invoked on their first operand. For details, see Operators.)

## Type test operators
The as, is, and is! operators are handy for checking types at runtime.
* as: Typecast (also used to specify library prefixes)
* is: true if the object has the specified type
* is!: True if the object doesn’t have the specified type

The result of obj is T is true if obj implements the interface specified by T. For example, obj is Object? is always true.

Use the as operator to cast an object to a particular type if and only if you are sure that the object is of that type. Example:
```
(employee as Person).firstName = 'Bob'; // throws an exception if employee is null or not a Person
```
If you aren’t sure that the object is of type T, then use is T to check the type before using the object.
```
if (employee is Person) {
  // Type check
  employee.firstName = 'Bob';
}
```
## Assignment operators
As you’ve already seen, you can assign values using the = operator. To assign only if the assigned-to variable is null, use the ??= operator.
```
// Assign value to a
a = value;
// Assign value to b if b is null; otherwise, b stays the same
b ??= value;
```
Compound assignment operators such as += combine an operation with an assignment.
```
=	*=	%=	>>>=	^=
+=	/=	<<=	&=	|=
-=	~/=	>>=
```
## Logical operators
You can invert or combine boolean expressions using the logical operators.
* !expr: inverts the following expression (changes false to true, and vice versa)
* ||: logical OR
* &&: logical AND
  
## Bitwise and shift operators
* &: AND
* |: OR
* ^: XOR
* ~expr: Unary bitwise complement (0s become 1s; 1s become 0s)
* <<: Shift left
* '>>': Shift right
* '>>>': Unsigned shift right (requires a language version of at least 2.14)

Example:
```
final value = 0x22;
final bitmask = 0x0f;

assert((value & bitmask) == 0x02); // AND
assert((value & ~bitmask) == 0x20); // AND NOT
assert((value | bitmask) == 0x2f); // OR
assert((value ^ bitmask) == 0x2d); // XOR

assert((value << 4) == 0x220); // Shift left
assert((value >> 4) == 0x02); // Shift right

// Shift right example that results in different behavior on web
// because the operand value changes when masked to 32 bits:
assert((-value >> 4) == -0x03);

assert((value >>> 4) == 0x02); // Unsigned shift right
assert((-value >>> 4) > 0); // Unsigned shift right
```
## Conditional expressions
Dart has two operators that let you concisely evaluate expressions that might otherwise require if-else statements:

condition ? expr1 : expr2
If condition is true, evaluates expr1 (and returns its value); otherwise, evaluates and returns the value of expr2.
expr1 ?? expr2
If expr1 is non-null, returns its value; otherwise, evaluates and returns the value of expr2.
When you need to assign a value based on a boolean expression, consider using ? and :.
```
var visibility = isPublic ? 'public' : 'private';
```
If the boolean expression tests for null, consider using ??.
```
String playerName(String? name) => name ?? 'Guest';
```
## Cascade notation
Cascades (.., ?..) allow you to make a sequence of operations on the same object. In addition to accessing instance members, you can also call instance methods on that same object. This often saves you the step of creating a temporary variable and allows you to write more fluid code.

Consider the following code:
```
var paint = Paint()
  ..color = Colors.black
  ..strokeCap = StrokeCap.round
  ..strokeWidth = 5.0;
```
The constructor, Paint(), returns a Paint object. The code that follows the cascade notation operates on this object, ignoring any values that might be returned.
```
var paint = Paint();
paint.color = Colors.black;
paint.strokeCap = StrokeCap.round;
paint.strokeWidth = 5.0;
```
If the object that the cascade operates on can be null, then use a null-shorting cascade (?..) for the first operation. Starting with ?.. guarantees that none of the cascade operations are attempted on that null object.
```
querySelector('#confirm') // Get an object.
  ?..text = 'Confirm' // Use its members.
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'))
  ..scrollIntoView();
```
**Note:** The ?.. syntax requires a language version of at least 2.12.

You can also nest cascades. For example:
```
final addressBook = (AddressBookBuilder()
      ..name = 'jenny'
      ..email = 'jenny@example.com'
      ..phone = (PhoneNumberBuilder()
            ..number = '415-555-0100'
            ..label = 'home')
          .build())
    .build();
```
Be careful to construct your cascade on a function that returns an actual object. For example, the following code fails:
```
var sb = StringBuffer();
sb.write('foo')
  ..write('bar'); // Error: method 'write' isn't defined for 'void'.
```
**Note:** Strictly speaking, the “double dot” notation for cascades isn’t an operator. It’s just part of the Dart syntax.
## Other operators
* () - Function application - Represents a function call
* [] - Subscript access - Represents a call to the overridable [] operator; example: fooList[1] passes the int 1 to fooList to access the element at index 1
* ?[] - Conditional subscript access - Like [], but the leftmost operand can be null; example: fooList?[1] passes the int 1 to fooList to access the element at index 1 unless fooList is null (in which case the expression evaluates to null)
* . - Member access - Refers to a property of an expression; example: foo.bar selects property bar from expression foo
* ?. - Conditional member access - Like ., but the leftmost operand can be null; example: foo?.bar selects property bar from expression foo unless foo is null (in which case the value of foo?.bar is null)
* ! - Non-null assertion operator - Casts an expression to its underlying non-nullable type, throwing a runtime exception if the cast fails; example: foo!.bar asserts foo is non-null and selects the property bar, unless foo is null in which case a runtime exception is thrown