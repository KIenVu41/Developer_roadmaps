Prerequisite – Switch Statement in C Switch is a control statement that allows a value to change control of execution. 
```
#include <stdio.h>
int main()
{
   int x = 2;
   switch (x)
   {
       case 1: printf("Choice is 1");
               break;
       case 2: printf("Choice is 2");
                break;
       case 3: printf("Choice is 3");
               break;
       default: printf("Choice other than 1, 2 and 3");
                
   }
   return 0;
} 
```
**Output:**
```
Choice is 2
```
Following are some interesting facts about switch statement. 1) The expression used in switch must be integral type ( int, char and enum). Any other type of expression is not allowed. 
```
#include <stdio.h>
int main()
{
   float x = 1.1;
   switch (x)
   {
       case 1.1: printf("Choice is 1");
                 break;
       default: printf("Choice other than 1, 2 and 3");
                 
   }
   return 0;
} 
```
**Output**
```
Compiler Error: switch quantity not an integer
```
In Java, String is also allowed in switch  2) All the statements following a matching case execute until a break statement is reached. 
```
#include <stdio.h>
int main()
{
   int x = 2;
   switch (x)
   {
       case 1: printf("Choice is 1\n");
       case 2: printf("Choice is 2\n");
       case 3: printf("Choice is 3\n");
       default: printf("Choice other than 1, 2 and 3\n");
   }
   return 0;
} 
```
**Output**
```
Choice is 2
Choice is 3
Choice other than 1, 2 and 3
```
```
#include <stdio.h>
int main()
{
   int x = 2;
   switch (x)
   {
       case 1: printf("Choice is 1\n");
       case 2: printf("Choice is 2\n");
       case 3: printf("Choice is 3\n");
       case 4: printf("Choice is 4\n");
               break;
       default: printf("Choice other than 1, 2, 3 and 4\n");
                 
   }
   printf("After Switch");
   return 0;
}
```
**Output:**
```
Choice is 2
Choice is 3
Choice is 4
After Switch
```
3) The default block can be placed anywhere. The position of default doesn’t matter, it is still executed if no match found. 
```
#include <stdio.h>
int main()
{
   int x = 4;
   switch (x)
   {
       default: printf("Choice other than 1 and 2");
                break;        
       case 1: printf("Choice is 1");
               break;
       case 2: printf("Choice is 2");
                 
   }
   return 0;
}
```
**Output**
```
Choice other than 1 and 2
```
4) The integral expressions used in labels must be a constant expressions 
```
#include <stdio.h>
int main()
{
    int x = 2;
    int arr[] = {1, 2, 3};
    switch (x)
    {
        case arr[0]: printf("Choice 1\n"); 
        case arr[1]: printf("Choice 2\n");
        case arr[2]: printf("Choice 3\n");
    }
    return 0;
}
```
**Output**
```
Compiler Error: case label does not reduce to an integer constant
```
5) The statements written above cases are never executed After the switch statement, the control transfers to the matching case, the statements written before case are not executed. 
```
#include <stdio.h>
int main()
{
   int x = 1;
   switch (x)
   {
       x = x + 1;  // This statement is not executed
       case 1: printf("Choice is 1");
               break;
       case 2: printf("Choice is 2");
                break;
       default: printf("Choice other than 1 and 2");
                                   
   }
   return 0;
} 
```
**Output:**
```
Choice is 1
```
6) Two case labels cannot have same value 
```
#include <stdio.h>
int main()
{
   int x = 1;
   switch (x)
   {
       case 2: printf("Choice is 1");
               break;
       case 1+1: printf("Choice is 2");
                 
   }
   return 0;
} 
```
**Output:**
```
Compiler Error: duplicate case value
```