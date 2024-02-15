In C language, operators are symbols that represent operations to be performed on one or more operands. They are the basic components of the C programming.

# What is a C Operator?
An operator in C can be defined as the symbol that helps us to perform some specific mathematical, relational, bitwise, conditional, or logical computations on values and variables. The values and variables used with operators are called operands. So we can say that the operators are the symbols that perform operations on operands.
![image info](/c/imgs/operators.png)

**For example,**
```
c = a + b;
```
Here, ‘+’ is the operator known as the addition operator, and ‘a’ and ‘b’ are operands. The addition operator tells the compiler to add both of the operands ‘a’ and ‘b’.

# Types of Operators in C
C language provides a wide range of operators that can be classified into 6 types based on their functionality:

* Arithmetic Operators
* Relational Operators
* Logical Operators
* Bitwise Operators
* Assignment Operators
* Other Operators

## 1. Arithmetic Operations in C
The arithmetic operators are used to perform arithmetic/mathematical operations on operands. There are 9 arithmetic operators in C language:
![image info](/c/imgs/math_operators.png)

**Example of C Arithmetic Operators**
```
#include <stdio.h> 
  
int main() 
{ 
  
    int a = 25, b = 5; 
  
    // using operators and printing results 
    printf("a + b = %d\n", a + b); 
    printf("a - b = %d\n", a - b); 
    printf("a * b = %d\n", a * b); 
    printf("a / b = %d\n", a / b); 
    printf("a % b = %d\n", a % b); 
    printf("+a = %d\n", +a); 
    printf("-a = %d\n", -a); 
    printf("a++ = %d\n", a++); 
    printf("a-- = %d\n", a--); 
  
    return 0; 
}
```
**Output**
```
a + b = 30
a - b = 20
a * b = 125
a / b = 5
a % b = 0
+a = 25
-a = -25
a++ = 25
a-- = 26
```

## 2. Relational Operators in C
The relational operators in C are used for the comparison of the two operands. All these operators are binary operators that return true or false values as the result of comparison.

These are a total of 6 relational operators in C:
![image info](/c/imgs/relational_operators.png)

**Example of C Relational Operators**
```
#include <stdio.h> 
  
int main() 
{ 
  
    int a = 25, b = 5; 
  
    // using operators and printing results 
    printf("a < b  : %d\n", a < b); 
    printf("a > b  : %d\n", a > b); 
    printf("a <= b: %d\n", a <= b); 
    printf("a >= b: %d\n", a >= b); 
    printf("a == b: %d\n", a == b); 
    printf("a != b : %d\n", a != b); 
  
    return 0; 
}
```

**Output**
```
a < b  : 0
a > b  : 1
a <= b: 0
a >= b: 1
a == b: 0
a != b : 1
```
Here, 0 means false and 1 means true.

## 3. Logical Operator in C
Logical Operators are used to combine two or more conditions/constraints or to complement the evaluation of the original condition in consideration. The result of the operation of a logical operator is a Boolean value either true or false.
![image info](/c/imgs/logical_operators.png)

**Example of Logical Operators in C**
```
#include <stdio.h> 
  
int main() 
{ 
  
    int a = 25, b = 5; 
  
    // using operators and printing results 
    printf("a && b : %d\n", a && b); 
    printf("a || b : %d\n", a || b); 
    printf("!a: %d\n", !a); 
  
    return 0; 
}
```

**Output**
```
a && b : 1
a || b : 1
!a: 0
```

## 4. Bitwise Operators in C
The Bitwise operators are used to perform bit-level operations on the operands. The operators are first converted to bit-level and then the calculation is performed on the operands. Mathematical operations such as addition, subtraction, multiplication, etc. can be performed at the bit level for faster processing.

There are 6 bitwise operators in C:
![image info](/c/imgs/bitwise_operators.png)

**Example of Bitwise Operators**
```
#include <stdio.h> 
  
int main() 
{ 
  
    int a = 25, b = 5; 
  
    // using operators and printing results 
    printf("a & b: %d\n", a & b); 
    printf("a | b: %d\n", a | b); 
    printf("a ^ b: %d\n", a ^ b); 
    printf("~a: %d\n", ~a); 
    printf("a >> b: %d\n", a >> b); 
    printf("a << b: %d\n", a << b); 
  
    return 0; 
}
```

## 5. Assignment Operators in C
Assignment operators are used to assign value to a variable. The left side operand of the assignment operator is a variable and the right side operand of the assignment operator is a value. The value on the right side must be of the same data type as the variable on the left side otherwise the compiler will raise an error.

The assignment operators can be combined with some other operators in C to provide multiple operations using single operator. These operators are called compound operators.

In C, there are 11 assignment operators :
![image info](/c/imgs/assignment_operators_1.png)
![image info](/c/imgs/assignment_operators_2.png)

