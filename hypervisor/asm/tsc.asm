.CODE

read_tsc PROC
    rdtsc                    ; EDX:EAX = TSC
    shl rdx, 32
    or  rax, rdx             ; RAX = TSC completo en 64 bits
    ret
read_tsc ENDP

END