INCLUDE Irvine32.inc

.data
msg db "Assembly procedure end now", 0

.code
SumNegativeNumber PROC
    push ebp
    mov ebp, esp
    mov eax, 0
    mov esi, [ebp + 8]
    mov ecx, [ebp + 12]
    xor ebx, ebx
startLoop:
    cmp ecx, 0
    je endLoop
    mov ebx, [esi]
    add esi, 4
    cmp ebx, 0
    jge skip
    add eax, ebx
skip:
    loop startLoop
endLoop:
    mov esp, ebp
    pop ebp
    ret
SumNegativeNumber ENDP
END
