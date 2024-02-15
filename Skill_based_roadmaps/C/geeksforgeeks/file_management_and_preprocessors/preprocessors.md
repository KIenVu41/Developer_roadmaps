A Preprocessor is a system software (a computer program that is designed to run on computer’s hardware and application programs). It performs preprocessing of the High Level Language(HLL). Preprocessing is the first step of the language processing system. Language processing system translates the high level language to machine level language or absolute machine code(i.e. to the form that can be understood by machine).
* The preprocessor doesn’t know about the scope rules of C. Preprocessor directives like #define come into effect as soon as they are seen and remain in effect until the end of the file that contains them; the program’s block structure is irrelevant.

![image info](/c/imgs/compile_steps.png)

**A Preprocessor mainly performs three tasks on the HLL code :**
1. Removing comments : It removes all the comments. A comment is written only for the humans to understand the code. So, it is obvious that they are of no use to a machine. So, preprocessor removes all of them as they are not required in the execution and won’t be executed as well.
2. File inclusion : Including all the files from library that our program needs. In HLL we write #include which is a directive for the preprocessor that tells it to include the contents of the library file specified. For example, #include will tell the preprocessor to include all the contents in the library file stdio.h.
This can also be written using double quotes – #include “stdio.h”.
Note: If the filename is enclosed within angle brackets, the file is searched for in the standard compiler include paths. If the filename is enclosed within double quotes, the search path is expanded to include the current source directory.
3. Macro expansion : Macros can be called as small functions that are not as overhead to process. If we have to write a function (having a small definition) that needs to be called recursively (again and again), then we should prefer a macro over a function.
So, defining these macros is done by preprocessor.
```
#define SI 1000
```
is a simple example of a macro.
* There are two types of macros: Object-like (do not take parameters) and function-like (Can take parameters)
```
// object-like macro
#define        
// function-like macro          
#define () 
```
* You can delete a macro definition with #undef
```
// delete the macro
# undef  
```
* We can write multi-line macro same like function, but each statement ends with “\”.
```

#include <stdio.h> 
   
#define MACRO(num, str) {\ 
            printf("%d", num);\ 
            printf(" is");\ 
            printf(" %s number", str);\ 
            printf("\n");\ 
           }
```