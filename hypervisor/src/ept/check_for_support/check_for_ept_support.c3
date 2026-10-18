module ept;

import bit;
import assembly;

struct Ept_capabilities {
    bool execute_only;
    bool walk_length_4;
    bool uc_supported;
    bool wb_supported;
    bool large_pages_2mb;
    bool large_pages_1gb;
    bool invept_supported;
    bool ad_flags_supported;
    bool ve_supported;
    bool invept_single_context;
    bool invept_all_context;
    bool invvpid_supported;
}

fn bool supports_ept() {
    ulong ia32_vmx_procbased_ctls2 = assembly::read_msr(0x48B);
    
    return bit::bit_get(ia32_vmx_procbased_ctls2, 33);
}

fn Ept_capabilities ept_supported_capabilities() {
    ulong ia32_vmx_ept_vpid_cap = assembly::read_msr(0x48C);

    Ept_capabilities caps = {};

    caps.execute_only          = bit::bit_get(ia32_vmx_ept_vpid_cap, 0);
    caps.walk_length_4         = bit::bit_get(ia32_vmx_ept_vpid_cap, 6);
    caps.uc_supported          = bit::bit_get(ia32_vmx_ept_vpid_cap, 8);
    caps.wb_supported          = bit::bit_get(ia32_vmx_ept_vpid_cap, 14);
    caps.large_pages_2mb       = bit::bit_get(ia32_vmx_ept_vpid_cap, 16);
    caps.large_pages_1gb       = bit::bit_get(ia32_vmx_ept_vpid_cap, 17);
    caps.invept_supported      = bit::bit_get(ia32_vmx_ept_vpid_cap, 20); 
    caps.ad_flags_supported    = bit::bit_get(ia32_vmx_ept_vpid_cap, 21);
    caps.ve_supported          = bit::bit_get(ia32_vmx_ept_vpid_cap, 22);
    caps.invept_single_context = bit::bit_get(ia32_vmx_ept_vpid_cap, 25);
    caps.invept_all_context    = bit::bit_get(ia32_vmx_ept_vpid_cap, 26);
    caps.invvpid_supported     = bit::bit_get(ia32_vmx_ept_vpid_cap, 32);

    return caps;
}

fn bool ept_is_usable(Ept_capabilities* out_caps) {
    if (!supports_ept()) {
        return false;
    }

    *out_caps = ept_supported_capabilities();

    return out_caps.wb_supported && out_caps.walk_length_4 && out_caps.invept_supported;
}