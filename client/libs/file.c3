module win32::file;

// Type Aliases & Callbacks
alias PbyHandleFileInformation = ByHandleFileInformation*;
alias LpbyHandleFileInformation = ByHandleFileInformation*;
alias Lpwin32FileAttributeData = Win32FileAttributeData*;
alias Pcreatefile2ExtendedParameters = Createfile2ExtendedParameters*;
alias Lpcreatefile2ExtendedParameters = Createfile2ExtendedParameters*;
alias Lpwin32FindDataw = Win32FindDataw*;
alias PlargeInteger = LargeInteger*;
alias Uint = uint;
alias Dword = CULong;
alias Lpwch = Wchar*;
alias Long = CLong;
alias Lpwin32FindDataa = Win32FindDataa*;
alias Lpcstr = Char*;
alias Longlong = long;
alias Lpcwstr = Wchar*;
alias Lpoverlapped = Overlapped*;
alias Ulonglong = ulong;
alias Lpdword = Dword*;
alias Lpwstr = Wchar*;
alias Handle = void*;
alias LpsecurityAttributes = SecurityAttributes*;
alias Pdword = Dword*;
alias Lpvoid = void*;
alias Lpstr = Char*;
alias LpoverlappedCompletionRoutine = void*;
alias Lpfiletime = Filetime*;
alias PvoidVT = void*;
alias Hresult = CLong;
alias PulargeInteger = UlargeInteger*;
alias Winbool = int;
alias Plong = Long*;
alias Lpcvoid = void*;

enum FileInfoByHandleClass
{
	FILEBASICINFO,
	FILESTANDARDINFO,
	FILENAMEINFO,
	FILERENAMEINFO,
	FILEDISPOSITIONINFO,
	FILEALLOCATIONINFO,
	FILEENDOFFILEINFO,
	FILESTREAMINFO,
	FILECOMPRESSIONINFO,
	FILEATTRIBUTETAGINFO,
	FILEIDBOTHDIRECTORYINFO,
	FILEIDBOTHDIRECTORYRESTARTINFO,
	FILEIOPRIORITYHINTINFO,
	FILEREMOTEPROTOCOLINFO,
	FILEFULLDIRECTORYINFO,
	FILEFULLDIRECTORYRESTARTINFO,
	FILESTORAGEINFO,
	FILEALIGNMENTINFO,
	FILEIDINFO,
	FILEIDEXTDDIRECTORYINFO,
	FILEIDEXTDDIRECTORYRESTARTINFO,
	FILEDISPOSITIONINFOEX,
	FILERENAMEINFOEX,
	FILECASESENSITIVEINFO,
	FILENORMALIZEDNAMEINFO,
	MAXIMUMFILEINFOBYHANDLECLASS
}

enum FindexInfoLevels
{
	FINDEXINFOSTANDARD,
	FINDEXINFOBASIC,
	FINDEXINFOMAXINFOLEVEL
}

enum FindexSearchOps
{
	FINDEXSEARCHNAMEMATCH,
	FINDEXSEARCHLIMITTODIRECTORIES,
	FINDEXSEARCHLIMITTODEVICES,
	FINDEXSEARCHMAXSEARCHOP
}

enum GetFileexInfoLevels
{
	GETFILEEXINFOSTANDARD,
	GETFILEEXMAXINFOLEVEL
}

struct ByHandleFileInformation
{
	CULong dw_file_attributes;
	Filetime ft_creation_time;
	Filetime ft_last_access_time;
	Filetime ft_last_write_time;
	CULong dw_volume_serial_number;
	CULong n_file_size_high;
	CULong n_file_size_low;
	CULong n_number_of_links;
	CULong n_file_index_high;
	CULong n_file_index_low;
}

struct Win32FileAttributeData
{
	CULong dw_file_attributes;
	Filetime ft_creation_time;
	Filetime ft_last_access_time;
	Filetime ft_last_write_time;
	CULong n_file_size_high;
	CULong n_file_size_low;
}

struct Createfile2ExtendedParameters
{
	CULong dw_size;
	CULong dw_file_attributes;
	CULong dw_file_flags;
	CULong dw_security_qos_flags;
	LpsecurityAttributes lp_security_attributes;
	void* h_template_file;
}

