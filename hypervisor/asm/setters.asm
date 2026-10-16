.CODE

; --- Control registers ---

writecr0 PROC
    ; rcx = new value
    mov cr0, rcx
    ret
writecr0 ENDP

writecr3 PROC
    mov cr3, rcx
    ret
writecr3 ENDP

writecr4 PROC
    mov cr4, rcx
    ret
writecr4 ENDP

; --- MSR ---
; rcx = msr id, rdx = 64-bit value to write

writemsr PROC
    ; wrmsr needs  ecx = msr id, edx:eax = value (high:low)
    mov eax, edx          
    mov r8, rdx      
    shr r8, 32
    mov edx, r8d
    wrmsr
    ret
writemsr ENDP

writedr7 PROC
    mov dr7, rcx
    ret
writedr7 ENDP

write_rflags PROC
    push rcx
    popfq
    ret
write_rflags ENDP

END