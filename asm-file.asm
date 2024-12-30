INCLUDE Irvine32.inc
.data
msg db "assebly procedure end now",0
sum DWORD 0

.code
SumNegativeNumber PROC p1:DWORD, p2:DWORD
    
    mov esi,p1
    mov ecx, p2
    mov eax, 0

    Sum_Loop:
    CMP ecx, 0
    JE end_Loop
    
    mov ebx, [esi]
    CMP ebx, 0
    JGE skip_add

    add eax, ebx
    skip_add:
    add esi, 4
    sub ecx,1
    JMP Sum_Loop

    end_Loop:
    ret
    SumNegativeNumber ENDP

END