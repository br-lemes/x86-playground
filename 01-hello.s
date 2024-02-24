.global _start
.intel_syntax noprefix

_start:
    call    print_hello_world
    jmp     exit

print_hello_world:
    mov     rax, 1
    mov     rdi, 1
    lea     rsi, [hello_str]
    mov     rdx, 14
    syscall
    ret

exit:
    mov     rax, 60
    mov     rdi, 0
    syscall

.section .data
    hello_str: .asciz "Hello, World!\n"

# GNU Assembly
# https://www.youtube.com/watch?v=Rpq5PDDgwxU
