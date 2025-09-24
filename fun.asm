section .data
    prompt1 db 'Enter the first number (0-9): ', 0
    prompt2 db 'Enter an operator (+, -, *, /): ', 0
    prompt3 db 'Enter the second number (0-9): ', 0
    result_msg db 'Result: ', 0
    error_div_zero db 'Error: Division by zero.', 10, 0
    error_invalid_op db 'Error: Invalid operator.', 10, 0
    newline db 10

section .bss
    num1 resb 2
    op resb 2
    num2 resb 2
    result resb 2

section .text
    global _start

_print:
    mov rsi, rdi
    mov rdx, 0
_print_loop:
    cmp byte [rsi], 0
    je _print_done
    inc rdx
    inc rsi
    jmp _print_loop
_print_done:
    mov rax, 1
    mov rdi, 1
    sub rsi, rdx
    syscall
    ret

_read:
    mov rax, 0
    mov rdi, 0
    mov rsi, rsi
    mov rdx, 2
    syscall
    ret

_start:
    mov rdi, prompt1
    call _print
    mov rsi, num1
    call _read

    mov rdi, prompt2
    call _print
    mov rsi, op
    call _read

    mov rdi, prompt3
    call _print
    mov rsi, num2
    call _read

    mov al, [num1]
    sub al, '0'
    mov bl, [num2]
    sub bl, '0'

    cmp byte [op], '+'
    je _add
    cmp byte [op], '-'
    je _sub
    cmp byte [op], '*'
    je _mul
    cmp byte [op], '/'
    je _div
    
    mov rdi, error_invalid_op
    call _print
    jmp _exit

_add:
    add al, bl
    jmp _store_result

_sub:
    sub al, bl
    jmp _store_result

_mul:
    mul bl
    jmp _store_result

_div:
    cmp bl, 0
    je _div_zero
    mov ah, 0
    div bl
    jmp _store_result

_div_zero:
    mov rdi, error_div_zero
    call _print
    jmp _exit

_store_result:
    add al, '0'
    mov [result], al

    mov rdi, result_msg
    call _print
    mov rdi, result
    call _print

    mov rdi, newline
    call _print

_exit:
    mov rax, 60
    xor rdi, rdi
    syscall
