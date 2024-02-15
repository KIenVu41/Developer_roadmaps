While a pointer to a variable or an object is used to access them indirectly, a pointer to a function is used to invoke a function indirectly.
```
int (*foo)(int);
```

**Example**
```
#include <stdio.h>
int add(int a, int b) { return a + b; }
 
int main()
{
    // Assigning function address using & operator
    int (*add_ptr)(int, int) = &add;
    // or
    // Assigning
    // function address without & operator
 
    // int (*add_ptr)(int, int) = add;
 
    // Calling the function using the function pointer
    int result = add_ptr(3, 4);
    printf("Result: %d\n", result);
 
    return 0;
}
```