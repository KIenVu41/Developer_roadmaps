Below is simple macro, which accepts input number from user, and prints whether entered number is even or odd.
```
#include <stdio.h> 
  
#define MACRO(num, str) {\ 
            printf("%d", num);\ 
            printf(" is");\ 
            printf(" %s number", str);\ 
            printf("\n");\ 
           } 
  
int main(void) 
{ 
    int num; 
  
    printf("Enter a number: "); 
    scanf("%d", &num); 
  
    if (num & 1) 
        MACRO(num, "Odd"); 
    else
        MACRO(num, "Even"); 
  
    return 0; 
} 
```
but when we try to compile this code, it gives compilation error.
```
[narendra@/media/partition/GFG]$ make macro
cc     macro.c   -o macro
macro.c: In function ‘main’:
macro.c:19:2: error: ‘else’ without a previous ‘if’
make: *** [macro] Error 1
[narendra@/media/partition/GFG]$ 
```
Let us see what mistake we did while writing macro. We have enclosed macro in curly braces. According to C-language rule, each C-statement should end with semicolon. That’s why we have ended MACRO with semicolon. Here is a mistake. Let us see how compile expands this macro.
```
if (num & 1)
{
    -------------------------
    ---- Macro expansion ----
    -------------------------
};    /* Semicolon at the end of MACRO, and here is ERROR */

else 
{
   -------------------------
   ---- Macro expansion ----
   -------------------------

};
```
We have ended macro with semicolon. When compiler expands macro, it puts semicolon after “if” statement. Because of semicolon between “if and else statement” compiler gives compilation error. Above program will work fine, if we ignore “else” part.

To overcome this limitation, we can enclose our macro in “do-while(0)” statement. Our modified macro will look like this.
```
#include <stdio.h> 
  
#define MACRO(num, str) do {\ 
            printf("%d", num);\ 
            printf(" is");\ 
            printf(" %s number", str);\ 
            printf("\n");\ 
           } while(0) 
  
int main(void) 
{ 
    int num; 
  
    printf("Enter a number: "); 
    scanf("%d", &num); 
  
    if (num & 1) 
        MACRO(num, "Odd"); 
    else
        MACRO(num, "Even"); 
  
    return 0; 
} 
```
We have enclosed macro in “do – while(0)” loop and at the end of while, we have put condition as “while(0)”, that’s why this loop will execute only one time.

Similarly, instead of “do – while(0)” loop we can enclose multi-line macro in parenthesis. We can achieve the same result by using this trick.
```
#include <stdio.h> 
  
#define MACRO(num, str) ({\ 
            printf("%d", num);\ 
            printf(" is");\ 
            printf(" %s number", str);\ 
            printf("\n");\ 
           }) 
  
int main(void) 
{ 
    int num; 
  
    printf("Enter a number: "); 
    scanf("%d", &num); 
  
    if (num & 1) 
        MACRO(num, "Odd"); 
    else
        MACRO(num, "Even"); 
  
    return 0; 
} 
```