; 这是一个汇编源文件

.code

; 声明MyCAdd为一个外部函数
extern MyCAdd : proc

; 将第一个参数减去第二个参数的值进行返回
MyASMSub     proc public

    sub     ecx, edx
    mov     eax, ecx
    ret

MyASMSub     endp


MyASMCallCTest  proc public

    sub     rsp, 64             ; 确保对MyCAdd函数调用的栈帧不受破坏
    mov     [rsp + 60], ecx     ; 先将传递进来的参数n保存在栈上（安全起见，保存在当前函数栈空间的最顶部）

    mov     ecx, 3
    mov     edx, 4
    call    MyCAdd              ; 调用C语言实现的加法函数，实现3+4的操作

    sub     eax, [rsp + 60]     ; 将计算结果与参数n相减
    add     rsp, 64
    ret

MyASMCallCTest endp


end

