The Function prototype is necessary to serve the following purposes:
* Function prototype tells the return type of the data that the function will return.
* Function prototype tells the number of arguments passed to the function.
* Function prototype tells the data types of each of the passed arguments.
* Also, the function prototype tells the order in which the arguments are passed to the function.

Therefore essentially, the function prototype specifies the input/output interface to the function i.e. what to give to the function and what to expect from the function.

**Note: The prototype of a function is also called the signature of the function.**

# What if one doesn’t specify the function prototype?
If one doesn’t specify the function prototype, the behavior is specific to the C standard (either C90 or C99) that the compilers implement. Up to the C90 standard, C compilers assumed the return type of the omitted function prototype as int. And this assumption on the compiler side may lead to unspecified program behavior.

Later C99 standard specified that compilers could no longer assume the return type as int. Therefore, C99 became more restricted in type checking of function prototypes. But to make C99 standard backward compatible, in practice, compilers throw the warning saying that the return type is assumed as int. But they go ahead with compilation. Thus, it becomes the responsibility of programmers to make sure that the assumed function prototype and the actual function type match.

To avoid all these implementation specifics matching C standards, it is best to have a function prototype.

**Example**
The output of the below kinds of programs is generally asked in many places.
```
int main()
{
    // foo() function called
    foo();
    getchar();
    return 0;
}
 
// definition of foo() function
void foo() {
  printf("foo called");
}
```
**Output**
```
main.c: In function ‘foo’:
main.c:8:3: warning: implicit declaration of function ‘printf’ [-Wimplicit-function-declaration]
   8 |   printf("foo called");
     |   ^~~~~~
```

The code will compile successfully, but at runtime, when foo() is called, it won’t be able to find the function definition as the prototype for function foo() is not specified. Hence, the behavior is undefined.