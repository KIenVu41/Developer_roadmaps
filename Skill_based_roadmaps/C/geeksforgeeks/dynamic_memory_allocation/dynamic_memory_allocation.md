Since C is a structured language, it has some fixed rules for programming. One of them includes changing the size of an array. An array is a collection of items stored at contiguous memory locations. 

Therefore, C Dynamic Memory Allocation can be defined as a procedure in which the size of a data structure (like Array) is changed during the runtime.

C provides some functions to achieve these tasks. There are 4 library functions provided by C defined under <stdlib.h> header file to facilitate dynamic memory allocation in C programming. They are: 

# C malloc() method
The “malloc” or “memory allocation” method in C is used to dynamically allocate a single large block of memory with the specified size. It returns a pointer of type void which can be cast into a pointer of any form. It doesn’t Initialize memory at execution time so that it has initialized each block with the default garbage value initially. 

**Syntax of malloc() in C**
```
ptr = (cast-type*) malloc(byte-size)
For Example:
```
```
ptr = (int*) malloc(100 * sizeof(int));
Since the size of int is 4 bytes, this statement will allocate 400 bytes of memory. And, the pointer ptr holds the address of the first byte in the allocated memory.
```
![image info](/c/imgs/malloc.png)
If space is insufficient, allocation fails and returns a NULL pointer.

**Example of malloc() in C**
```
#include <stdio.h>
#include <stdlib.h>
 
int main()
{
 
    // This pointer will hold the
    // base address of the block created
    int* ptr;
    int n, i;
 
    // Get the number of elements for the array
    printf("Enter number of elements:");
    scanf("%d",&n);
    printf("Entered number of elements: %d\n", n);
 
    // Dynamically allocate memory using malloc()
    ptr = (int*)malloc(n * sizeof(int));
 
    // Check if the memory has been successfully
    // allocated by malloc or not
    if (ptr == NULL) {
        printf("Memory not allocated.\n");
        exit(0);
    }
    else {
 
        // Memory has been successfully allocated
        printf("Memory successfully allocated using malloc.\n");
 
        // Get the elements of the array
        for (i = 0; i < n; ++i) {
            ptr[i] = i + 1;
        }
 
        // Print the elements of the array
        printf("The elements of the array are: ");
        for (i = 0; i < n; ++i) {
            printf("%d, ", ptr[i]);
        }
    }
 
    return 0;
}
```

**Output**
```
Enter number of elements: 5
Memory successfully allocated using malloc.
The elements of the array are: 1, 2, 3, 4, 5,
```

# C calloc() method
1. “calloc” or “contiguous allocation” method in C is used to dynamically allocate the specified number of blocks of memory of the specified type. it is very much similar to malloc() but has two different points and these are:
2. It initializes each block with a default value ‘0’.
3. It has two parameters or arguments as compare to malloc().

## Syntax of calloc() in C
```
ptr = (cast-type*)calloc(n, element-size);
here, n is the no. of elements and element-size is the size of each element.
```

**For Example:**
```
ptr = (float*) calloc(25, sizeof(float));
This statement allocates contiguous space in memory for 25 elements each with the size of the float.
```
![image info](/c/imgs/calloc.png)

If space is insufficient, allocation fails and returns a NULL pointer.

**Example of calloc() in C**
```
#include <stdio.h>
#include <stdlib.h>
 
int main()
{
 
    // This pointer will hold the
    // base address of the block created
    int* ptr;
    int n, i;
 
    // Get the number of elements for the array
    n = 5;
    printf("Enter number of elements: %d\n", n);
 
    // Dynamically allocate memory using calloc()
    ptr = (int*)calloc(n, sizeof(int));
 
    // Check if the memory has been successfully
    // allocated by calloc or not
    if (ptr == NULL) {
        printf("Memory not allocated.\n");
        exit(0);
    }
    else {
 
        // Memory has been successfully allocated
        printf("Memory successfully allocated using calloc.\n");
 
        // Get the elements of the array
        for (i = 0; i < n; ++i) {
            ptr[i] = i + 1;
        }
 
        // Print the elements of the array
        printf("The elements of the array are: ");
        for (i = 0; i < n; ++i) {
            printf("%d, ", ptr[i]);
        }
    }
 
    return 0;
}
```

