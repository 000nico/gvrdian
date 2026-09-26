module event_injector;

import assembly;
import vmcs_fields;

// event type
const uint EVENT_TYPE_EXTERNAL_INTERRUPT = 0;
const uint EVENT_TYPE_NMI                = 2;
const uint EVENT_TYPE_HARDWARE_EXCEPTION = 3;
const uint EVENT_TYPE_SOFTWARE_INTERRUPT = 4;
const uint EVENT_TYPE_SOFTWARE_EXCEPTION = 6;

// exception vector
const uint VECTOR_DE  = 0;   // divide error
const uint VECTOR_DB  = 1;   // debug
const uint VECTOR_NMI = 2;   // non maskable interrupt
const uint VECTOR_BP  = 3;   // breakpoint
const uint VECTOR_UD  = 6;   // invalid opcode
const uint VECTOR_NP  = 11;  // segment not present
const uint VECTOR_SS  = 12;  // stack fault
const uint VECTOR_GP  = 13;  // general protection
const uint VECTOR_PF  = 14;  // page fault

module event_injector;

import assembly;
import vmcs_fields;

// tipos de evento
const uint EVENT_TYPE_EXTERNAL_INTERRUPT = 0;
const uint EVENT_TYPE_NMI                = 2;
const uint EVENT_TYPE_HARDWARE_EXCEPTION = 3;
const uint EVENT_TYPE_SOFTWARE_INTERRUPT = 4;
const uint EVENT_TYPE_SOFTWARE_EXCEPTION = 6;

// vectores de excepcion comunes
const uint VECTOR_DE  = 0;   // divide error
const uint VECTOR_DB  = 1;   // debug
const uint VECTOR_NMI = 2;   // non maskable interrupt
const uint VECTOR_BP  = 3;   // breakpoint
const uint VECTOR_UD  = 6;   // invalid opcode
const uint VECTOR_NP  = 11;  // segment not present
const uint VECTOR_SS  = 12;  // stack fault
const uint VECTOR_GP  = 13;  // general protection
const uint VECTOR_PF  = 14;  // page fault

fn void inject_event(uint vector, uint type, bool has_error_code, uint error_code) {
    ulong info = 0;
    info |= (ulong)vector;           // bits 7:0
    info |= (ulong)(type << 8);      // bits 10:8
    if (has_error_code) {
        info |= (1UL << 11);         // bit 11 = deliver error code
    }
    info |= (1UL << 31);             // bit 31 = valid

    assembly::vm_write(vmcs_fields::VMENTRY_INTERRUPTION_INFO, info);

    if (has_error_code) {
        assembly::vm_write(vmcs_fields::VMENTRY_EXCEPTION_ERROR_CODE, (ulong)error_code);
    }
}

fn void inject_ud() {
    inject_event(VECTOR_UD, EVENT_TYPE_HARDWARE_EXCEPTION, false, 0);
}

fn void inject_gp(uint error_code) {
    inject_event(VECTOR_GP, EVENT_TYPE_HARDWARE_EXCEPTION, true, error_code);
}

fn void inject_pf(uint error_code) {
    inject_event(VECTOR_PF, EVENT_TYPE_HARDWARE_EXCEPTION, true, error_code);
}

fn void inject_bp() {
    inject_event(VECTOR_BP, EVENT_TYPE_SOFTWARE_EXCEPTION, false, 0);
}

fn void inject_nmi() {
    inject_event(VECTOR_NMI, EVENT_TYPE_NMI, false, 0);
}