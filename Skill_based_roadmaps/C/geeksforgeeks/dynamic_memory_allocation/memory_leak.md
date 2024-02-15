A memory leak occurs when programmers create a memory in a heap and forget to delete it.

The consequence of the memory leak is that it reduces the performance of the computer by reducing the amount of available memory. Eventually, in the worst case, too much of the available memory may become allocated, all or part of the system or device stops working correctly, the application fails, or the system slows down vastly.

Memory leaks are particularly serious issues for programs like daemons and servers which by definition never terminate.

# Example of Memory Leak
The below example shows the memory leak concept.
```
/* Function with memory leak */
#include <stdlib.h>
 
void f()
{
    int* ptr = (int*)malloc(sizeof(int));
 
    /* Do some work */
 
    /* Return without freeing ptr*/
    return;
}
```

# Causes of Memory Leaks in C
1. When dynamically allocated memory is not freed up by calling free then it leads to memory leaks. Always make ensure that for every dynamic memory allocation using malloc or calloc, there is a corresponding free call.
2. When track of pointers that references to the allocated memory is lost then it may happen that memory is not freed up. Hence keep the track of all pointers and make ensure that memory is freed.
3. When the program terminates abruptly and the allocated memory is not freed or if any part of code prevents the call of free then memory leaks may happen.

# How to avoid memory leaks?
To avoid memory leaks, memory allocated on the heap should always be freed when no longer needed.

**Example: Program to Release Memory Allocated in Heap to Avoid Memory Leak**

The below program shows the memory allocated in the heap is released to avoid memory leak.
```
#include <stdlib.h>
 
void f()
{
    int* ptr = (int*)malloc(sizeof(int));
 
    /* Do some work */
 
    /* Memory allocated by malloc is released */
    free(ptr);
    return;
}
```

**Example: Program to Check Whether the Memory is Freed or Not**

The below example demonstrates how to check if the memory allocated on the heap is freed or not.

```
#include <stdio.h>
#include <stdlib.h>
 
int main(void)
{
    int* ptr;
    ptr = (int*)malloc(sizeof(int));
 
    if (ptr == NULL)
        printf("Memory Is Insuffficient\n");
    else {
        free(ptr);
        printf("Memory Freed\n");
    }
}
```