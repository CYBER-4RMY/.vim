section .data
    msg db "Hello, World!", 0x0A ; string and a newline character
    len equ $ - msg         ; length of the string

section .text
    global _start

_start:
    ; write(fd, buf, count)
    mov rax, 1              ; syscall number for write
    mov rdi, 1              ; file descriptor 1 is stdout
    mov rsi, msg            ; address of string to output
    mov rdx, len            ; length of string
    syscall

    ; exit(status)
    mov rax, 60             ; syscall number for exit
    mov rdi, 0              ; exit code 0
    syscall
