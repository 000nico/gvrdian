module vmcs_utils;

import bit;

fn uint adjust_controls(uint desired, ulong capability_msr) {
    uint result = desired;
    for (int i = 0; i < 32; i++) {
        bool must_be_1 = bit::bit_get(capability_msr, i);
        bool must_be_0 = !bit::bit_get(capability_msr, i + 32);
        if (must_be_1) result = (uint)bit::bit_set(result, i);
        if (must_be_0) result = (uint)bit::bit_clear(result, i);
    }
    return result;
}