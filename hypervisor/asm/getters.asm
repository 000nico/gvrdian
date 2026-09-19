.CODE

; normal registers
; control registers

readcr0 PROC
    mov rax, cr0
    ret
readcr0 ENDP

readcr3 PROC
    mov rax, cr3
    ret
readcr3 ENDP

readcr4 PROC
    mov rax, cr4
    ret
readcr4 ENDP

; msr
; parameter msd id its stored into ecx
readmsr PROC
    rdmsr
    shl rdx, 32
    or rax, rdx
    ret
readmsr ENDP

; segment registers / descriptor tables
readcs PROC
    mov ax, cs
    ret
readcs ENDP

readss PROC
    mov ax, ss
    ret 
readss ENDP

readds PROC
    mov ax, ds
    ret
readds ENDP

reades PROC
    mov ax, es
    ret
reades ENDP

readfs PROC
    mov ax, fs
    ret
readfs ENDP

readgs PROC
    mov ax, gs
    ret
readgs ENDP

readtr PROC
    str ax
    ret
readtr ENDP

readgdtbase PROC
    sub rsp, 16
    sgdt [rsp]
    mov rax, [rsp + 2]   ; base its 2 after limit
    add rsp, 16
    ret
readgdtbase ENDP

readidtbase PROC
    sub rsp, 16
    sidt [rsp]
    mov rax, [rsp + 2]     ; base its 2 after limit
    add rsp, 16
    ret
readidtbase ENDP

END