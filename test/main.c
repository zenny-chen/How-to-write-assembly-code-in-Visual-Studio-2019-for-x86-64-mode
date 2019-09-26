//
//  main.c
//  这是一份UTF-8编码的文件
//

#include <stdio.h>

/* 返回a - b的差值 */
extern int MyASMSub(int a, int b);

/* 在汇编过程中实现求和操作，再减去n返回差值 */
extern int MyASMCallCTest(int n);

/* 在C语言端实现的全局加法函数。它将被汇编语言过程所调用。 */
int MyCAdd(int a, int b)
{
    return a + b;
}

int main(int argc, const char * argv[])
{
    // insert code here...
    int result = MyASMSub(8, 3);
    printf("The reuslt is: %d\n", result);

    result = MyASMCallCTest(5);
    printf("The result is: %d\n", result);
    
    return 0;
}

