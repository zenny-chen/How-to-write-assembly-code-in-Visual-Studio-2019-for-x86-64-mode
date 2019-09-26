//
//  main.c
//  这是一份UTF-8编码的文件
//

#include <stdio.h>

/* return the value of a - b */
extern int MyASMSub(int a, int b);

int main(int argc, const char * argv[])
{
    // insert code here...
    const int result = MyASMSub(8, 3);
    printf("The reuslt is: %d\n", result);
    
    return 0;
}

