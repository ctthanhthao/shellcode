section .data
    msg db "Hello World!", 0xA
    len equ $ - msg

section .text
    global _start

_start:
    ; write(stdout, msg, len)
    mov     rax, 1          ; syscall: write
    mov     rdi, 1          ; file descriptor: stdout
    mov     rsi, msg        ; pointer to message
    mov     rdx, len        ; message length
    syscall

    ; exit(146)
    mov     rax, 60         ; syscall: exit
    mov     rdi, 146        ; exit code
    syscall