**Output**
```
Enter number of elements: 5
Memory successfully allocated using calloc.
The elements of the array are: 1, 2, 3, 4, 5,
```

# C free() method
“free” method in C is used to dynamically de-allocate the memory. The memory allocated using functions malloc() and calloc() is not de-allocated on their own. Hence the free() method is used, whenever the dynamic memory allocation takes place. It helps to reduce wastage of memory by freeing it.

**Syntax of free() in C**
```
free(ptr);
```
![image info](/c/imgs/free.png)

**Example of free() in C**
```
#include <stdio.h>
#include <stdlib.h>
 
int main()
{
 
    // This pointer will hold the
    // base address of the block created
    int *ptr, *ptr1;
    int n, i;
 
    // Get the number of elements for the array
    n = 5;
    printf("Enter number of elements: %d\n", n);
 
    // Dynamically allocate memory using malloc()
    ptr = (int*)malloc(n * sizeof(int));
 
    // Dynamically allocate memory using calloc()
    ptr1 = (int*)calloc(n, sizeof(int));
 
    // Check if the memory has been successfully
    // allocated by malloc or not
    if (ptr == NULL || ptr1 == NULL) {
        printf("Memory not allocated.\n");
        exit(0);
    }
    else {
 
        // Memory has been successfully allocated
        printf("Memory successfully allocated using malloc.\n");
 
        // Free the memory
        free(ptr);
        printf("Malloc Memory successfully freed.\n");
 
        // Memory has been successfully allocated
        printf("\nMemory successfully allocated using calloc.\n");
 
        // Free the memory
        free(ptr1);
        printf("Calloc Memory successfully freed.\n");
    }
 
    return 0;
}
```

**Output**
```
Enter number of elements: 5
Memory successfully allocated using malloc.
Malloc Memory successfully freed.

Memory successfully allocated using calloc.
Calloc Memory successfully freed.
```

# C realloc() method
“realloc” or “re-allocation” method in C is used to dynamically change the memory allocation of a previously allocated memory. In other words, if the memory previously allocated with the help of malloc or calloc is insufficient, realloc can be used to dynamically re-allocate memory. re-allocation of memory maintains the already present value and new blocks will be initialized with the default garbage value.

**Syntax of realloc() in C**
```
ptr = realloc(ptr, newSize);
where ptr is reallocated with new size 'newSize'.
```
![image info](/c/imgs/realloc.png)

If space is insufficient, allocation fails and returns a NULL pointer.

**Example of realloc() in C**
```
#include <stdio.h>
#include <stdlib.h>
 
int main()
{
 
    // This pointer will hold the
    // base address of the block created
    int* ptr;
    int n, i;
 
    // Get the number of elements for the array
    n = 5;
    printf("Enter number of elements: %d\n", n);
 
    // Dynamically allocate memory using calloc()
    ptr = (int*)calloc(n, sizeof(int));
 
    // Check if the memory has been successfully
    // allocated by malloc or not
    if (ptr == NULL) {
        printf("Memory not allocated.\n");
        exit(0);
    }
    else {
 
        // Memory has been successfully allocated
        printf("Memory successfully allocated using calloc.\n");
 
        // Get the elements of the array
        for (i = 0; i < n; ++i) {
            ptr[i] = i + 1;
        }
 
        // Print the elements of the array
        printf("The elements of the array are: ");
        for (i = 0; i < n; ++i) {
            printf("%d, ", ptr[i]);
        }
 
        // Get the new size for the array
        n = 10;
        printf("\n\nEnter the new size of the array: %d\n", n);
 
        // Dynamically re-allocate memory using realloc()
        ptr = (int*)realloc(ptr, n * sizeof(int));
 
        // Memory has been successfully allocated
        printf("Memory successfully re-allocated using realloc.\n");
 
        // Get the new elements of the array
        for (i = 5; i < n; ++i) {
            ptr[i] = i + 1;
        }
 
        // Print the elements of the array
        printf("The elements of the array are: ");
        for (i = 0; i < n; ++i) {
            printf("%d, ", ptr[i]);
        }
 
        free(ptr);
    }
 
    return 0;
}
```

