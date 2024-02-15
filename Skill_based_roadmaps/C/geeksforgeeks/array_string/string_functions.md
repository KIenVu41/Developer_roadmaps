The C string functions are built-in functions that can be used for various operations and manipulations on strings. These string functions can be used to perform tasks such as string copy, concatenation, comparison, length, etc. The <string.h> header file contains these string functions.

# String Functions in C
Some of the commonly used string functions in C are as follows:

## 1. strcat() Function
The strcat() function in C is used for string concatenation. It will append a copy of the source string to the end of the destination string.

**Syntax**
```
char* strcat(char* dest, const char* src);
```
The terminating character at the end of dest is replaced by the first character of src.

**Parameters**
* dest: Destination string
* src: Source string

**Return value**
* The strcat() function returns a pointer to the dest string.

**Example**
```
#include <stdio.h> 
  
int main() 
{ 
    char dest[50] = "This is an"; 
    char src[50] = " example"; 
  
    printf("dest Before: %s\n", dest); 
  
    // concatenating src at the end of dest 
    strcat(dest, src); 
  
    printf("dest After: %s", dest); 
  
    return 0; 
}
```
**Output**
```
dest Before: This is an
dest After: This is an example
```
In C, there is a function strncat() similar to strcat().

**strncat()**
This function is used for string handling. This function appends not more than n characters from the string pointed to by src to the end of the string pointed to by dest plus a terminating Null-character.

**Syntax of strncat()**
```
char* strncat(char* dest, const char* src, size_t n);
```
where n represents the maximum number of characters to be appended. size_t is an unsigned integral type.

## 2. strlen() Function
The strlen() function calculates the length of a given string. It doesn’t count the null character ‘\0’.

**Syntax**
```
int strlen(const char *str);
```

**Parameters**
* str: It represents the string variable whose length we have to find.

**Return Value**
* strlen() function in C returns the length of the string.

**Example**
```
#include <stdio.h> 
#include <string.h> 
  
int main() 
{ 
    // Declare and initialize a character array 'str' with 
    // the string "GeeksforGeeks" 
    char str[] = "GeeksforGeeks"; 
  
    // Calculate the length of the string using the strlen() 
    // function and store it in the variable 'length' 
    size_t length = strlen(str); 
  
    // Print the length of the string 
    printf("String: %s\n", str); 
  
    printf("Length: %zu\n", length); 
  
    return 0; 
}
```
**Output**
```
String: GeeksforGeeks
Length: 13
```

## 3. strcmp() Function
The strcmp() is a built-in library function in C. This function takes two strings as arguments and compares these two strings lexicographically.

**Syntax**
```
int strcmp(const char *str1, const char *str2);
```

**Parameters**
* str1: This is the first string to be compared.
* str2: This is the second string to be compared.

**Return Value**
* If str1 is less than str2, the return value is less than 0.
* If str1 is greater than str2, the return value is greater than 0.
* If str1 is equal to str2, the return value is 0.

**Example**
```
#include <stdio.h> 
#include <string.h> 
  
int main() 
{ 
    // Define a string 'str1' and initialize it with "Geeks" 
    char str1[] = "Geeks"; 
    // Define a string 'str2' and initialize it with "For" 
    char str2[] = "For"; 
    // Define a string 'str3' and initialize it with "Geeks" 
    char str3[] = "Geeks"; 
  
    // Compare 'str1' and 'str2' using strcmp() function and 
    // store the result in 'result1' 
    int result1 = strcmp(str1, str2); 
    // Compare 'str2' and 'str3' using strcmp() function and 
    // store the result in 'result2' 
    int result2 = strcmp(str2, str3); 
    // Compare 'str1' and 'str1' using strcmp() function and 
    // store the result in 'result3' 
    int result3 = strcmp(str1, str1); 
  
    // Print the result of the comparison between 'str1' and 
    // 'str2' 
    printf("Comparison of str1 and str2: %d\n", result1); 
    // Print the result of the comparison between 'str2' and 
    // 'str3' 
    printf("Comparison of str2 and str3: %d\n", result2); 
    // Print the result of the comparison between 'str1' and 
    // 'str1' 
    printf("Comparison of str1 and str1: %d\n", result3); 
  
    return 0; 
}
```

**Output**
```
Comparison of str1 and str2: 1
Comparison of str2 and str3: -1
Comparison of str1 and str1: 0
```
There is a function strncmp() similar to strcmp().

**strncmp()**

This function lexicographically compares the first n characters from the two null-terminated strings and returns an integer based on the outcome.

**Syntax**
```
int strncmp(const char* str1, const char* str2, size_t num);
```
Where num is the number of characters to compare.

## 4. strcpy
The strcpy() is a standard library function in C and is used to copy one string to another. In C, it is present in <string.h> header file.

