In C, there are different ways in which parameter data can be passed into and out of methods and functions. Let us assume that a function B() is called from another function A(). In this case, A is called the “caller function” and B is called the “called function or callee function”. Also, the arguments which A sends to B are called actual arguments and the parameters of B are called formal arguments.

**Terminology**
* Formal Parameter: A variable and its type as it appears in the prototype of the function or method.
* Actual Parameter: The variable or expression corresponding to a formal parameter that appears in the function or method call in the calling environment.
* Modes:
  * IN: Passes info from caller to the callee.
  * OUT: Callee writes values in the caller.
  * IN/OUT: The caller tells the callee the value of the variable, which the callee may update.

# Methods of Parameter Passing in C
There are two ways in which we can pass the parameters to the function in C:
## 1. Pass By Value
This method uses in-mode semantics. Changes made to formal parameters do not get transmitted back to the caller. Any modifications to the formal parameter variable inside the called function or method affect only the separate storage location and will not be reflected in the actual parameter in the calling environment. This method is also called call by value.
![image info](/c/imgs/call_by_value.png)

**Example of Pass by Value**
```
#include <stdio.h>
 
void func(int a, int b)
{
    a += b;
    printf("In func, a = %d b = %d\n", a, b);
}
int main(void)
{
    int x = 5, y = 7;
 
    // Passing parameters
    func(x, y);
    printf("In main, x = %d y = %d\n", x, y);
    return 0;
}
```
**Output**
```
In func, a = 12 b = 7
In main, x = 5 y = 7
```

### Shortcomings of Pass By Value:
* Inefficiency in storage allocation
* For objects and arrays, the copy semantics are costly

**Note: Languages like C, C++, and Java support this type of parameter passing. Java in fact is strictly call by value. C doesn’t support call by reference.**

## 2. Pass by Pointers
This technique uses a pointer. In function we pass memory address (pointer) of a variable rather than passing the actual value of variable. This passing technique allows the function to access and modify the content at that particular memory location.

**Example of Pass by Pointers**
```
#include <stdio.h>
 
// Function to modify the value passed as pointer to an int
void modifyVal(int* myptr)
{
    // Access and modifying the value pointed by myptr
    *myptr = *myptr + 5;
}
 
int main()
{
 
    int x = 5;
    int* myptr = &x;
 
    // Passing the pointer ptr to the function
    modifyVal(myptr);
 
    // printitng the modified value of x
    printf("Modified value of x is: %d\n", x);
    return 0;
}
```
**Output**
```
Modified value of x is: 10
```
### Shortcomings of Pass by Pointers
* Pointers can be null so null pointer Issues arises if properly not checked.
* If more than one pointers point to the same memory location then changes made by one pointer affect other the other pointers which points to same memory location.
* memory management should be done effectively using function like malloc and free.
