.section .data
    hello:
        .ascii "Hello, World.\n"    # the string

.section .text
    .global _start

_start:
    mov $1, %rax                    # Define write syscall
    mov $1, %rdi                    # Define stdout
    mov $hello, %rsi                # Give string
    mov $14, %rdx                   # Give size of the string
    syscall                         # Call the kernel to do work for us

    mov $60, %rax                   # Define exit syscall
    xor %rdi, %rdi                  # Give return value
    syscall                         # Call the kernel to do work for us
