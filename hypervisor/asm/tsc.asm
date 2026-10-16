.CODE

read_tsc PROC
    rdtsc                    ; EDX:EAX = TSC
    shl rdx, 32
    or  rax, rdx             ; RAX = full 64-bit TSC
    ret
read_tsc ENDP

END