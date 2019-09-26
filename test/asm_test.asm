; 这是一个汇编源文件

.code

; 将第一个参数减去第二个参数的值进行返回
MyASMSub     proc public

    sub     ecx, edx
    mov     eax, ecx
    ret

MyASMSub     endp


end

