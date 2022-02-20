BITS 64

global _start

section .rodata
    binsh db "/bin/sh", 0x0

section .text

_start:
    xor rax, rax ; a xor a = 0
    xor rdi, rdi
    mov rax, 59 ; sys_execv 
    mov rdi, binsh ; /bin/sh
    syscall 