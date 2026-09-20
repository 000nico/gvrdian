.CODE

EXTERN exit_handler_dispatch:PROC

exit_handler_entry PROC
    ; guardar TODOS los registros generales antes de que C3 toque nada
    push r15
    push r14
    push r13
    push r12
    push r11
    push r10
    push r9
    push r8
    push rdi
    push rsi
    push rbp
    push rdx
    push rcx
    push rbx
    push rax

    sub rsp, 32

    mov rcx, rsp
    add rcx, 32          ; rcx = pointer to struct of guest registers

    call exit_handler_dispatch

    add rsp, 32     

    pop rax
    pop rbx
    pop rcx
    pop rdx
    pop rbp
    pop rsi
    pop rdi
    pop r8
    pop r9
    pop r10
    pop r11
    pop r12
    pop r13
    pop r14
    pop r15

    vmresume
    ; if we got here, vmresume failed
    int 3
exit_handler_entry ENDP


get_exit_handler_address PROC
    lea rax, exit_handler_entry
    ret
get_exit_handler_address ENDP

END