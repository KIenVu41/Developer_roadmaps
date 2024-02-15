The break statement is one of the four jump statements in the C language. The purpose of the break statement in C is for unconditional exit from the loop
# What is break in C?
The break in C is a loop control statement that breaks out of the loop when encountered. It can be used inside loops or switch statements to bring the control out of the block. The break statement can only break out of a single loop at a time.
# Syntax of break in C
```
break;
```
We just put the break where ever we want to terminate the execution of the loop.
# Use of break in C
The break statement in C is used for breaking out of the loop. We can use it with any type of loop to bring the program control out of the loop. In C, we can use the break statement in the following ways:
* Simple Loops
* Nested Loops
* Infinite Loops
* Switch case
# Examples of break in C
## Example 1: C Program to use break Statement with Simple Loops
Break statements in C can be used with simple loops i.e, for loops, while loops, and do-while loops.
```
#include <stdio.h>
 
int main()
{
 
    // using break inside for loop to terminate after 2
    // iteration
    printf("break in for loop\n");
    for (int i = 1; i < 5; i++) {
        if (i == 3) {
            break;
        }
        else {
            printf("%d ", i);
        }
    }
 
    // using break inside while loop to terminate after 2
    // iteration
    printf("\nbreak in while loop\n");
    int i = 1;
    while (i < 20) {
        if (i == 3)
            break;
        else
            printf("%d ", i);
        i++;
    }
    return 0;
}
```
**Output**
```
break in for loop
1 2 
break in while loop
1 2 
```
## Example 2: C Program to use break Statement with Nested Loops
Break statements can also be used when working with nested loops. The control will come out of only that loop in which the break statement is used.
```
#include <stdio.h>
 
int main()
{
    // nested for loops with break statement
    // at inner loop
    for (int i = 1; i <= 6; ++i) {
        for (int j = 1; j <= i; ++j) {
            if (i <= 4) {
                printf("%d ", j);
            }
            else {
                // if i > 4 then this innermost loop will
                // break
                break;
            }
        }
        printf("\n");
    }
    return 0;
}
```
**Output**
```
1 
1 2 
1 2 3 
1 2 3 4 
```
**Note: Break statement only breaks out of one loop at a time. So if in nested loop, we have used break in inner loop, the control will come to outer loop instead of breaking out of all the loops at once. We will have to use multiple break statements if we want to break out of all the loops.**

## Example 3: C Program to use break Statement with Infinite Loops
An Infinite loop can be terminated with a break statement as a part of the condition.
```
#include <stdio.h>
 
int main()
{
 
    int i = 0;
 
    // while loop which will always be true
    while (1) {
        printf("%d ", i);
        i++;
        if (i == 5) {
            break;
        }
    }
    return 0;
}
```
**Output**
```
0 1 2 3 4 
```
In the above program, the loop condition is always true, which will cause the loop to execute indefinitely. This is corrected by using the break statement. Iteration of the loop is restricted to 8 iterations using break

# How break statement works?
The working of the break statement in C is described below:
* STEP 1: The loop execution starts after the test condition is evaluated.
* STEP 2: If the break condition is present the condition will be evaluated.
* STEP 3A: If the condition is true, the program control reaches the break statement and skips the further execution of the loop by jumping to the statements directly below the loop.
* STEP 3B: If the condition is false, the normal flow of the program control continues.

## Break in C switch case
In general, the Switch case statement evaluates an expression, and depending on the value of the expression, it executes the statement associated with the value. Not only that, all the cases after the matching case after the matching case will also be executed. To prevent that, we can use the break statement in the switch case as shown:

**Syntax of break in switch case**
```
switch(expression)
{    
case value1:
    statement_1;
    break;
    
case value2:
    statement_2;
    break;
.....
.....

case value_n:
    statement_n;
    break;
    
default:
    default statement;
}
```
**Example of break in switch case**
```
#include <stdio.h>
#include <stdlib.h>
 
int main()
{
    char c;
    float x, y;
 
    while (1) {
        printf("Enter an operator (+, -), if want to exit "
               "press x: ");
        scanf(" %c", &c);
        // to exit
        if (c == 'x')
            exit(0);
 
        printf("Enter Two Values:\n ");
        scanf("%f %f", &x, &y);
 
        switch (c) {
        // For Addition
        case '+':
            printf("%.1f + %.1f = %.1f\n", x, y, x + y);
            break;
        // For Subtraction
        case '-':
            printf("%.1f - %.1f = %.1f\n", x, y, x - y);
            break;
        default:
            printf(
                "Error! please write a valid operator\n");
        }
    }
}
```
**Output**
```
Enter an operator (+, -), if want to exit press x: +
Enter Two Values:
10
20
10.0 + 20.0 = 30.0
```
