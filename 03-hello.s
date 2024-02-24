segment .data
    LF          equ 10
    SUCCESS     equ 0

    SYS_CALL    equ 128
    SYS_EXIT    equ 1
    SYS_WRITE   equ 4

    STDOUT      equ 1

section .data
    msg         db  'Hello, World!', LF
    len         equ $- msg

section .text

global _start

_start:
    mov         eax, SYS_WRITE
    mov         ebx, STDOUT
    mov         ecx, msg
    mov         edx, len
    int         SYS_CALL

    mov         eax, SYS_EXIT
    mov         ebx, SUCCESS
    int         SYS_CALL

; Netwide Assembler
; https://www.youtube.com/watch?v=E5JFNmUVswA
; https://www.youtube.com/watch?v=vSazR88riHw