**Syntax**
```
char* strcpy(char* dest, const char* src);
```

**Parameters**
* dest: Pointer to the destination array where the content is to be copied. 
* src: string which will be copied.

**Return Value**
* strcpy() function returns a pointer pointing to the output string.

**Example**
```
#include <stdio.h> 
#include <string.h> 
  
int main() 
{ 
    // defining strings 
  
    char source[] = "GeeksforGeeks"; 
    char dest[20]; 
  
    // Copying the source string to dest 
    strcpy(dest, source); 
  
    // printing result 
    printf("Source: %s\n", source); 
    printf("Destination: %s\n", dest); 
  
    return 0; 
}
```

**strncpy()**

The function strncpy() is similar to strcpy() function, except that at most n bytes of src are copied.

If there is no NULL character among the first n character of src, the string placed in dest will not be NULL-terminated. If the length of src is less than n, strncpy() writes an additional NULL character to dest to ensure that a total of n characters are written.

**Syntax**
```
char* strncpy( char* dest, const char* src, size_t n );
```
Where n is the first n characters to be copied from src to dest.

## 5. strchr()
The strchr() function in C is a predefined function used for string handling. This function is used to find the first occurrence of a character in a string.

**Syntax**
char *strchr(const char *str, int c);

**Parameters**
* str: specifies the pointer to the null-terminated string to be searched in.
* ch: specifies the character to be searched for.

Here, str is the string and ch is the character to be located. It is passed as its int promotion, but it is internally converted back to char.

**Return Value**
* It returns a pointer to the first occurrence of the character in the string.

**Example**
```
#include <stdio.h> 
#include <string.h> 
  
int main() 
{ 
    char str[] = "GeeksforGeeks"; 
    char ch = 'e'; 
  
    // Search for the character 'e' in the string 
    // Use the strchr function to find the first occurrence 
    // of 'e' in the string 
    char* result = strchr(str, ch); 
  
    // Character 'e' is found, calculate the index by 
    // subtracting the result pointer from the str pointer 
    if (result != NULL) { 
        printf("The character '%c' is found at index %ld\n", 
               ch, result - str); 
    } 
    else { 
        printf("The character '%c' is not found in the "
               "string\n", 
               ch); 
    } 
  
    return 0; 
}
```
**Output**
```
The character 'e' is found at index 1
```

**strrchr() Function**

In C, strrchr() function is similar to strchr() function. This function is used to find the last occurrence of a character in a string.

**Syntax**
```
char* strchr(const char *str, int ch);
```

## 6. strstr()
The strstr() function in C is used to search the first occurrence of a substring in another string.

**Syntax**
```
char *strstr (const char *s1, const char *s2);
```

**Parameters**
* s1: This is the main string to be examined.
* s2: This is the sub-string to be searched in the s1 string.

**Return Value**
* If the s2 is found in s1, this function returns a pointer to the first character of the s2 in s1, otherwise, it returns a null pointer.
* It returns s1 if s2 points to an empty string.

**Example**
```
#include <stdio.h> 
#include <string.h> 
  
int main() 
{ 
    // Define a string 's1' and initialize it with 
    // "GeeksforGeeks" 
    char s1[] = "GeeksforGeeks"; 
    // Define a string 's2' and initialize it with "for" 
    char s2[] = "for"; 
    // Declare a pointer 'result' to store the result of 
    // strstr() 
    char* result; 
  
    // Find the first occurrence of 's2' within 's1' using 
    // strstr() function and assign the result to 'result' 
    result = strstr(s1, s2); 
  
    if (result != NULL) { 
        // If 'result' is not NULL, it means the substring 
        // was found, so print it 
        printf("Substring found: %s\n", result); 
    } 
    else { 
        // If 'result' is NULL, it means the substring was 
        // not found, so print appropriate message 
        printf("Substring not found.\n"); 
    } 
  
    return 0; 
}
```
**Output**
```
Substring found: forGeeks
```

## 7. strtok()
The strtok() function is used to split the string into small tokens based on a set of delimiter characters.

**Syntax**
```
char * strtok(char* str, const char *delims);
```
**Parameters**
* str: It is the string to be tokenized.
* delims: It is the set of delimiters

**Example**
```
#include <stdio.h> 
#include <string.h> 
  
int main() 
{ 
    char str[] = "Geeks,for.Geeks"; 
    // Delimiters: space, comma, dot, 
    // exclamation mark 
    const char delimiters[] = ",."; 
  
    // Tokenize the string 
    char* token = strtok(str, delimiters); 
    while (token != NULL) { 
        printf("Token: %s\n", token); 
        token = strtok(NULL, delimiters); 
    } 
  
    return 0; 
}
```
**Output**
```
Token: Geeks
Token: for
Token: Geeks
```