struct DiskSpaceInformation
{
	ulong actual_total_allocation_units;
	ulong actual_available_allocation_units;
	ulong actual_pool_unavailable_allocation_units;
	ulong caller_total_allocation_units;
	ulong caller_available_allocation_units;
	ulong caller_pool_unavailable_allocation_units;
	ulong used_allocation_units;
	ulong total_reserved_allocation_units;
	ulong volume_storage_reserve_allocation_units;
	ulong available_committed_allocation_units;
	ulong pool_available_allocation_units;
	CULong sectors_per_allocation_unit;
	CULong bytes_per_sector;
}

struct Filetime
{
	CULong dw_low_date_time;
	CULong dw_high_date_time;
}

union LargeInteger
{
	void* _field1;
	void* u;
	long quad_part;
}

union FileSegmentElement
{
	void* buffer;
	ulong alignment;
}

struct Win32FindDataw { void* _unused; }

struct Wchar { void* _unused; }

struct Win32FindDataa { void* _unused; }

struct Char { void* _unused; }

struct Overlapped { void* _unused; }

struct SecurityAttributes { void* _unused; }

struct UlargeInteger { void* _unused; }

// Functions
extern fn Dword get_file_attributes_w(Lpcwstr lp_file_name) @cname("GetFileAttributesW");
extern fn Dword set_file_pointer(void* h_file, CLong l_distance_to_move, Plong lp_distance_to_move_high, CULong dw_move_method) @cname("SetFilePointer");
extern fn Winbool get_file_information_by_handle(void* h_file, LpbyHandleFileInformation lp_file_information) @cname("GetFileInformationByHandle");
extern fn Handle create_file_a(Lpcstr lp_file_name, CULong dw_desired_access, CULong dw_share_mode, LpsecurityAttributes lp_security_attributes, CULong dw_creation_disposition, CULong dw_flags_and_attributes, void* h_template_file) @cname("CreateFileA");
extern fn Winbool define_dos_device_w(CULong dw_flags, Lpcwstr lp_device_name, Lpcwstr lp_target_path) @cname("DefineDosDeviceW");
extern fn Winbool find_close_change_notification(void* h_change_handle) @cname("FindCloseChangeNotification");
extern fn Handle find_first_change_notification_a(Lpcstr lp_path_name, int b_watch_subtree, CULong dw_notify_filter) @cname("FindFirstChangeNotificationA");
extern fn Handle find_first_change_notification_w(Lpcwstr lp_path_name, int b_watch_subtree, CULong dw_notify_filter) @cname("FindFirstChangeNotificationW");
extern fn Handle find_first_volume_w(Lpwstr lpsz_volume_name, CULong cch_buffer_length) @cname("FindFirstVolumeW");
extern fn Winbool find_next_change_notification(void* h_change_handle) @cname("FindNextChangeNotification");
extern fn Winbool find_next_volume_w(void* h_find_volume, Lpwstr lpsz_volume_name, CULong cch_buffer_length) @cname("FindNextVolumeW");
extern fn Winbool find_volume_close(void* h_find_volume) @cname("FindVolumeClose");
extern fn Handle create_file_w(Lpcwstr lp_file_name, CULong dw_desired_access, CULong dw_share_mode, LpsecurityAttributes lp_security_attributes, CULong dw_creation_disposition, CULong dw_flags_and_attributes, void* h_template_file) @cname("CreateFileW");
extern fn Dword get_file_size(void* h_file, Lpdword lp_file_size_high) @cname("GetFileSize");
extern fn Long compare_file_time(Filetime* lp_file_time1, Filetime* lp_file_time2) @cname("CompareFileTime");
extern fn Winbool delete_volume_mount_point_w(Lpcwstr lpsz_volume_mount_point) @cname("DeleteVolumeMountPointW");
extern fn Winbool file_time_to_local_file_time(Filetime* lp_file_time, Lpfiletime lp_local_file_time) @cname("FileTimeToLocalFileTime");
extern fn Handle find_first_file_a(Lpcstr lp_file_name, Lpwin32FindDataa lp_find_file_data) @cname("FindFirstFileA");
extern fn Handle find_first_file_w(Lpcwstr lp_file_name, Lpwin32FindDataw lp_find_file_data) @cname("FindFirstFileW");
extern fn Winbool get_disk_free_space_a(Lpcstr lp_root_path_name, Lpdword lp_sectors_per_cluster, Lpdword lp_bytes_per_sector, Lpdword lp_number_of_free_clusters, Lpdword lp_total_number_of_clusters) @cname("GetDiskFreeSpaceA");
extern fn Winbool get_disk_free_space_w(Lpcwstr lp_root_path_name, Lpdword lp_sectors_per_cluster, Lpdword lp_bytes_per_sector, Lpdword lp_number_of_free_clusters, Lpdword lp_total_number_of_clusters) @cname("GetDiskFreeSpaceW");
extern fn Uint get_drive_type_a(Lpcstr lp_root_path_name) @cname("GetDriveTypeA");
extern fn Uint get_drive_type_w(Lpcwstr lp_root_path_name) @cname("GetDriveTypeW");
extern fn Dword get_file_attributes_a(Lpcstr lp_file_name) @cname("GetFileAttributesA");
extern fn Winbool get_file_size_ex(void* h_file, PlargeInteger lp_file_size) @cname("GetFileSizeEx");
extern fn Winbool get_file_time(void* h_file, Lpfiletime lp_creation_time, Lpfiletime lp_last_access_time, Lpfiletime lp_last_write_time) @cname("GetFileTime");
extern fn Dword get_file_type(void* h_file) @cname("GetFileType");
extern fn Dword get_full_path_name_a(Lpcstr lp_file_name, CULong n_buffer_length, Lpstr lp_buffer, Lpstr* lp_file_part) @cname("GetFullPathNameA");
extern fn Dword get_full_path_name_w(Lpcwstr lp_file_name, CULong n_buffer_length, Lpwstr lp_buffer, Lpwstr* lp_file_part) @cname("GetFullPathNameW");
extern fn Dword get_logical_drives() @cname("GetLogicalDrives");
extern fn Winbool get_volume_name_for_volume_mount_point_w(Lpcwstr lpsz_volume_mount_point, Lpwstr lpsz_volume_name, CULong cch_buffer_length) @cname("GetVolumeNameForVolumeMountPointW");
extern fn Winbool get_volume_path_name_w(Lpcwstr lpsz_file_name, Lpwstr lpsz_volume_path_name, CULong cch_buffer_length) @cname("GetVolumePathNameW");
extern fn Winbool read_file_scatter(void* h_file, FileSegmentElement* a_segment_array, CULong n_number_of_bytes_to_read, Lpdword lp_reserved, Lpoverlapped lp_overlapped) @cname("ReadFileScatter");
extern fn Winbool set_file_valid_data(void* h_file, long valid_data_length) @cname("SetFileValidData");
extern fn Winbool write_file_gather(void* h_file, FileSegmentElement* a_segment_array, CULong n_number_of_bytes_to_write, Lpdword lp_reserved, Lpoverlapped lp_overlapped) @cname("WriteFileGather");
extern fn Dword get_logical_drive_strings_w(CULong n_buffer_length, Lpwstr lp_buffer) @cname("GetLogicalDriveStringsW");
extern fn Dword get_short_path_name_w(Lpcwstr lpsz_long_path, Lpwstr lpsz_short_path, CULong cch_buffer) @cname("GetShortPathNameW");
extern fn Dword query_dos_device_w(Lpcwstr lp_device_name, Lpwstr lp_target_path, CULong ucch_max) @cname("QueryDosDeviceW");
extern fn Winbool get_volume_path_names_for_volume_name_w(Lpcwstr lpsz_volume_name, Lpwch lpsz_volume_path_names, CULong cch_buffer_length, Pdword lpcch_return_length) @cname("GetVolumePathNamesForVolumeNameW");
extern fn Winbool get_volume_information_by_handle_w(void* h_file, Lpwstr lp_volume_name_buffer, CULong n_volume_name_size, Lpdword lp_volume_serial_number, Lpdword lp_maximum_component_length, Lpdword lp_file_system_flags, Lpwstr lp_file_system_name_buffer, CULong n_file_system_name_size) @cname("GetVolumeInformationByHandleW");
extern fn Winbool are_short_names_enabled(void* handle, Winbool* enabled) @cname("AreShortNamesEnabled");
extern fn Dword get_long_path_name_a(Lpcstr lpsz_short_path, Lpstr lpsz_long_path, CULong cch_buffer) @cname("GetLongPathNameA");
extern fn Dword get_long_path_name_w(Lpcwstr lpsz_short_path, Lpwstr lpsz_long_path, CULong cch_buffer) @cname("GetLongPathNameW");
extern fn Uint get_temp_file_name_a(Lpcstr lp_path_name, Lpcstr lp_prefix_string, uint u_unique, Lpstr lp_temp_file_name) @cname("GetTempFileNameA");
extern fn Uint get_temp_file_name_w(Lpcwstr lp_path_name, Lpcwstr lp_prefix_string, uint u_unique, Lpwstr lp_temp_file_name) @cname("GetTempFileNameW");
extern fn Winbool get_volume_information_w(Lpcwstr lp_root_path_name, Lpwstr lp_volume_name_buffer, CULong n_volume_name_size, Lpdword lp_volume_serial_number, Lpdword lp_maximum_component_length, Lpdword lp_file_system_flags, Lpwstr lp_file_system_name_buffer, CULong n_file_system_name_size) @cname("GetVolumeInformationW");
extern fn Winbool local_file_time_to_file_time(Filetime* lp_local_file_time, Lpfiletime lp_file_time) @cname("LocalFileTimeToFileTime");
extern fn Winbool lock_file(void* h_file, CULong dw_file_offset_low, CULong dw_file_offset_high, CULong n_number_of_bytes_to_lock_low, CULong n_number_of_bytes_to_lock_high) @cname("LockFile");
extern fn Winbool read_file_ex(void* h_file, void* lp_buffer, CULong n_number_of_bytes_to_read, Lpoverlapped lp_overlapped, LpoverlappedCompletionRoutine lp_completion_routine) @cname("ReadFileEx");
extern fn Winbool set_file_time(void* h_file, Filetime* lp_creation_time, Filetime* lp_last_access_time, Filetime* lp_last_write_time) @cname("SetFileTime");
extern fn Winbool unlock_file(void* h_file, CULong dw_file_offset_low, CULong dw_file_offset_high, CULong n_number_of_bytes_to_unlock_low, CULong n_number_of_bytes_to_unlock_high) @cname("UnlockFile");
extern fn Winbool write_file_ex(void* h_file, void* lp_buffer, CULong n_number_of_bytes_to_write, Lpoverlapped lp_overlapped, LpoverlappedCompletionRoutine lp_completion_routine) @cname("WriteFileEx");
extern fn Dword get_final_path_name_by_handle_a(void* h_file, Lpstr lpsz_file_path, CULong cch_file_path, CULong dw_flags) @cname("GetFinalPathNameByHandleA");
extern fn Dword get_final_path_name_by_handle_w(void* h_file, Lpwstr lpsz_file_path, CULong cch_file_path, CULong dw_flags) @cname("GetFinalPathNameByHandleW");
extern fn Winbool create_directory_a(Lpcstr lp_path_name, LpsecurityAttributes lp_security_attributes) @cname("CreateDirectoryA");
extern fn Winbool create_directory_w(Lpcwstr lp_path_name, LpsecurityAttributes lp_security_attributes) @cname("CreateDirectoryW");
extern fn Winbool delete_file_a(Lpcstr lp_file_name) @cname("DeleteFileA");
extern fn Winbool delete_file_w(Lpcwstr lp_file_name) @cname("DeleteFileW");
extern fn Winbool find_close(void* h_find_file) @cname("FindClose");
extern fn Handle find_first_file_ex_a(Lpcstr lp_file_name, FindexInfoLevels f_info_level_id, void* lp_find_file_data, FindexSearchOps f_search_op, void* lp_search_filter, CULong dw_additional_flags) @cname("FindFirstFileExA");
extern fn Handle find_first_file_ex_w(Lpcwstr lp_file_name, FindexInfoLevels f_info_level_id, void* lp_find_file_data, FindexSearchOps f_search_op, void* lp_search_filter, CULong dw_additional_flags) @cname("FindFirstFileExW");
extern fn Winbool find_next_file_a(void* h_find_file, Lpwin32FindDataa lp_find_file_data) @cname("FindNextFileA");
extern fn Winbool find_next_file_w(void* h_find_file, Lpwin32FindDataw lp_find_file_data) @cname("FindNextFileW");
extern fn Winbool flush_file_buffers(void* h_file) @cname("FlushFileBuffers");
extern fn Winbool get_disk_free_space_ex_a(Lpcstr lp_directory_name, PulargeInteger lp_free_bytes_available_to_caller, PulargeInteger lp_total_number_of_bytes, PulargeInteger lp_total_number_of_free_bytes) @cname("GetDiskFreeSpaceExA");
extern fn Winbool get_disk_free_space_ex_w(Lpcwstr lp_directory_name, PulargeInteger lp_free_bytes_available_to_caller, PulargeInteger lp_total_number_of_bytes, PulargeInteger lp_total_number_of_free_bytes) @cname("GetDiskFreeSpaceExW");
extern fn Winbool get_file_attributes_ex_a(Lpcstr lp_file_name, GetFileexInfoLevels f_info_level_id, void* lp_file_information) @cname("GetFileAttributesExA");
extern fn Winbool get_file_attributes_ex_w(Lpcwstr lp_file_name, GetFileexInfoLevels f_info_level_id, void* lp_file_information) @cname("GetFileAttributesExW");
extern fn Winbool lock_file_ex(void* h_file, CULong dw_flags, CULong dw_reserved, CULong n_number_of_bytes_to_lock_low, CULong n_number_of_bytes_to_lock_high, Lpoverlapped lp_overlapped) @cname("LockFileEx");
extern fn Winbool read_file(void* h_file, void* lp_buffer, CULong n_number_of_bytes_to_read, Lpdword lp_number_of_bytes_read, Lpoverlapped lp_overlapped) @cname("ReadFile");
extern fn Winbool remove_directory_a(Lpcstr lp_path_name) @cname("RemoveDirectoryA");
extern fn Winbool remove_directory_w(Lpcwstr lp_path_name) @cname("RemoveDirectoryW");
extern fn Winbool set_end_of_file(void* h_file) @cname("SetEndOfFile");
extern fn Winbool set_file_attributes_a(Lpcstr lp_file_name, CULong dw_file_attributes) @cname("SetFileAttributesA");
extern fn Winbool set_file_attributes_w(Lpcwstr lp_file_name, CULong dw_file_attributes) @cname("SetFileAttributesW");
extern fn Winbool set_file_pointer_ex(void* h_file, LargeInteger li_distance_to_move, PlargeInteger lp_new_file_pointer, CULong dw_move_method) @cname("SetFilePointerEx");
extern fn Winbool unlock_file_ex(void* h_file, CULong dw_reserved, CULong n_number_of_bytes_to_unlock_low, CULong n_number_of_bytes_to_unlock_high, Lpoverlapped lp_overlapped) @cname("UnlockFileEx");
extern fn Winbool write_file(void* h_file, void* lp_buffer, CULong n_number_of_bytes_to_write, Lpdword lp_number_of_bytes_written, Lpoverlapped lp_overlapped) @cname("WriteFile");
extern fn Dword get_temp_path_a(CULong n_buffer_length, Lpstr lp_buffer) @cname("GetTempPathA");
extern fn Dword get_temp_path_w(CULong n_buffer_length, Lpwstr lp_buffer) @cname("GetTempPathW");
extern fn Hresult get_disk_space_information_a(Lpcstr root_path, DiskSpaceInformation* disk_space_info) @cname("GetDiskSpaceInformationA");
extern fn Hresult get_disk_space_information_w(Lpcwstr root_path, DiskSpaceInformation* disk_space_info) @cname("GetDiskSpaceInformationW");
extern fn Winbool set_file_information_by_handle(void* h_file, FileInfoByHandleClass file_information_class, void* lp_file_information, CULong dw_buffer_size) @cname("SetFileInformationByHandle");
extern fn Handle create_file2(Lpcwstr lp_file_name, CULong dw_desired_access, CULong dw_share_mode, CULong dw_creation_disposition, Lpcreatefile2ExtendedParameters p_create_ex_params) @cname("CreateFile2");
extern fn Dword get_temp_path2w(CULong buffer_length, Lpwstr buffer) @cname("GetTempPath2W");
extern fn Dword get_temp_path2a(CULong buffer_length, Lpstr buffer) @cname("GetTempPath2A");

