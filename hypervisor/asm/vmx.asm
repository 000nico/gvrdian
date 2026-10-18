.CODE

; vmxon
vmx_on PROC
    vmxon QWORD PTR [rcx]
    jc vmx_on_fail
    mov rax, 1
    ret

vmx_on_fail:
    mov rax, 0
    ret
vmx_on ENDP

; vmxoff
vmx_off PROC
    vmxoff
    jc vmxoff_fail      ; CF=1 -> VMfailInvalid
    jz vmxoff_fail       ; ZF=1 -> VMfailValid
    mov eax, 1           
    ret
vmxoff_fail:
    xor eax, eax         
    ret
vmx_off ENDP
; vmclear
vm_clear PROC
    vmclear QWORD PTR [rcx]
    jc vm_clear_fail
    mov rax, 1
    ret

vm_clear_fail:
    mov rax, 0
    ret
vm_clear ENDP

; vmptrld
vm_ptrld PROC
    vmptrld QWORD PTR [rcx]
    jc vm_ptrld_fail
    mov rax, 1
    ret

vm_ptrld_fail:
    mov rax, 0
    ret
vm_ptrld ENDP

; vmread  (field in rcx, out ptr in rdx)
vm_read PROC
    vmread r8, rcx
    jc vm_read_fail
    mov [rdx], r8
    mov rax, 1
    ret

vm_read_fail:
    mov rax, 0
    ret
vm_read ENDP

; vmwrite  (field in rcx, value in rdx)
vm_write PROC
    vmwrite rcx, rdx
    jc vm_write_fail
    mov rax, 1
    ret

vm_write_fail:
    mov rax, 0
    ret
vm_write ENDP

; vmlaunch
vm_launch PROC
    vmlaunch
    jc vm_launch_fail
    mov rax, 1
    ret
vm_launch_fail:
    mov rax, 0
    ret
vm_launch ENDP

; vmresume
vm_resume PROC
    vmresume
    jc vm_resume_fail
    mov rax, 1
    ret

vm_resume_fail:
    mov rax, 0
    ret
vm_resume ENDP

; invept
global_invept PROC
    invept 2, oword ptr [rdx]
    ret
global_invept ENDP

END