**Output**
```
Enter number of elements: 5
Memory successfully allocated using calloc.
The elements of the array are: 1, 2, 3, 4, 5, 

Enter the new size of the array: 10
Memory successfully re-allocated using realloc.
The elements of the array are: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
```

**One another example for realloc() method is:**
```


#include <stdio.h>
#include <stdlib.h>
int main()
{
    int index = 0, i = 0, n,
        *marks; // this marks pointer hold the base address
                // of  the block created
    int ans;
    marks = (int*)malloc(sizeof(
        int)); // dynamically allocate memory using malloc
    // check if the memory is successfully allocated by
    // malloc or not?
    if (marks == NULL) {
        printf("memory cannot be allocated");
    }
    else {
        // memory has successfully allocated
        printf("Memory has been successfully allocated by "
               "using malloc\n");
        printf("\n marks = %pc\n",
               marks); // print the base or beginning
                       // address of allocated memory
        do {
            printf("\n Enter Marks\n");
            scanf("%d", &marks[index]); // Get the marks
            printf("would you like to add more(1/0): ");
            scanf("%d", &ans);
 
            if (ans == 1) {
                index++;
                marks = (int*)realloc(
                    marks,
                    (index + 1)
                        * sizeof(
                            int)); // Dynamically reallocate
                                   // memory by using realloc
                // check if the memory is successfully
                // allocated by realloc or not?
                if (marks == NULL) {
                    printf("memory cannot be allocated");
                }
                else {
                    printf("Memory has been successfully "
                           "reallocated using realloc:\n");
                    printf(
                        "\n base address of marks are:%pc",
                        marks); ////print the base or
                                ///beginning address of
                                ///allocated memory
                }
            }
        } while (ans == 1);
        // print the marks of the students
        for (i = 0; i <= index; i++) {
            printf("marks of students %d are: %d\n ", i,
                   marks[i]);
        }
        free(marks);
    }
    return 0;
}
```

# Difference Between malloc() and calloc()

## Initialization
* malloc() allocates a memory block of given size (in bytes) and returns a pointer to the beginning of the block. malloc() doesn’t initialize the allocated memory. If you try to read from the allocated memory without first initializing it, then you will invoke undefined behavior, which usually means the values you read will be garbage values.

* calloc() allocates the memory and also initializes every byte in the allocated memory to 0. If you try to read the value of the allocated memory without initializing it, you’ll get 0 as it has already been initialized to 0 by calloc().

## Parameters
malloc() takes a single argument, which is the number of bytes to allocate.

Unlike malloc(), calloc() takes two arguments:
1. Number of blocks to be allocated. 
2. Size of each block in bytes.

## Return Value
After successful allocation in malloc() and calloc(), a pointer to the block of memory is returned otherwise NULL is returned which indicates failure.

### Example
The below C code demonstrates the difference between malloc and calloc functions to allocate dynamic memory.
```
#include <stdio.h>
#include <stdlib.h>
 
int main()
{
    // Both of these allocate the same number of bytes,
    // which is the amount of bytes that is required to
    // store 5 int values.
 
    // The memory allocated by calloc will be
    // zero-initialized, but the memory allocated with
    // malloc will be uninitialized so reading it would be
    // undefined behavior.
    int* allocated_with_malloc = malloc(5 * sizeof(int));
    int* allocated_with_calloc = calloc(5, sizeof(int));
 
    // As you can see, all of the values are initialized to
    // zero.
    printf("Values of allocated_with_calloc: ");
    for (size_t i = 0; i < 5; ++i) {
        printf("%d ", allocated_with_calloc[i]);
    }
    putchar('\n');
 
    // This malloc requests 1 terabyte of dynamic memory,
    // which is unavailable in this case, and so the
    // allocation fails and returns NULL.
    int* failed_malloc = malloc(1000000000000);
    if (failed_malloc == NULL) {
        printf("The allocation failed, the value of "
               "failed_malloc is: %p",
               (void*)failed_malloc);
    }
 
    // Remember to always free dynamically allocated memory.
    free(allocated_with_malloc);
    free(allocated_with_calloc);
}
```

**Output**
```
Values of allocated_with_calloc: 0 0 0 0 0 
The allocation failed, the value of failed_malloc is: (nil)
```

## Summary
![image info](/c/imgs/malloc_vs_calloc.png)