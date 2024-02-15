A function in C is a set of statements that when called perform some specific task. It is the basic building block of a C program that provides modularity and code reusability. The programming statements of a function are enclosed within { } braces, having certain meanings and performing certain operations. They are also called subroutines or procedures in other languages.

# Syntax of Functions in C
The syntax of function can be divided into 3 aspects:
* Function Declaration
* Function Definition
* Function Calls

## Function Declarations
In a function declaration, we must provide the function name, its return type, and the number and type of its parameters. A function declaration tells the compiler that there is a function with the given name defined somewhere else in the program.

**Syntax**
```
return_type name_of_the_function (parameter_1, parameter_2);
```

The parameter name is not mandatory while declaring functions. We can also declare the function without using the name of the data variables.

**Example**
```
int sum(int a, int b);
int sum(int , int);
```

**Note: A function in C must always be declared globally before calling it.**

## Function Definition
The function definition consists of actual statements which are executed when the function is called (i.e. when the program control comes to the function).

A C function is generally defined and declared in a single step because the function definition always starts with the function declaration so we do not need to declare it explicitly. The below example serves as both a function definition and a declaration.
```
return_type function_name (para1_type para1_name, para2_type para2_name)
{
    // body of the function
}
```

## Function Call
A function call is a statement that instructs the compiler to execute the function. We use the function name and parameters in the function call.

**Note: Function call is neccessary to bring the program control to the function definition. If not called, the function statements will not be executed.**

# Example of C Function
```
#include <stdio.h>
 
// Function that takes two parameters 
// a and b as inputs and returns 
// their sum
int sum(int a, int b) 
{ 
  return a + b; 
}
 
// Driver code
int main()
{
  // Calling sum function and 
  // storing its value in add variable
  int add = sum(10, 30);
   
  printf("Sum is: %d", add);
  return 0;
}
```

## Function Return Type
Function return type tells what type of value is returned after all function is executed. When we don’t want to return a value, we can use the void data type.

**Example**
```
int func(parameter_1,parameter_2);
```
The above function will return an integer value after running statements inside the function.

**Note: Only one value can be returned from a C function. To return multiple values, we have to use pointers or structures.**

## Function Arguments
Function Arguments (also known as Function Parameters) are the data that is passed to a function.

**Example**
```
int function_name(int var1, int var2);
```

# Conditions of Return Types and Arguments
In C programming language, functions can be called either with or without arguments and might return values. They may or might not return values to the calling functions.

* Function with no arguments and no return value
* Function with no arguments and with return value
* Function with argument and with no return value
* Function with arguments and with return value

# How Does C Function Work?
Working of the C function can be broken into the following steps as mentioned below:
* Declaring a function: Declaring a function is a step where we declare a function. Here we define the return types and parameters of the function.
* Defining a function: 
* Calling the function: Calling the function is a step where we call the function by passing the arguments in the function.
* Executing the function: Executing the function is a step where we can run all the statements inside the function to get the final result.
* Returning a value: Returning a value is the step where the calculated value after the execution of the function is returned. Exiting the function is the final step where all the allocated memory to the variables, functions, etc is destroyed before giving full control to the main function.

# Types of Functions
There are two types of functions in C:
* Library Functions
* User Defined Functions

## 1. Library Function
A library function is also referred to as a “built-in function”. A compiler package already exists that contains these functions, each of which has a specific meaning and is included in the package. Built-in functions have the advantage of being directly usable without being defined, whereas user-defined functions must be declared and defined before being used. 

For Example:
```
pow(), sqrt(), strcmp(), strcpy() etc.
```
Advantages of C library functions
* C Library functions are easy to use and optimized for better performance.
* C library functions save a lot of time i.e, function development time.
* C library functions are convenient as they always work

**Example**
```
#include <math.h>
#include <stdio.h>
 
// Driver code
int main()
{
  double Number;
  Number = 49;
 
  // Computing the square root with 
  // the help of predefined C 
  // library function
  double squareRoot = sqrt(Number);
   
  printf("The Square root of %.2lf = %.2lf", 
          Number, squareRoot);
  return 0;
}
```

## 2. User Defined Function
Functions that the programmer creates are known as User-Defined functions or “tailor-made functions”. User-defined functions can be improved and modified according to the need of the programmer. Whenever we write a function that is case-specific and is not defined in any header file, we need to declare and define our own functions according to the syntax.

Advantages of User-Defined Functions
* Changeable functions can be modified as per need.
* The Code of these functions is reusable in other programs.
* These functions are easy to understand, debug and maintain.

**Example**
```
#include <stdio.h>
 
int sum(int a, int b) 
{ 
  return a + b; 
}
 
// Driver code
int main()
{
  int a = 30, b = 40;
  
  // function call
  int res = sum(a, b);
 
  printf("Sum is: %d", res);
  return 0;
}
```

# Passing Parameters to Functions
The data passed when the function is being invoked is known as the Actual parameters. In the below program, 10 and 30 are known as actual parameters. Formal Parameters are the variable and the data type as mentioned in the function declaration. In the below program, a and b are known as formal parameters.

We can pass arguments to the C function in two ways:
* Pass by Value
* Pass by Reference

## 1. Pass by Value
Parameter passing in this method copies values from actual parameters into formal function parameters. As a result, any changes made inside the functions do not reflect in the caller’s parameters. 

**Example**
```
#include <stdio.h>
 
void swap(int var1, int var2)
{
  int temp = var1;
  var1 = var2;
  var2 = temp;
}
 
// Driver code
int main()
{
  int var1 = 3, var2 = 2;
  printf("Before swap Value of var1 and var2 is: %d, %d\n",
          var1, var2);
  swap(var1, var2);
  printf("After swap Value of var1 and var2 is: %d, %d",
          var1, var2);
  return 0;
}
```
**Output**
```
Before swap Value of var1 and var2 is: 3, 2
After swap Value of var1 and var2 is: 3, 2
```

## 2. Pass by Reference
The caller’s actual parameters and the function’s actual parameters refer to the same locations, so any changes made inside the function are reflected in the caller’s actual parameters. 

**Example:**
```
#include <stdio.h>
 
void swap(int *var1, int *var2)
{
  int temp = *var1;
  *var1 = *var2;
  *var2 = temp;
}
 
// Driver code
int main()
{
  int var1 = 3, var2 = 2;
  printf("Before swap Value of var1 and var2 is: %d, %d\n",
          var1, var2);
  swap(&var1, &var2);
  printf("After swap Value of var1 and var2 is: %d, %d",
          var1, var2);
  return 0;
}
```
**Output**
```
Before swap Value of var1 and var2 is: 3, 2
After swap Value of var1 and var2 is: 2, 3
```

# Advantages of Functions in C
Functions in C is a highly useful feature of C with many advantages as mentioned below:
* The function can reduce the repetition of the same statements in the program.
* The function makes code readable by providing modularity to our program.
* There is no fixed number of calling functions it can be called as many times as you want.
* The function reduces the size of the program.
* Once the function is declared you can just use it without thinking about the internal working of the function.

# Disadvantages of Functions in C
* Cannot return multiple values.
* Memory and time overhead due to stack frame allocation and transfer of program control.