**Example of C Assignment Operators**
```
#include <stdio.h> 
  
int main() 
{ 
  
    int a = 25, b = 5; 
  
    // using operators and printing results 
    printf("a = b: %d\n", a = b); 
    printf("a += b: %d\n", a += b); 
    printf("a -= b: %d\n", a -= b); 
    printf("a *= b: %d\n", a *= b); 
    printf("a /= b: %d\n", a /= b); 
    printf("a %= b: %d\n", a %= b); 
    printf("a &= b: %d\n", a &= b); 
    printf("a |= b: %d\n)", a |= b); 
    printf("a >>= b: %d\n", a >> b); 
    printf("a <<= b: %d\n", a << b); 
  
    return 0; 
}
```

**Output**
```
a = b: 5
a += b: 10
a -= b: 5
a *= b: 25
a /= b: 5
a %= b: 0
a &= b: 0
a |= b: 5
)a >>= b: 0
a <<= b: 160
```

## 6. Other Operators
Apart from the above operators, there are some other operators available in C used to perform some specific tasks. Some of them are discussed here: 

### sizeof Operator
* sizeof is much used in the C programming language.
* It is a compile-time unary operator which can be used to compute the size of its operand.
* The result of sizeof is of the unsigned integral type which is usually denoted by size_t.
* Basically, the sizeof the operator is used to compute the size of the variable or datatype.

**Syntax**
```
sizeof (operand)
```
### Comma Operator ( , )
* The comma operator (represented by the token) is a binary operator that evaluates its first operand and discards the result, it then evaluates the second operand and returns this value (and type).
* The comma operator has the lowest precedence of any C operator.
* Comma acts as both operator and separator. 

**Syntax**
```
operand1 , operand2 
```

### Conditional Operator ( ? : )
* The conditional operator is the only ternary operator in C++.
* Here, Expression1 is the condition to be evaluated. If the condition(Expression1) is True then we will execute and return the result of Expression2 otherwise if the condition(Expression1) is false then we will execute and return the result of Expression3.
* We may replace the use of if..else statements with conditional operators.

**Syntax**
```
operand1 ? operand2 : operand3;
```

### dot (.) and arrow (->) Operators
* Member operators are used to reference individual members of classes, structures, and unions.
* The dot operator is applied to the actual object. 
* The arrow operator is used with a pointer to an object.

**Syntax**
```
structure_variable . member;
```
and
```
structure_pointer -> member;
```

### Cast Operator
* Casting operators convert one data type to another. For example, int(2.2000) would return 2.
* A cast is a special operator that forces one data type to be converted into another. 
* The most general cast supported by most of the C compilers is as follows −   [ (type) expression ].

**Syntax**
```
(new_type) operand;
```

### addressof (&) and Dereference (*) Operators
* Pointer operator & returns the address of a variable. For example &a; will give the actual address of the variable.
* The pointer operator * is a pointer to a variable. For example *var; will pointer to a variable var. 

**Example of Other C Operators**
```
// C Program to demonstrate the use of Misc operators 
#include <stdio.h> 
  
int main() 
{ 
    // integer variable 
    int num = 10; 
    int* add_of_num = # 
  
    printf("sizeof(num) = %d bytes\n", sizeof(num)); 
    printf("&num = %p\n", &num); 
    printf("*add_of_num = %d\n", *add_of_num); 
    printf("(10 < 5) ? 10 : 20 = %d\n", (10 < 5) ? 10 : 20); 
    printf("(float)num = %f\n", (float)num); 
  
    return 0; 
}
```

**Output**
```
sizeof(num) = 4 bytes
&num = 0x7ffe2b7bdf8c
*add_of_num = 10
(10 < 5) ? 10 : 20 = 20
(float)num = 10.000000
```

# Unary, Binary and Ternary Operators in C
Operators can also be classified into three types on the basis of the number of operands they work on:
* Unary Operators: Operators that work on single operand.
* Binary Operators: Operators that work on two operands.
* Ternary Operators: Operators that work on three operands.

# Operator Precedence and Associativity in C
In C, it is very common for an expression or statement to have multiple operators and in these expression, there should be a fixed order or priority of operator evaluation to avoid ambiguity.
```
Operator Precedence and Associativity is the concept that decides which operator will be evaluated first in the case when there are multiple operators present in an expression.
```
The below table describes the precedence order and associativity of operators in C. The precedence of the operator decreases from top to bottom. 
![image info](/c/imgs/precedence_operators_1.png)
![image info](/c/imgs/precedence_operators_2.png)
![image info](/c/imgs/precedence_operators_3.png)

# Conclusion
* Operators are symbols used for performing some kind of operation in C.
* There are six types of operators, Arithmetic Operators, Relational Operators, Logical Operators, Bitwise Operators, Assignment Operators, and Miscellaneous Operators.
* Operators can also be of type unary, binary, and ternary according to the number of operators they are using.
* Every operator returns a numerical value except logical, relational, and conditional operator which returns a boolean value (true or false).
* There is a Precedence in the operators means the priority of using one operator is greater than another operator.