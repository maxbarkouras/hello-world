; x64 asm hello world
BITS 64

section .data
    helloWorld db "hello world", 0x0a, 0x00 

section .text
global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, helloWorld
    mov rdx, 12
    syscall

    cmp rax, 12
    jne failed

    mov rax, 60
    mov rdi, 0
    syscall

failed:
    mov rdi, rax
    mov rax, 60
    syscall