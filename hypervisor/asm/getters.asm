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
; the msr id parameter is passed in ecx
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
    mov rax, [rsp + 2]
    add rsp, 16
    ret
readgdtbase ENDP

readgdtlimit PROC
    sub rsp, 16
    sgdt [rsp]
    movzx rax, word ptr [rsp]
    add rsp, 16
    ret
readgdtlimit ENDP

readidtbase PROC
    sub rsp, 16
    sidt [rsp]
    mov rax, [rsp + 2]
    add rsp, 16
    ret
readidtbase ENDP

readidtlimit PROC
    sub rsp, 16
    sidt [rsp]
    movzx rax, word ptr [rsp]
    add rsp, 16
    ret
readidtlimit ENDP

readdr7 PROC
    mov rax, dr7
    ret
readdr7 ENDP

readrflags PROC
    pushfq
    pop rax
    ret
readrflags ENDP

readrsp PROC
    lea rax, [rsp + 8]   
    ret
readrsp ENDP

; read rip of the next instruction, not the actual rip
readrip PROC
    mov rax, [rsp]       
    ret
readrip ENDP

get_cpuid PROC
    push rbx
    mov eax, ecx
    mov ecx, edx
    cpuid
    mov [r8], eax
    mov [r8 + 4], ebx
    mov [r8 + 8], ecx
    mov [r8 + 12], edx
    pop rbx
    ret
get_cpuid ENDP

END