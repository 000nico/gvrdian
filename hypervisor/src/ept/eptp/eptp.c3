module eptp;

import assembly;
import bit;
import ept;

bitstruct Eptp : ulong {
    ulong memory_type        : 0..2;
    ulong walk_length_minus1 : 3..5;
    bool  enable_ad_flags    : 6;
    bool  enable_sss         : 7;
    
    // bits 8..11 reserved, 0 by default
    ulong pml4_physical_addr : 12..51;
    
    // bits 52..63 reserved, 0 by default
}

fn Eptp get_configured_eptp(ulong pml4_physical_addr, Ept_capabilities caps) {
    Eptp eptp = {};

    eptp.memory_type        = caps.wb_supported ? 6 : 0; // prefer wb if supported
    eptp.walk_length_minus1 = 3;
    eptp.enable_sss = false;
    eptp.enable_ad_flags = false;
    eptp.pml4_physical_addr = pml4_physical_addr >> 12;
    
    return eptp;
}