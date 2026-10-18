module map_ept;

import wdm;
import bit;
import assembly;

bitstruct EptPml4e : ulong {
    bool  read_access        : 0;
    bool  write_access       : 1;
    bool  execute_access     : 2;
    ulong reserved_1         : 3..7;   // 0
    bool  accessed           : 8;      // only if caps.ad_flags_supported
    bool  ignored_1          : 9;
    bool  user_execute       : 10;     // only if mode-based execute control is enabled
    bool  ignored_2          : 11;
    ulong pdpt_physical_addr : 12..51; // HPA of PDPT (shifted >> 12)
    ulong ignored_3          : 52..63;
}

bitstruct EptPdpte : ulong {
    bool  read_access       : 0;
    bool  write_access      : 1;
    bool  execute_access    : 2;
    ulong reserved_1        : 3..6;    // 0
    bool  maps_1gb_page     : 7;       // 0
    bool  accessed          : 8;
    bool  ignored_1         : 9;
    bool  user_execute      : 10;
    bool  ignored_2         : 11;
    ulong pd_physical_addr  : 12..51;  // HPA of PD (shifted >> 12)
    ulong ignored_3         : 52..63;
}

bitstruct EptPde2mb : ulong {
    bool  read_access      : 0;
    bool  write_access     : 1;
    bool  execute_access   : 2;
    ulong memory_type      : 3..5;     // 6 = Write-Back
    bool  ignore_pat       : 6;        // usually 0
    bool  maps_2mb_page    : 7;        // 1
    bool  accessed         : 8;
    bool  dirty             : 9;       // only relevant if write_access = true
    bool  user_execute     : 10;
    bool  ignored_1        : 11;
    ulong reserved_1       : 12..20;   // 0
    ulong page_physical_addr : 21..51; // HPA of the 2MB page (shifted >> 21)
    ulong ignored_2        : 52..62;
    bool  suppress_ve      : 63;       // only if enabled EPT-VIOLATION #VE
}
