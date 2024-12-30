# lab-eval


Copy the question provided through test portal


copy .vscode folder from your previous example


Write a program that takes an array of numbers (with both positive and negative values) from the user (or declare ) and displays the sum of all negative numbers from the array.

give code with mixing of c and assembly language using irvine 32.inc. give easy code by using jmp and loop and declaration in c and other code n assembly without writing comments.
 INCLUDE Irvine32.inc

.data
.code
sumNegativeNumbers PROC
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
sumNegativeNumbers ENDP
END
/////cc
#include <stdio.h>

extern int sumNegativeNumbers(int[], int);

int main() {
    int numbers[] = {3, -1, 4, -2, 5, -3};
    int size = sizeof(numbers) / sizeof(numbers[0]);
    int sum = sumNegativeNumbers(numbers, size);
    printf("Sum of negative numbers: %d\n", sum);
    return 0;
}
