Let the given two files be file1.txt and file2.txt. The following are steps to merge.
1) Open file1.txt and file2.txt in read mode.
2) Open file3.txt in write mode.
3) Run a loop to one by one copy characters of file1.txt to file3.txt.
4) Run a loop to one by one copy characters of file2.txt to file3.txt.
5) Close all files.

To successfully run the below program file1.txt and fil2.txt must exits in same folder.

```


#include <stdio.h> 
#include <stdlib.h> 
  
int main() 
{ 
   // Open two files to be merged 
   FILE *fp1 = fopen("file1.txt", "r"); 
   FILE *fp2 = fopen("file2.txt", "r"); 
  
   // Open file to store the result 
   FILE *fp3 = fopen("file3.txt", "w"); 
   char c; 
  
   if (fp1 == NULL || fp2 == NULL || fp3 == NULL) 
   { 
         puts("Could not open files"); 
         exit(0); 
   } 
  
   // Copy contents of first file to file3.txt 
   while ((c = fgetc(fp1)) != EOF) 
      fputc(c, fp3); 
  
   // Copy contents of second file to file3.txt 
   while ((c = fgetc(fp2)) != EOF) 
      fputc(c, fp3); 
  
   printf("Merged file1.txt and file2.txt into file3.txt"); 
  
   fclose(fp1); 
   fclose(fp2); 
   fclose(fp3); 
   return 0; 
} 
```