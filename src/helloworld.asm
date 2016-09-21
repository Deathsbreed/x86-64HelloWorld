.section .data
hello:
    .ascii "Hello, World!\n"    # the string
hello_end:
.equ hello_len, hello_end - hello

.section .text
    .global _start

_start:
    movq $1, %rax                   # Define write syscall
    movq $1, %rdi                   # Define stdout
    movq $hello, %rsi               # Give string
    movq $hello_len, %rdx           # Give size of the string
    syscall                         # Call the kernel to do work for us

    movq $60, %rax                  # Define exit syscall
    movq $0, %rdi                   # Give return value
    syscall                         # Call the kernel to do work for us
