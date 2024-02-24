section .data
    msg     db  'Hello, World!', 10
    len     equ $- msg

section .text

global _start

_start:
    mov     eax, 4
    mov     ebx, 1
    mov     ecx, msg
    mov     edx, len
    int     128

    mov     eax, 1
    mov     ebx, 0
    int     128

; Netwide Assembler
; https://www.youtube.com/watch?v=E5JFNmUVswA
