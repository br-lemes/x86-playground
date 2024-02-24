segment .data
    LF          equ 10
    SUCCESS     equ 0
    INPUT_LEN   equ 16

    SYS_CALL    equ 128
    SYS_EXIT    equ 1
    SYS_READ    equ 3
    SYS_WRITE   equ 4

    STDIN       equ 0
    STDOUT      equ 1

section .data
    input_msg   db  'Enter your name: '
    input_len   equ $- input_msg
    output_msg  db  'Hello '
    output_len  equ $- output_msg

section .bss
    name        resb 1

section .text

global _start

_start:
    mov         eax, SYS_WRITE
    mov         ebx, STDOUT
    mov         ecx, input_msg
    mov         edx, input_len
    int         SYS_CALL

    mov         eax, SYS_READ
    mov         ebx, STDIN
    mov         ecx, name
    mov         edx, INPUT_LEN
    int         SYS_CALL

    mov         eax, SYS_WRITE
    mov         ebx, STDOUT
    mov         ecx, output_msg
    mov         edx, output_len
    int         SYS_CALL

    mov         eax, SYS_WRITE
    mov         ebx, STDOUT
    mov         ecx, name
    mov         edx, INPUT_LEN
    int         SYS_CALL

    mov         eax, SYS_EXIT
    mov         ebx, SUCCESS
    int         SYS_CALL

; Netwide Assembler
; https://www.youtube.com/watch?v=vSazR88riHw
