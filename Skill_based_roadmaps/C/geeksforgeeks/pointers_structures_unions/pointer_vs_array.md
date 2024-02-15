Most of the time, pointer and array accesses can be treated as acting the same, the major exceptions being: 

1. the sizeof operator
* sizeof(array) returns the amount of memory used by all elements in the array 
* sizeof(pointer) only returns the amount of memory used by the pointer variable itself 
2. the & operator 
* array is an alias for &array[0] and returns the address of the first element in the array 
* &pointer returns the address of the pointer 
3. a string literal initialization of a character array 
* char array[] = “abc” sets the first four elements in array to ‘a’, ‘b’, ‘c’, and ‘\0’ 
* char *pointer = “abc” sets the pointer to the address of the “abc” string (which may be stored in read-only memory and thus unchangeable) 
4. Pointer variable can be assigned a value whereas an array variable cannot be.
```
int a[10];
int *p; 
p=a; /*legal*/
a=p; /*illegal*/ 
```
5. Arithmetic on pointer variable is allowed. 
```
p++; /*Legal*/
a++; /*illegal*/ 
```
6. Array is a collection of similar data types while the pointer variable stores the address of another variable.
