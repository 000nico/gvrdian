module win32::svc;

const CULong SC_MANAGER_ALL_ACCESS = 0xF003F;
const CULong SERVICE_ALL_ACCESS    = 0xF01FF;
const CULong SERVICE_KERNEL_DRIVER = 0x00000001;
const CULong SERVICE_DEMAND_START  = 0x00000003;
const CULong SERVICE_ERROR_NORMAL  = 0x00000001;
const CULong SERVICE_CONTROL_STOP  = 0x00000001;

struct ServiceStatus
{
    CULong dw_service_type;
    CULong dw_current_state;
    CULong dw_controls_accepted;
    CULong dw_win32_exit_code;
    CULong dw_service_specific_exit_code;
    CULong dw_check_point;
    CULong dw_wait_hint;
}

extern fn void* open_sc_manager(char* lp_machine_name, char* lp_database_name, CULong dw_desired_access) @cname("OpenSCManagerA");
extern fn void* create_service(void* sc_manager, char* lp_service_name, char* lp_display_name, CULong dw_desired_access, CULong dw_service_type, CULong dw_start_type, CULong dw_error_control, char* lp_binary_path_name, char* lp_load_order_group, CULong* lpdw_tag_id, char* lp_dependencies, char* lp_service_start_name, char* lp_password) @cname("CreateServiceA");
extern fn void* open_service(void* sc_manager, char* lp_service_name, CULong dw_desired_access) @cname("OpenServiceA");
extern fn int start_service(void* h_service, CULong dw_num_service_args, char** lp_service_arg_vectors) @cname("StartServiceA");
extern fn int control_service(void* h_service, CULong dw_control, ServiceStatus* lp_service_status) @cname("ControlService");
extern fn int delete_service(void* h_service) @cname("DeleteService");
extern fn int close_service_handle(void* h_sc_object) @cname("CloseServiceHandle");