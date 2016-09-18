.section .data
hello:
    .ascii "Hello, World!\n"    # the string
hello_end:
.equ hello_len, hello_end - hello

.section .text
    .global _start

_start:
    mov $1, %rax                    # Define write syscall
    mov $1, %rdi                    # Define stdout
    mov $hello, %rsi                # Give string
    mov $hello_len, %rdx                   # Give size of the string
    syscall                         # Call the kernel to do work for us

    mov $60, %rax                   # Define exit syscall
    mov $0, %rdi                    # Give return value
    syscall                         # Call the kernel to do work for us
