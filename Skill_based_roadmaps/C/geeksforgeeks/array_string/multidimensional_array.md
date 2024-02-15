In C, initialization of a multidimensional array can have left most dimensions as optional. Except for the leftmost dimension, all other dimensions must be specified.

For example, the following program fails in compilation because two dimensions are not specified.
```
#include <stdio.h> 
int main() 
{ 
    int a[][][2] = { { { 1, 2 }, { 3, 4 } }, 
                     { { 5, 6 }, { 7, 8 } } }; // error 
    printf("%d", sizeof(a)); 
    getchar(); 
    return 0; 
}
```
**Output**
```
./Solution.cpp: In function 'int main()':
./Solution.cpp:5:14: error: declaration of 'a' as multidimensional array must have bounds for all dimensions except the first
   int a[][][2] = { {{1, 2}, {3, 4}},
              ^
./Solution.cpp:7:18: error: 'a' was not declared in this scope
   cout << sizeof(a);
                  ^
```
Multidimensional Array can be initialized using an initializer list as shown:

**Syntax**
```
array_name[x][y] = { {a, b, c, ... }, ........., { m, n, o ...}};
```
Following 2 programs work without any error.
```
#include <stdio.h> 
int main() 
{ 
    int a[][2] = { { 1, 2 }, { 3, 4 } }; // Works 
    printf("%lu", sizeof(a)); // prints 4*sizeof(int) 
    getchar(); 
    return 0; 
}
```
**Output**
```
16
```
```
#include <stdio.h> 
int main() 
{ 
    int a[][2][2] = { { { 1, 2 }, { 3, 4 } }, 
                      { { 5, 6 }, { 7, 8 } } }; // Works 
    printf("%lu", sizeof(a)); // prints 8*sizeof(int) 
    getchar(); 
    return 0; 
}
```
**Output**
```
32
```
The below example is multidimensional array in  C.
```
#include <stdio.h> 
  
int main() 
{ 
  
    // code 
    int a[2][3] = { { 1, 3, 2 }, { 6, 7, 8 } }; 
    int i, j; 
    for (i = 0; i < 2; i++) { 
        for (j = 0; j < 3; j++) { 
            printf("\n a[%d][%d]=%d", i, j, a[i][j]); 
        } 
    } 
    return 0; 
}
```
**Output**
```
 a[0][0]=1
 a[0][1]=3
 a[0][2]=2
 a[1][0]=6
 a[1][1]=7
 a[1][2]=8
```