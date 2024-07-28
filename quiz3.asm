section .data
    num db 5 ; Number to calculate factorial of

section .bss
    result resb 4

section .text
    global _start

_start:
    mov eax, 1      ; Base case of 1
    mov ecx, [num]  ; Load number

factorial_loop:
    cmp ecx, 1      ; Check with base case
    jle end_factorial ; If base case, we are done
    imul eax, ecx   ; Else, multiply
    dec ecx         ; Reduce by one
    jmp factorial_loop ; Repeat

end_factorial:
    mov [result], eax ; Store result
    mov eax, 1      
    int 0x80        
