module winuser;

// Type Aliases & Callbacks
alias Hdwp = void*;
alias Menutemplatea = void;
alias Menutemplatew = void;
alias Lpmenutemplatea = void*;
alias Lpmenutemplatew = void*;
alias Menutemplate = void;
alias Lpmenutemplate = void*;
alias Graystringproc = fn Winbool();
alias Hookproc = fn Lresult(int, Wparam, Lparam);
alias Editwordbreakproca = fn int(Lpstr, int, int, int);
alias Editwordbreakprocw = fn int(Lpwstr, int, int, int);
alias Drawstateproc = fn Winbool(int, Lparam, Wparam, int, int);
alias Propenumproc = Propenumproca;
alias Propenumprocex = Propenumprocexa;
alias Editwordbreakproc = fn int(Lpstr, int, int, int);
alias Nameenumproca = fn Winbool(Lpstr, Lparam);
alias Nameenumprocw = fn Winbool(Lpwstr, Lparam);
alias Winstaenumproca = fn Winbool(Lpstr, Lparam);
alias Winstaenumprocw = fn Winbool(Lpwstr, Lparam);
alias Desktopenumproca = fn Winbool(Lpstr, Lparam);
alias Desktopenumprocw = fn Winbool(Lpwstr, Lparam);
alias Winstaenumproc = fn Winbool(Lpstr, Lparam);
alias Desktopenumproc = fn Winbool(Lpstr, Lparam);
alias CbtCreatewnda = TagcbtCreatewnda;
alias LpcbtCreatewnda = TagcbtCreatewnda*;
alias CbtCreatewndw = TagcbtCreatewndw;
alias LpcbtCreatewndw = TagcbtCreatewndw*;
alias CbtCreatewnd = CbtCreatewnda;
alias LpcbtCreatewnd = LpcbtCreatewnda;
alias Cbtactivatestruct = TagCBTACTIVATESTRUCT;
alias Lpcbtactivatestruct = TagCBTACTIVATESTRUCT*;
alias PwtssessionNotification = TagwtssessionNotification*;
alias Lpshellhookinfo = Void*;
alias Eventmsg = TagEVENTMSG;
alias Peventmsgmsg = TagEVENTMSG*;
alias Npeventmsgmsg = TagEVENTMSG*;
alias Lpeventmsgmsg = TagEVENTMSG*;
alias Peventmsg = TagEVENTMSG*;
alias Npeventmsg = TagEVENTMSG*;
alias Lpeventmsg = TagEVENTMSG*;
alias Cwpstruct = TagCWPSTRUCT;
alias Pcwpstruct = TagCWPSTRUCT*;
alias Npcwpstruct = TagCWPSTRUCT*;
alias Lpcwpstruct = TagCWPSTRUCT*;
alias Cwpretstruct = TagCWPRETSTRUCT;
alias Pcwpretstruct = TagCWPRETSTRUCT*;
alias Npcwpretstruct = TagCWPRETSTRUCT*;
alias Lpcwpretstruct = TagCWPRETSTRUCT*;
alias Lpkbdllhookstruct = TagKBDLLHOOKSTRUCT*;
alias Pkbdllhookstruct = TagKBDLLHOOKSTRUCT*;
alias Msllhookstruct = TagMSLLHOOKSTRUCT;
alias Lpmsllhookstruct = TagMSLLHOOKSTRUCT*;
alias Pmsllhookstruct = TagMSLLHOOKSTRUCT*;
alias Pdebughookinfo = TagDEBUGHOOKINFO*;
alias Npdebughookinfo = TagDEBUGHOOKINFO*;
alias Lpdebughookinfo = TagDEBUGHOOKINFO*;
alias Mousehookstruct = TagMOUSEHOOKSTRUCT;
alias Lpmousehookstruct = TagMOUSEHOOKSTRUCT*;
alias Pmousehookstruct = TagMOUSEHOOKSTRUCT*;
alias Mousehookstructex = TagMOUSEHOOKSTRUCTEX;
alias Lpmousehookstructex = TagMOUSEHOOKSTRUCTEX*;
alias Pmousehookstructex = TagMOUSEHOOKSTRUCTEX*;
alias Hardwarehookstruct = TagHARDWAREHOOKSTRUCT;
alias Lphardwarehookstruct = TagHARDWAREHOOKSTRUCT*;
alias Phardwarehookstruct = TagHARDWAREHOOKSTRUCT*;
alias Pmousemovepoint = TagMOUSEMOVEPOINT*;
alias Lpmousemovepoint = TagMOUSEMOVEPOINT*;
alias Puserobjectflags = TagUSEROBJECTFLAGS*;
alias Wndclassexa = TagWNDCLASSEXA;
alias Pwndclassexa = TagWNDCLASSEXA*;
alias Npwndclassexa = TagWNDCLASSEXA*;
alias Lpwndclassexa = TagWNDCLASSEXA*;
alias Wndclassexw = TagWNDCLASSEXW;
alias Pwndclassexw = TagWNDCLASSEXW*;
alias Npwndclassexw = TagWNDCLASSEXW*;
alias Lpwndclassexw = TagWNDCLASSEXW*;
alias Wndclassex = Wndclassexa;
alias Pwndclassex = Pwndclassexa;
alias Npwndclassex = Npwndclassexa;
alias Lpwndclassex = Lpwndclassexa;
alias Wndclassa = TagWNDCLASSA;
alias Pwndclassa = TagWNDCLASSA*;
alias Npwndclassa = TagWNDCLASSA*;
alias Lpwndclassa = TagWNDCLASSA*;
alias Wndclassw = TagWNDCLASSW;
alias Pwndclassw = TagWNDCLASSW*;
alias Npwndclassw = TagWNDCLASSW*;
alias Lpwndclassw = TagWNDCLASSW*;
alias Wndclass = Wndclassa;
alias Pwndclass = Pwndclassa;
alias Npwndclass = Npwndclassa;
alias Lpwndclass = Lpwndclassa;
alias Msg = TagMSG;
alias Pmsg = TagMSG*;
alias Npmsg = TagMSG*;
alias Lpmsg = TagMSG*;
alias Minmaxinfo = TagMINMAXINFO;
alias Pminmaxinfo = TagMINMAXINFO*;
alias Lpminmaxinfo = TagMINMAXINFO*;
alias Pcopydatastruct = TagCOPYDATASTRUCT*;
alias Mdinextmenu = TagMDINEXTMENU;
alias Pmdinextmenu = TagMDINEXTMENU*;
alias Lpmdinextmenu = TagMDINEXTMENU*;
alias PpowerbroadcastSetting = PowerbroadcastSetting*;
alias Windowpos = TagWINDOWPOS;
alias Lpwindowpos = TagWINDOWPOS*;
alias Pwindowpos = TagWINDOWPOS*;
alias NccalcsizeParams = TagnccalcsizeParams;
alias LpnccalcsizeParams = TagnccalcsizeParams*;
alias Trackmouseevent = TagTRACKMOUSEEVENT;
alias Lptrackmouseevent = TagTRACKMOUSEEVENT*;
alias Lpaccel = TagACCEL*;
alias Paintstruct = TagPAINTSTRUCT;
alias Ppaintstruct = TagPAINTSTRUCT*;
alias Nppaintstruct = TagPAINTSTRUCT*;
alias Lppaintstruct = TagPAINTSTRUCT*;
alias Createstructa = TagCREATESTRUCTA;
alias Lpcreatestructa = TagCREATESTRUCTA*;
alias Createstructw = TagCREATESTRUCTW;
alias Lpcreatestructw = TagCREATESTRUCTW*;
alias Createstruct = Createstructa;
alias Lpcreatestruct = Lpcreatestructa;
alias Windowplacement = TagWINDOWPLACEMENT;
alias Pwindowplacement = Windowplacement*;
alias Lpwindowplacement = Windowplacement*;
alias Nmhdr = TagNMHDR;
alias Lpnmhdr = Nmhdr*;
alias Lpstylestruct = TagSTYLESTRUCT*;
alias Pmeasureitemstruct = TagMEASUREITEMSTRUCT*;
alias Lpmeasureitemstruct = TagMEASUREITEMSTRUCT*;
alias Drawitemstruct = TagDRAWITEMSTRUCT;
alias Pdrawitemstruct = TagDRAWITEMSTRUCT*;
alias Lpdrawitemstruct = TagDRAWITEMSTRUCT*;
alias Deleteitemstruct = TagDELETEITEMSTRUCT;
alias Pdeleteitemstruct = TagDELETEITEMSTRUCT*;
alias Lpdeleteitemstruct = TagDELETEITEMSTRUCT*;
alias Compareitemstruct = TagCOMPAREITEMSTRUCT;
alias Pcompareitemstruct = TagCOMPAREITEMSTRUCT*;
alias Lpcompareitemstruct = TagCOMPAREITEMSTRUCT*;
alias Pbsminfo = Void*;
alias Hdevnotify = void*;
alias Phdevnotify = Hdevnotify*;
alias Hpowernotify = void*;
alias Phpowernotify = Hpowernotify*;
alias Pregisterclassnamew = fn Boolean(Lpcwstr);
alias Pflashwinfo = Void*;
alias Lpdlgtemplatea = Dlgtemplate*;
alias Lpdlgtemplatew = Dlgtemplate*;
alias Lpdlgtemplate = Lpdlgtemplatea;
alias Lpcdlgtemplatea = Dlgtemplate*;
alias Lpcdlgtemplatew = Dlgtemplate*;
alias Lpcdlgtemplate = Lpcdlgtemplatea;
alias Pdlgitemtemplatea = Dlgitemtemplate*;
alias Pdlgitemtemplatew = Dlgitemtemplate*;
alias Pdlgitemtemplate = Pdlgitemtemplatea;
alias Lpdlgitemtemplatea = Dlgitemtemplate*;
alias Lpdlgitemtemplatew = Dlgitemtemplate*;
alias Lpdlgitemtemplate = Lpdlgitemtemplatea;
alias Pmouseinput = TagMOUSEINPUT*;
alias Lpmouseinput = TagMOUSEINPUT*;
alias Pkeybdinput = TagKEYBDINPUT*;
alias Lpkeybdinput = TagKEYBDINPUT*;
alias Phardwareinput = TagHARDWAREINPUT*;
alias Lphardwareinput = TagHARDWAREINPUT*;
alias Pinput = TagINPUT*;
alias Lpinput = TagINPUT*;
alias Plastinputinfo = TagLASTINPUTINFO*;
alias Tpmparams = TagTPMPARAMS;
alias Menuinfo = TagMENUINFO;
alias Lpmenuinfo = TagMENUINFO*;
alias Lptpmparams = Tpmparams*;
alias Lpcmenuinfo = Menuinfo*;
alias Menugetobjectinfo = TagMENUGETOBJECTINFO;
alias Pmenugetobjectinfo = TagMENUGETOBJECTINFO*;
alias Menuiteminfoa = TagMENUITEMINFOA;
alias Lpmenuiteminfoa = TagMENUITEMINFOA*;
alias Menuiteminfow = TagMENUITEMINFOW;
alias Lpmenuiteminfow = TagMENUITEMINFOW*;
alias Menuiteminfo = Menuiteminfoa;
alias Lpmenuiteminfo = Lpmenuiteminfoa;
alias Lpcmenuiteminfoa = Menuiteminfoa*;
alias Lpcmenuiteminfow = Menuiteminfow*;
alias Lpcmenuiteminfo = Lpcmenuiteminfoa;
alias Dropstruct = TagDROPSTRUCT;
alias Pdropstruct = TagDROPSTRUCT*;
alias Lpdropstruct = TagDROPSTRUCT*;
alias Lpdrawtextparams = TagDRAWTEXTPARAMS*;
alias Helpinfo = TagHELPINFO;
alias Lphelpinfo = TagHELPINFO*;
alias Msgboxcallback = fn void(Lphelpinfo);
alias Msgboxparamsa = TagMSGBOXPARAMSA;
alias Pmsgboxparamsa = TagMSGBOXPARAMSA*;
alias Lpmsgboxparamsa = TagMSGBOXPARAMSA*;
alias Msgboxparamsw = TagMSGBOXPARAMSW;
alias Pmsgboxparamsw = TagMSGBOXPARAMSW*;
alias Lpmsgboxparamsw = TagMSGBOXPARAMSW*;
alias Msgboxparams = Msgboxparamsa;
alias Pmsgboxparams = Pmsgboxparamsa;
alias Lpmsgboxparams = Lpmsgboxparamsa;
alias Pmenuitemtemplateheader = Menuitemtemplateheader*;
alias Pmenuitemtemplate = Menuitemtemplate*;
alias Piconinfo = Iconinfo*;
alias Lpcursorshape = TagCURSORSHAPE*;
alias Piconinfoexa = Iconinfoexa*;
alias Piconinfoexw = Iconinfoexw*;
alias Iconinfoex = Iconinfoexa;
alias Piconinfoex = Piconinfoexa;
alias Lpscrollinfo = TagSCROLLINFO*;
alias Lpcscrollinfo = Scrollinfo*;
alias Lpmdicreatestructa = TagMDICREATESTRUCTA*;
alias Lpmdicreatestructw = TagMDICREATESTRUCTW*;
alias Mdicreatestruct = Mdicreatestructa;
alias Lpmdicreatestruct = Lpmdicreatestructa;
alias Lpclientcreatestruct = TagCLIENTCREATESTRUCT*;
alias Helppoly = CULong;
alias Pmultikeyhelpa = TagMULTIKEYHELPA*;
alias Lpmultikeyhelpa = TagMULTIKEYHELPA*;
alias Pmultikeyhelpw = TagMULTIKEYHELPW*;
alias Lpmultikeyhelpw = TagMULTIKEYHELPW*;
alias Multikeyhelp = Multikeyhelpa;
alias Pmultikeyhelp = Pmultikeyhelpa;
alias Lpmultikeyhelp = Lpmultikeyhelpa;
alias Phelpwininfoa = TagHELPWININFOA*;
alias Lphelpwininfoa = TagHELPWININFOA*;
alias Phelpwininfow = TagHELPWININFOW*;
alias Lphelpwininfow = TagHELPWININFOW*;
alias Helpwininfo = Helpwininfoa;
alias Phelpwininfo = Phelpwininfoa;
alias Lphelpwininfo = Lphelpwininfoa;
alias Phandedness = TagHANDEDNESS*;
alias Pminimizedmetrics = TagMINIMIZEDMETRICS*;
alias Lpminimizedmetrics = TagMINIMIZEDMETRICS*;
alias Lpanimationinfo = TagANIMATIONINFO*;
alias Lpserialkeysa = TagSERIALKEYSA*;
alias Lpserialkeysw = TagSERIALKEYSW*;
alias Serialkeys = Serialkeysa;
alias Lpserialkeys = Lpserialkeysa;
alias Lphighcontrasta = TagHIGHCONTRASTA*;
alias Lphighcontrastw = TagHIGHCONTRASTW*;
alias Highcontrast = Highcontrasta;
alias Lphighcontrast = Lphighcontrasta;
alias Lpfilterkeys = TagFILTERKEYS*;
alias Lpstickykeys = TagSTICKYKEYS*;
alias Lpmousekeys = TagMOUSEKEYS*;
alias Lpaccesstimeout = TagACCESSTIMEOUT*;
alias Lpsoundsentrya = TagSOUNDSENTRYA*;
alias Lpsoundsentryw = TagSOUNDSENTRYW*;
alias Soundsentry = Soundsentrya;
alias Lpsoundsentry = Lpsoundsentrya;
alias Lptogglekeys = TagTOGGLEKEYS*;
alias Monitorinfo = TagMONITORINFO;
alias Lpmonitorinfo = TagMONITORINFO*;
alias Lpaudiodescription = TagAUDIODESCRIPTION*;
alias Lpmonitorinfoexa = TagMONITORINFOEXA*;
alias Lpmonitorinfoexw = TagMONITORINFOEXW*;
alias Monitorinfoex = Monitorinfoexa;
alias Lpmonitorinfoex = Lpmonitorinfoexa;
alias Wineventproc = fn void(int, Dword, int, Long, Long, Dword, Dword);
alias Guithreadinfo = TagGUITHREADINFO;
alias Pguithreadinfo = TagGUITHREADINFO*;
alias Lpguithreadinfo = TagGUITHREADINFO*;
alias Cursorinfo = TagCURSORINFO;
alias Pcursorinfo = TagCURSORINFO*;
alias Lpcursorinfo = TagCURSORINFO*;
alias Windowinfo = TagWINDOWINFO;
alias Pwindowinfo = TagWINDOWINFO*;
alias Lpwindowinfo = TagWINDOWINFO*;
alias Titlebarinfo = TagTITLEBARINFO;
alias Ptitlebarinfo = TagTITLEBARINFO*;
alias Lptitlebarinfo = TagTITLEBARINFO*;
alias Menubarinfo = TagMENUBARINFO;
alias Pmenubarinfo = TagMENUBARINFO*;
alias Lpmenubarinfo = TagMENUBARINFO*;
alias Scrollbarinfo = TagSCROLLBARINFO;
alias Pscrollbarinfo = TagSCROLLBARINFO*;
alias Lpscrollbarinfo = TagSCROLLBARINFO*;
alias Comboboxinfo = TagCOMBOBOXINFO;
alias Pcomboboxinfo = TagCOMBOBOXINFO*;
alias Lpcomboboxinfo = TagCOMBOBOXINFO*;
alias Alttabinfo = TagALTTABINFO;
alias Palttabinfo = TagALTTABINFO*;
alias Lpalttabinfo = TagALTTABINFO*;
alias Prawinputheader = TagRAWINPUTHEADER*;
alias Lprawinputheader = TagRAWINPUTHEADER*;
alias Prawmouse = TagRAWMOUSE*;
alias Lprawmouse = TagRAWMOUSE*;
alias Prawkeyboard = TagRAWKEYBOARD*;
alias Lprawkeyboard = TagRAWKEYBOARD*;
alias Prawhid = TagRAWHID*;
alias Lprawhid = TagRAWHID*;
alias Prawinput = TagRAWINPUT*;
alias Lprawinput = TagRAWINPUT*;
alias PridDeviceInfoMouse = TagridDeviceInfoMouse*;
alias PridDeviceInfoKeyboard = TagridDeviceInfoKeyboard*;
alias PridDeviceInfoHid = TagridDeviceInfoHid*;
alias PridDeviceInfo = TagridDeviceInfo*;
alias LpridDeviceInfo = TagridDeviceInfo*;
alias Rawinputdevice = TagRAWINPUTDEVICE;
alias Prawinputdevice = TagRAWINPUTDEVICE*;
alias Lprawinputdevice = TagRAWINPUTDEVICE*;
alias Pcrawinputdevice = Rawinputdevice*;
alias Prawinputdevicelist = TagRAWINPUTDEVICELIST*;
alias Word = ushort;
alias UintSR = uint;
alias Lcid = CULong;
alias Lparam = long;
alias PsecurityInformation = Dword*;
alias Byte = char;
alias Char = char;
alias Uint = uint;
alias Lpcguid = Guid*;
alias Dword = CULong;
alias Lresult = long;
alias Long = CLong;
alias Hwinsta = void*;
alias Ulong = CULong;
alias Boolean = char;
alias Lpcstr = Char*;
alias PsecurityDescriptor = void*;
alias Lpcwstr = Wchar*;
alias Puint = uint*;
alias Hinstance = void*;
alias Lpbyte = Byte*;
alias UlongPtr = ulong;
alias DwordPtr = ulong;
alias Lpword = Word*;
alias Lpwstr = Wchar*;
alias Pvoid = void*;
alias Handle = void*;
alias Lpdword = Dword*;
alias LpsecurityAttributes = SecurityAttributes*;
alias Wchar = ushort;
alias Atom = ushort;
alias Lpvoid = void*;
alias Lpstr = Char*;
alias Pbyte = Byte*;
alias Int = int;
alias Ushort = ushort;
alias Hkl = void*;
alias Short = short;
alias Winbool = int;
alias AccessMask = CULong;
alias Uchar = char;
alias Wparam = ulong;

enum DialogControlDpiChangeBehaviors
{
	DCDC_DEFAULT,
	DCDC_DISABLE_FONT_UPDATE,
	DCDC_DISABLE_RELAYOUT
}

constdef DialogDpiChangeBehaviors : int
{
	DDC_DEFAULT = 0,
	DDC_DISABLE_ALL = 1,
	DDC_DISABLE_RESIZE = 2,
	DDC_DISABLE_CONTROL_RELAYOUT = 4
}

enum TagHANDEDNESS
{
	HANDEDNESS_LEFT,
	HANDEDNESS_RIGHT
}

enum Handedness
{
	HANDEDNESS_LEFT,
	HANDEDNESS_RIGHT
}

struct TagCREATESTRUCTA { void* _unused; }

struct TagcbtCreatewnda { void* _unused; }

struct TagCREATESTRUCTW { void* _unused; }

struct TagcbtCreatewndw { void* _unused; }

struct TagCBTACTIVATESTRUCT { void* _unused; }

struct TagwtssessionNotification
{
	CULong cb_size;
	CULong dw_session_id;
}

struct WtssessionNotification
{
	CULong cb_size;
	CULong dw_session_id;
}

struct Shellhookinfo { void* _unused; }

struct TagEVENTMSG { void* _unused; }

struct TagCWPSTRUCT { void* _unused; }

struct TagCWPRETSTRUCT { void* _unused; }

struct TagKBDLLHOOKSTRUCT
{
	CULong vk_code;
	CULong scan_code;
	CULong flags;
	CULong time;
	ulong dw_extra_info;
}

struct Kbdllhookstruct
{
	CULong vk_code;
	CULong scan_code;
	CULong flags;
	CULong time;
	ulong dw_extra_info;
}

struct TagMSLLHOOKSTRUCT { void* _unused; }

struct TagDEBUGHOOKINFO
{
	CULong id_thread;
	CULong id_thread_installer;
	long l_param;
	ulong w_param;
	int code;
}

struct Debughookinfo
{
	CULong id_thread;
	CULong id_thread_installer;
	long l_param;
	ulong w_param;
	int code;
}

struct TagMOUSEHOOKSTRUCT { void* _unused; }

struct TagMOUSEHOOKSTRUCTEX { void* _unused; }

struct TagHARDWAREHOOKSTRUCT { void* _unused; }

struct TagMOUSEMOVEPOINT
{
	int x;
	int y;
	CULong time;
	ulong dw_extra_info;
}

struct Mousemovepoint
{
	int x;
	int y;
	CULong time;
	ulong dw_extra_info;
}

struct TagUSEROBJECTFLAGS
{
	int f_inherit;
	int f_reserved;
	CULong dw_flags;
}

struct Userobjectflags
{
	int f_inherit;
	int f_reserved;
	CULong dw_flags;
}

struct TagWNDCLASSEXA { void* _unused; }

struct TagWNDCLASSEXW { void* _unused; }

struct TagWNDCLASSA { void* _unused; }

struct TagWNDCLASSW { void* _unused; }

struct TagMSG { void* _unused; }

struct TagMINMAXINFO { void* _unused; }

struct TagCOPYDATASTRUCT
{
	ulong dw_data;
	CULong cb_data;
	void* lp_data;
}

struct Copydatastruct
{
	ulong dw_data;
	CULong cb_data;
	void* lp_data;
}

struct TagMDINEXTMENU { void* _unused; }

struct PowerbroadcastSetting
{
	Guid power_setting;
	CULong data_length;
	Uchar[1] data;
}

struct TagWINDOWPOS { void* _unused; }

struct TagnccalcsizeParams { void* _unused; }

struct TagTRACKMOUSEEVENT { void* _unused; }

struct TagACCEL
{
	char f_virt;
	ushort key;
	ushort cmd;
}

struct Accel
{
	char f_virt;
	ushort key;
	ushort cmd;
}

struct TagPAINTSTRUCT { void* _unused; }

struct TagWINDOWPLACEMENT { void* _unused; }

struct TagNMHDR { void* _unused; }

struct TagSTYLESTRUCT
{
	CULong style_old;
	CULong style_new;
}

struct Stylestruct
{
	CULong style_old;
	CULong style_new;
}

struct TagMEASUREITEMSTRUCT
{
	uint ctl_type;
	uint ctl_id;
	uint item_id;
	uint item_width;
	uint item_height;
	ulong item_data;
}

struct Measureitemstruct
{
	uint ctl_type;
	uint ctl_id;
	uint item_id;
	uint item_width;
	uint item_height;
	ulong item_data;
}

struct TagDRAWITEMSTRUCT { void* _unused; }

struct TagDELETEITEMSTRUCT { void* _unused; }

struct TagCOMPAREITEMSTRUCT { void* _unused; }

struct Bsminfo { void* _unused; }

struct Flashwinfo { void* _unused; }

struct Dlgtemplate
{
	CULong style;
	CULong dw_extended_style;
	ushort cdit;
	short x;
	short y;
	short cx;
	short cy;
}

struct Dlgitemtemplate
{
	CULong style;
	CULong dw_extended_style;
	short x;
	short y;
	short cx;
	short cy;
	ushort id;
}

struct TagMOUSEINPUT
{
	CLong dx;
	CLong dy;
	CULong mouse_data;
	CULong dw_flags;
	CULong time;
	ulong dw_extra_info;
}

struct Mouseinput
{
	CLong dx;
	CLong dy;
	CULong mouse_data;
	CULong dw_flags;
	CULong time;
	ulong dw_extra_info;
}

struct TagKEYBDINPUT
{
	ushort w_vk;
	ushort w_scan;
	CULong dw_flags;
	CULong time;
	ulong dw_extra_info;
}

struct Keybdinput
{
	ushort w_vk;
	ushort w_scan;
	CULong dw_flags;
	CULong time;
	ulong dw_extra_info;
}

struct TagHARDWAREINPUT
{
	CULong u_msg;
	ushort w_param_l;
	ushort w_param_h;
}

struct Hardwareinput
{
	CULong u_msg;
	ushort w_param_l;
	ushort w_param_h;
}

struct TagINPUT
{
	CULong type;
	void* _field2;
}

struct Input
{
	CULong type;
	void* _field2;
}

struct TagLASTINPUTINFO
{
	uint cb_size;
	CULong dw_time;
}

struct Lastinputinfo
{
	uint cb_size;
	CULong dw_time;
}

struct TagTPMPARAMS { void* _unused; }

struct TagMENUINFO { void* _unused; }

struct TagMENUGETOBJECTINFO { void* _unused; }

struct TagMENUITEMINFOA { void* _unused; }

struct TagMENUITEMINFOW { void* _unused; }

struct TagDROPSTRUCT { void* _unused; }

struct TagDRAWTEXTPARAMS
{
	uint cb_size;
	int i_tab_length;
	int i_left_margin;
	int i_right_margin;
	uint ui_length_drawn;
}

struct Drawtextparams
{
	uint cb_size;
	int i_tab_length;
	int i_left_margin;
	int i_right_margin;
	uint ui_length_drawn;
}

struct TagHELPINFO { void* _unused; }

struct TagMSGBOXPARAMSA { void* _unused; }

struct TagMSGBOXPARAMSW { void* _unused; }

struct Menuitemtemplateheader
{
	ushort version_number;
	ushort offset;
}

struct Menuitemtemplate
{
	ushort mt_option;
	ushort mt_id;
	Wchar[1] mt_string;
}

struct Iconinfo { void* _unused; }

struct TagCURSORSHAPE
{
	int x_hot_spot;
	int y_hot_spot;
	int cx;
	int cy;
	int cb_width;
	char planes;
	char bits_pixel;
}

struct Cursorshape
{
	int x_hot_spot;
	int y_hot_spot;
	int cx;
	int cy;
	int cb_width;
	char planes;
	char bits_pixel;
}

struct Iconinfoexa { void* _unused; }

struct Iconinfoexw { void* _unused; }

struct TagSCROLLINFO
{
	uint cb_size;
	uint f_mask;
	int n_min;
	int n_max;
	uint n_page;
	int n_pos;
	int n_track_pos;
}

struct Scrollinfo
{
	uint cb_size;
	uint f_mask;
	int n_min;
	int n_max;
	uint n_page;
	int n_pos;
	int n_track_pos;
}

struct TagMDICREATESTRUCTA
{
	Lpcstr sz_class;
	Lpcstr sz_title;
	void* h_owner;
	int x;
	int y;
	int cx;
	int cy;
	CULong style;
	long l_param;
}

struct Mdicreatestructa
{
	Lpcstr sz_class;
	Lpcstr sz_title;
	void* h_owner;
	int x;
	int y;
	int cx;
	int cy;
	CULong style;
	long l_param;
}

struct TagMDICREATESTRUCTW
{
	Lpcwstr sz_class;
	Lpcwstr sz_title;
	void* h_owner;
	int x;
	int y;
	int cx;
	int cy;
	CULong style;
	long l_param;
}

struct Mdicreatestructw
{
	Lpcwstr sz_class;
	Lpcwstr sz_title;
	void* h_owner;
	int x;
	int y;
	int cx;
	int cy;
	CULong style;
	long l_param;
}

struct TagCLIENTCREATESTRUCT
{
	void* h_window_menu;
	uint id_first_child;
}

struct Clientcreatestruct
{
	void* h_window_menu;
	uint id_first_child;
}

struct TagMULTIKEYHELPA
{
	CULong mk_size;
	char mk_keylist;
	Char[1] sz_keyphrase;
}

struct Multikeyhelpa
{
	CULong mk_size;
	char mk_keylist;
	Char[1] sz_keyphrase;
}

struct TagMULTIKEYHELPW
{
	CULong mk_size;
	ushort mk_keylist;
	Wchar[1] sz_keyphrase;
}

struct Multikeyhelpw
{
	CULong mk_size;
	ushort mk_keylist;
	Wchar[1] sz_keyphrase;
}

struct TagHELPWININFOA
{
	int w_struct_size;
	int x;
	int y;
	int dx;
	int dy;
	int w_max;
	Char[2] rgch_member;
}

struct Helpwininfoa
{
	int w_struct_size;
	int x;
	int y;
	int dx;
	int dy;
	int w_max;
	Char[2] rgch_member;
}

struct TagHELPWININFOW
{
	int w_struct_size;
	int x;
	int y;
	int dx;
	int dy;
	int w_max;
	Wchar[2] rgch_member;
}

struct Helpwininfow
{
	int w_struct_size;
	int x;
	int y;
	int dx;
	int dy;
	int w_max;
	Wchar[2] rgch_member;
}

struct TagMINIMIZEDMETRICS
{
	uint cb_size;
	int i_width;
	int i_horz_gap;
	int i_vert_gap;
	int i_arrange;
}

struct Minimizedmetrics
{
	uint cb_size;
	int i_width;
	int i_horz_gap;
	int i_vert_gap;
	int i_arrange;
}

struct TagANIMATIONINFO
{
	uint cb_size;
	int i_min_animate;
}

struct Animationinfo
{
	uint cb_size;
	int i_min_animate;
}

struct TagSERIALKEYSA
{
	uint cb_size;
	CULong dw_flags;
	Lpstr lpsz_active_port;
	Lpstr lpsz_port;
	uint i_baud_rate;
	uint i_port_state;
	uint i_active;
}

struct Serialkeysa
{
	uint cb_size;
	CULong dw_flags;
	Lpstr lpsz_active_port;
	Lpstr lpsz_port;
	uint i_baud_rate;
	uint i_port_state;
	uint i_active;
}

struct TagSERIALKEYSW
{
	uint cb_size;
	CULong dw_flags;
	Lpwstr lpsz_active_port;
	Lpwstr lpsz_port;
	uint i_baud_rate;
	uint i_port_state;
	uint i_active;
}

struct Serialkeysw
{
	uint cb_size;
	CULong dw_flags;
	Lpwstr lpsz_active_port;
	Lpwstr lpsz_port;
	uint i_baud_rate;
	uint i_port_state;
	uint i_active;
}

struct TagHIGHCONTRASTA
{
	uint cb_size;
	CULong dw_flags;
	Lpstr lpsz_default_scheme;
}

struct Highcontrasta
{
	uint cb_size;
	CULong dw_flags;
	Lpstr lpsz_default_scheme;
}

struct TagHIGHCONTRASTW
{
	uint cb_size;
	CULong dw_flags;
	Lpwstr lpsz_default_scheme;
}

struct Highcontrastw
{
	uint cb_size;
	CULong dw_flags;
	Lpwstr lpsz_default_scheme;
}

struct TagFILTERKEYS
{
	uint cb_size;
	CULong dw_flags;
	CULong i_wait_m_sec;
	CULong i_delay_m_sec;
	CULong i_repeat_m_sec;
	CULong i_bounce_m_sec;
}

struct Filterkeys
{
	uint cb_size;
	CULong dw_flags;
	CULong i_wait_m_sec;
	CULong i_delay_m_sec;
	CULong i_repeat_m_sec;
	CULong i_bounce_m_sec;
}

struct TagSTICKYKEYS
{
	uint cb_size;
	CULong dw_flags;
}

struct Stickykeys
{
	uint cb_size;
	CULong dw_flags;
}

struct TagMOUSEKEYS
{
	uint cb_size;
	CULong dw_flags;
	CULong i_max_speed;
	CULong i_time_to_max_speed;
	CULong i_ctrl_speed;
	CULong dw_reserved1;
	CULong dw_reserved2;
}

struct Mousekeys
{
	uint cb_size;
	CULong dw_flags;
	CULong i_max_speed;
	CULong i_time_to_max_speed;
	CULong i_ctrl_speed;
	CULong dw_reserved1;
	CULong dw_reserved2;
}

struct TagACCESSTIMEOUT
{
	uint cb_size;
	CULong dw_flags;
	CULong i_time_out_m_sec;
}

struct Accesstimeout
{
	uint cb_size;
	CULong dw_flags;
	CULong i_time_out_m_sec;
}

struct TagSOUNDSENTRYA
{
	uint cb_size;
	CULong dw_flags;
	CULong i_fs_text_effect;
	CULong i_fs_text_effect_m_sec;
	CULong i_fs_text_effect_color_bits;
	CULong i_fs_graf_effect;
	CULong i_fs_graf_effect_m_sec;
	CULong i_fs_graf_effect_color;
	CULong i_windows_effect;
	CULong i_windows_effect_m_sec;
	Lpstr lpsz_windows_effect_dll;
	CULong i_windows_effect_ordinal;
}

struct Soundsentrya
{
	uint cb_size;
	CULong dw_flags;
	CULong i_fs_text_effect;
	CULong i_fs_text_effect_m_sec;
	CULong i_fs_text_effect_color_bits;
	CULong i_fs_graf_effect;
	CULong i_fs_graf_effect_m_sec;
	CULong i_fs_graf_effect_color;
	CULong i_windows_effect;
	CULong i_windows_effect_m_sec;
	Lpstr lpsz_windows_effect_dll;
	CULong i_windows_effect_ordinal;
}

struct TagSOUNDSENTRYW
{
	uint cb_size;
	CULong dw_flags;
	CULong i_fs_text_effect;
	CULong i_fs_text_effect_m_sec;
	CULong i_fs_text_effect_color_bits;
	CULong i_fs_graf_effect;
	CULong i_fs_graf_effect_m_sec;
	CULong i_fs_graf_effect_color;
	CULong i_windows_effect;
	CULong i_windows_effect_m_sec;
	Lpwstr lpsz_windows_effect_dll;
	CULong i_windows_effect_ordinal;
}

struct Soundsentryw
{
	uint cb_size;
	CULong dw_flags;
	CULong i_fs_text_effect;
	CULong i_fs_text_effect_m_sec;
	CULong i_fs_text_effect_color_bits;
	CULong i_fs_graf_effect;
	CULong i_fs_graf_effect_m_sec;
	CULong i_fs_graf_effect_color;
	CULong i_windows_effect;
	CULong i_windows_effect_m_sec;
	Lpwstr lpsz_windows_effect_dll;
	CULong i_windows_effect_ordinal;
}

struct TagTOGGLEKEYS
{
	uint cb_size;
	CULong dw_flags;
}

struct Togglekeys
{
	uint cb_size;
	CULong dw_flags;
}

struct TagMONITORINFO { void* _unused; }

struct TagAUDIODESCRIPTION
{
	uint cb_size;
	int enabled;
	CULong locale;
}

struct Audiodescription
{
	uint cb_size;
	int enabled;
	CULong locale;
}

struct TagMONITORINFOEXA
{
	Char[32] sz_device;
}

struct Monitorinfoexa
{
	Char[32] sz_device;
}

struct TagMONITORINFOEXW
{
	Wchar[32] sz_device;
}

struct Monitorinfoexw
{
	Wchar[32] sz_device;
}

struct TagGUITHREADINFO { void* _unused; }

struct TagCURSORINFO { void* _unused; }

struct TagWINDOWINFO { void* _unused; }

struct TagTITLEBARINFO { void* _unused; }

struct TagMENUBARINFO { void* _unused; }

struct TagSCROLLBARINFO { void* _unused; }

struct TagCOMBOBOXINFO { void* _unused; }

struct TagALTTABINFO { void* _unused; }

struct Hrawinput
{
	int unused;
}

struct TagRAWINPUTHEADER
{
	CULong dw_type;
	CULong dw_size;
	void* h_device;
	ulong w_param;
}

struct Rawinputheader
{
	CULong dw_type;
	CULong dw_size;
	void* h_device;
	ulong w_param;
}

struct TagRAWMOUSE
{
	ushort us_flags;
	void* _field2;
	CULong ul_raw_buttons;
	CLong l_last_x;
	CLong l_last_y;
	CULong ul_extra_information;
}

struct Rawmouse
{
	ushort us_flags;
	void* _field2;
	CULong ul_raw_buttons;
	CLong l_last_x;
	CLong l_last_y;
	CULong ul_extra_information;
}

struct TagRAWKEYBOARD
{
	ushort make_code;
	ushort flags;
	ushort reserved;
	ushort v_key;
	uint message;
	CULong extra_information;
}

struct Rawkeyboard
{
	ushort make_code;
	ushort flags;
	ushort reserved;
	ushort v_key;
	uint message;
	CULong extra_information;
}

struct TagRAWHID
{
	CULong dw_size_hid;
	CULong dw_count;
	Byte[1] b_raw_data;
}

struct Rawhid
{
	CULong dw_size_hid;
	CULong dw_count;
	Byte[1] b_raw_data;
}

struct TagRAWINPUT
{
	Rawinputheader header;
	void* data;
}

struct Rawinput
{
	Rawinputheader header;
	void* data;
}

struct TagridDeviceInfoMouse
{
	CULong dw_id;
	CULong dw_number_of_buttons;
	CULong dw_sample_rate;
	int f_has_horizontal_wheel;
}

struct RidDeviceInfoMouse
{
	CULong dw_id;
	CULong dw_number_of_buttons;
	CULong dw_sample_rate;
	int f_has_horizontal_wheel;
}

struct TagridDeviceInfoKeyboard
{
	CULong dw_type;
	CULong dw_sub_type;
	CULong dw_keyboard_mode;
	CULong dw_number_of_function_keys;
	CULong dw_number_of_indicators;
	CULong dw_number_of_keys_total;
}

struct RidDeviceInfoKeyboard
{
	CULong dw_type;
	CULong dw_sub_type;
	CULong dw_keyboard_mode;
	CULong dw_number_of_function_keys;
	CULong dw_number_of_indicators;
	CULong dw_number_of_keys_total;
}

struct TagridDeviceInfoHid
{
	CULong dw_vendor_id;
	CULong dw_product_id;
	CULong dw_version_number;
	ushort us_usage_page;
	ushort us_usage;
}

struct RidDeviceInfoHid
{
	CULong dw_vendor_id;
	CULong dw_product_id;
	CULong dw_version_number;
	ushort us_usage_page;
	ushort us_usage;
}

struct TagridDeviceInfo
{
	CULong cb_size;
	CULong dw_type;
	void* _field3;
}

struct RidDeviceInfo
{
	CULong cb_size;
	CULong dw_type;
	void* _field3;
}

struct TagRAWINPUTDEVICE { void* _unused; }

struct TagRAWINPUTDEVICELIST
{
	void* h_device;
	CULong dw_type;
}

struct Rawinputdevicelist
{
	void* h_device;
	CULong dw_type;
}

struct TaginputTransform
{
	void* _field1;
}

struct InputTransform
{
	void* _field1;
}

struct Guid
{
	CULong data1;
	ushort data2;
	ushort data3;
	char[8] data4;
}

struct Wndproc { void* _unused; }

struct Wndenumproc { void* _unused; }

struct Propenumproca { void* _unused; }

struct Propenumprocexa { void* _unused; }

struct Void { void* _unused; }

struct SecurityAttributes { void* _unused; }

// Functions
extern fn int wvsprintf_a(Lpstr arg0, Lpcstr arg1, CVaList arglist) @cname("wvsprintfA");
extern fn int wvsprintf_w(Lpwstr arg0, Lpcwstr arg1, CVaList arglist) @cname("wvsprintfW");
extern fn int wsprintf_a(Lpstr arg0, Lpcstr arg1, ...) @cname("wsprintfA");
extern fn int wsprintf_w(Lpwstr arg0, Lpcwstr arg1, ...) @cname("wsprintfW");
extern fn Hkl load_keyboard_layout_a(Lpcstr pwsz_klid, uint flags) @cname("LoadKeyboardLayoutA");
extern fn Hkl load_keyboard_layout_w(Lpcwstr pwsz_klid, uint flags) @cname("LoadKeyboardLayoutW");
extern fn Hkl activate_keyboard_layout(Hkl hkl, uint flags) @cname("ActivateKeyboardLayout");
extern fn int to_unicode_ex(uint w_virt_key, uint w_scan_code, Byte* lp_key_state, Lpwstr pwsz_buff, int cch_buff, uint w_flags, Hkl dwhkl) @cname("ToUnicodeEx");
extern fn Winbool unload_keyboard_layout(Hkl hkl) @cname("UnloadKeyboardLayout");
extern fn Winbool get_keyboard_layout_name_a(Lpstr pwsz_klid) @cname("GetKeyboardLayoutNameA");
extern fn Winbool get_keyboard_layout_name_w(Lpwstr pwsz_klid) @cname("GetKeyboardLayoutNameW");
extern fn int get_keyboard_layout_list(int n_buff, Hkl* lp_list) @cname("GetKeyboardLayoutList");
extern fn Hkl get_keyboard_layout(CULong id_thread) @cname("GetKeyboardLayout");
extern fn int get_mouse_move_points_ex(uint cb_size, Lpmousemovepoint lppt, Lpmousemovepoint lppt_buf, int n_buf_points, CULong resolution) @cname("GetMouseMovePointsEx");
extern fn Winbool enum_desktops_a(Hwinsta hwinsta, Desktopenumproca lp_enum_func, long l_param) @cname("EnumDesktopsA");
extern fn Winbool enum_desktops_w(Hwinsta hwinsta, Desktopenumprocw lp_enum_func, long l_param) @cname("EnumDesktopsW");
extern fn Hwinsta create_window_station_a(Lpcstr lpwinsta, CULong dw_flags, CULong dw_desired_access, LpsecurityAttributes lpsa) @cname("CreateWindowStationA");
extern fn Hwinsta create_window_station_w(Lpcwstr lpwinsta, CULong dw_flags, CULong dw_desired_access, LpsecurityAttributes lpsa) @cname("CreateWindowStationW");
extern fn Hwinsta open_window_station_a(Lpcstr lpsz_win_sta, int f_inherit, CULong dw_desired_access) @cname("OpenWindowStationA");
extern fn Hwinsta open_window_station_w(Lpcwstr lpsz_win_sta, int f_inherit, CULong dw_desired_access) @cname("OpenWindowStationW");
extern fn Winbool enum_window_stations_a(Winstaenumproca lp_enum_func, long l_param) @cname("EnumWindowStationsA");
extern fn Winbool enum_window_stations_w(Winstaenumprocw lp_enum_func, long l_param) @cname("EnumWindowStationsW");
extern fn Winbool close_window_station(Hwinsta h_win_sta) @cname("CloseWindowStation");
extern fn Winbool set_process_window_station(Hwinsta h_win_sta) @cname("SetProcessWindowStation");
extern fn Hwinsta get_process_window_station() @cname("GetProcessWindowStation");
extern fn Winbool set_user_object_security(void* h_obj, PsecurityInformation p_si_requested, void* p_sid) @cname("SetUserObjectSecurity");
extern fn Winbool get_user_object_security(void* h_obj, PsecurityInformation p_si_requested, void* p_sid, CULong n_length, Lpdword lpn_length_needed) @cname("GetUserObjectSecurity");
extern fn Winbool get_user_object_information_a(void* h_obj, int n_index, void* pv_info, CULong n_length, Lpdword lpn_length_needed) @cname("GetUserObjectInformationA");
extern fn Winbool get_user_object_information_w(void* h_obj, int n_index, void* pv_info, CULong n_length, Lpdword lpn_length_needed) @cname("GetUserObjectInformationW");
extern fn Winbool set_user_object_information_a(void* h_obj, int n_index, void* pv_info, CULong n_length) @cname("SetUserObjectInformationA");
extern fn Winbool set_user_object_information_w(void* h_obj, int n_index, void* pv_info, CULong n_length) @cname("SetUserObjectInformationW");
extern fn void disable_process_windows_ghosting() @cname("DisableProcessWindowsGhosting");
extern fn Uint register_window_message_a(Lpcstr lp_string) @cname("RegisterWindowMessageA");
extern fn Uint register_window_message_w(Lpcwstr lp_string) @cname("RegisterWindowMessageW");
extern fn Winbool track_mouse_event(Lptrackmouseevent lp_event_track) @cname("TrackMouseEvent");
extern fn Winbool translate_message(Msg* lp_msg) @cname("TranslateMessage");
extern fn Lresult dispatch_message_a(Msg* lp_msg) @cname("DispatchMessageA");
extern fn Lresult dispatch_message_w(Msg* lp_msg) @cname("DispatchMessageW");
extern fn Winbool set_message_queue(int c_messages_max) @cname("SetMessageQueue");
extern fn Winbool exit_windows_ex(uint u_flags, CULong dw_reason) @cname("ExitWindowsEx");
extern fn Winbool swap_mouse_button(int f_swap) @cname("SwapMouseButton");
extern fn Dword get_message_pos() @cname("GetMessagePos");
extern fn Long get_message_time() @cname("GetMessageTime");
extern fn Lparam get_message_extra_info() @cname("GetMessageExtraInfo");
extern fn Dword get_unpredicted_message_pos() @cname("GetUnpredictedMessagePos");
extern fn Winbool is_wow64_message() @cname("IsWow64Message");
extern fn Lparam set_message_extra_info(long l_param) @cname("SetMessageExtraInfo");
extern fn CLong broadcast_system_message_ex_a(CULong flags, Lpdword lp_info, uint msg, ulong w_param, long l_param, Pbsminfo pbsm_info) @cname("BroadcastSystemMessageExA");
extern fn CLong broadcast_system_message_ex_w(CULong flags, Lpdword lp_info, uint msg, ulong w_param, long l_param, Pbsminfo pbsm_info) @cname("BroadcastSystemMessageExW");
extern fn CLong broadcast_system_message_a(CULong flags, Lpdword lp_info, uint msg, ulong w_param, long l_param) @cname("BroadcastSystemMessageA");
extern fn CLong broadcast_system_message_w(CULong flags, Lpdword lp_info, uint msg, ulong w_param, long l_param) @cname("BroadcastSystemMessageW");
extern fn Hpowernotify register_power_setting_notification(void* h_recipient, Lpcguid power_setting_guid, CULong flags) @cname("RegisterPowerSettingNotification");
extern fn Winbool unregister_power_setting_notification(void* handle) @cname("UnregisterPowerSettingNotification");
extern fn Hpowernotify register_suspend_resume_notification(void* h_recipient, CULong flags) @cname("RegisterSuspendResumeNotification");
extern fn Winbool unregister_suspend_resume_notification(void* handle) @cname("UnregisterSuspendResumeNotification");
extern fn Winbool post_thread_message_a(CULong id_thread, uint msg, ulong w_param, long l_param) @cname("PostThreadMessageA");
extern fn Winbool post_thread_message_w(CULong id_thread, uint msg, ulong w_param, long l_param) @cname("PostThreadMessageW");
extern fn Winbool attach_thread_input(CULong id_attach, CULong id_attach_to, int f_attach) @cname("AttachThreadInput");
extern fn Winbool reply_message(long l_result) @cname("ReplyMessage");
extern fn Winbool wait_message() @cname("WaitMessage");
extern fn Dword wait_for_input_idle(void* h_process, CULong dw_milliseconds) @cname("WaitForInputIdle");
extern fn void post_quit_message(int n_exit_code) @cname("PostQuitMessage");
extern fn Winbool in_send_message() @cname("InSendMessage");
extern fn Dword in_send_message_ex(void* lp_reserved) @cname("InSendMessageEx");
extern fn Uint get_double_click_time() @cname("GetDoubleClickTime");
extern fn Winbool set_double_click_time(uint arg0) @cname("SetDoubleClickTime");
extern fn Atom register_class_a(Wndclassa* lp_wnd_class) @cname("RegisterClassA");
extern fn Atom register_class_w(Wndclassw* lp_wnd_class) @cname("RegisterClassW");
extern fn Winbool unregister_class_a(Lpcstr lp_class_name, Hinstance h_instance) @cname("UnregisterClassA");
extern fn Winbool unregister_class_w(Lpcwstr lp_class_name, Hinstance h_instance) @cname("UnregisterClassW");
extern fn Winbool get_class_info_a(Hinstance h_instance, Lpcstr lp_class_name, Lpwndclassa lp_wnd_class) @cname("GetClassInfoA");
extern fn Winbool get_class_info_w(Hinstance h_instance, Lpcwstr lp_class_name, Lpwndclassw lp_wnd_class) @cname("GetClassInfoW");
extern fn Atom register_class_ex_a(Wndclassexa* arg0) @cname("RegisterClassExA");
extern fn Atom register_class_ex_w(Wndclassexw* arg0) @cname("RegisterClassExW");
extern fn Winbool get_class_info_ex_a(Hinstance h_instance, Lpcstr lpsz_class, Lpwndclassexa lpwcx) @cname("GetClassInfoExA");
extern fn Winbool get_class_info_ex_w(Hinstance h_instance, Lpcwstr lpsz_class, Lpwndclassexw lpwcx) @cname("GetClassInfoExW");
extern fn Hdevnotify register_device_notification_a(void* h_recipient, void* notification_filter, CULong flags) @cname("RegisterDeviceNotificationA");
extern fn Hdevnotify register_device_notification_w(void* h_recipient, void* notification_filter, CULong flags) @cname("RegisterDeviceNotificationW");
extern fn Winbool unregister_device_notification(void* handle) @cname("UnregisterDeviceNotification");
extern fn Winbool flash_window_ex(Pflashwinfo pfwi) @cname("FlashWindowEx");
extern fn Hdwp begin_defer_window_pos(int n_num_windows) @cname("BeginDeferWindowPos");
extern fn Winbool end_defer_window_pos(void* h_win_pos_info) @cname("EndDeferWindowPos");
extern fn Winbool any_popup() @cname("AnyPopup");
extern fn CLong get_dialog_base_units() @cname("GetDialogBaseUnits");
extern fn Winbool call_msg_filter_a(Lpmsg lp_msg, int n_code) @cname("CallMsgFilterA");
extern fn Winbool call_msg_filter_w(Lpmsg lp_msg, int n_code) @cname("CallMsgFilterW");
extern fn Winbool close_clipboard() @cname("CloseClipboard");
extern fn Dword get_clipboard_sequence_number() @cname("GetClipboardSequenceNumber");
extern fn Handle set_clipboard_data(uint u_format, void* h_mem) @cname("SetClipboardData");
extern fn Handle get_clipboard_data(uint u_format) @cname("GetClipboardData");
extern fn Uint register_clipboard_format_a(Lpcstr lpsz_format) @cname("RegisterClipboardFormatA");
extern fn Uint register_clipboard_format_w(Lpcwstr lpsz_format) @cname("RegisterClipboardFormatW");
extern fn int count_clipboard_formats() @cname("CountClipboardFormats");
extern fn Uint enum_clipboard_formats(uint format) @cname("EnumClipboardFormats");
extern fn int get_clipboard_format_name_a(uint format, Lpstr lpsz_format_name, int cch_max_count) @cname("GetClipboardFormatNameA");
extern fn int get_clipboard_format_name_w(uint format, Lpwstr lpsz_format_name, int cch_max_count) @cname("GetClipboardFormatNameW");
extern fn Winbool empty_clipboard() @cname("EmptyClipboard");
extern fn Winbool is_clipboard_format_available(uint format) @cname("IsClipboardFormatAvailable");
extern fn int get_priority_clipboard_format(Uint* pa_format_priority_list, int c_formats) @cname("GetPriorityClipboardFormat");
extern fn Winbool char_to_oem_a(Lpcstr lpsz_src, Lpstr lpsz_dst) @cname("CharToOemA");
extern fn Winbool char_to_oem_w(Lpcwstr lpsz_src, Lpstr lpsz_dst) @cname("CharToOemW");
extern fn Winbool oem_to_char_a(Lpcstr lpsz_src, Lpstr lpsz_dst) @cname("OemToCharA");
extern fn Winbool oem_to_char_w(Lpcstr lpsz_src, Lpwstr lpsz_dst) @cname("OemToCharW");
extern fn Winbool char_to_oem_buff_a(Lpcstr lpsz_src, Lpstr lpsz_dst, CULong cch_dst_length) @cname("CharToOemBuffA");
extern fn Winbool char_to_oem_buff_w(Lpcwstr lpsz_src, Lpstr lpsz_dst, CULong cch_dst_length) @cname("CharToOemBuffW");
extern fn Winbool oem_to_char_buff_a(Lpcstr lpsz_src, Lpstr lpsz_dst, CULong cch_dst_length) @cname("OemToCharBuffA");
extern fn Winbool oem_to_char_buff_w(Lpcstr lpsz_src, Lpwstr lpsz_dst, CULong cch_dst_length) @cname("OemToCharBuffW");
extern fn Lpstr char_upper_a(Lpstr lpsz) @cname("CharUpperA");
extern fn Lpwstr char_upper_w(Lpwstr lpsz) @cname("CharUpperW");
extern fn Dword char_upper_buff_a(Lpstr lpsz, CULong cch_length) @cname("CharUpperBuffA");
extern fn Dword char_upper_buff_w(Lpwstr lpsz, CULong cch_length) @cname("CharUpperBuffW");
extern fn Lpstr char_lower_a(Lpstr lpsz) @cname("CharLowerA");
extern fn Lpwstr char_lower_w(Lpwstr lpsz) @cname("CharLowerW");
extern fn Dword char_lower_buff_a(Lpstr lpsz, CULong cch_length) @cname("CharLowerBuffA");
extern fn Dword char_lower_buff_w(Lpwstr lpsz, CULong cch_length) @cname("CharLowerBuffW");
extern fn Lpstr char_next_a(Lpcstr lpsz) @cname("CharNextA");
extern fn Lpwstr char_next_w(Lpcwstr lpsz) @cname("CharNextW");
extern fn Lpstr char_prev_a(Lpcstr lpsz_start, Lpcstr lpsz_current) @cname("CharPrevA");
extern fn Lpwstr char_prev_w(Lpcwstr lpsz_start, Lpcwstr lpsz_current) @cname("CharPrevW");
extern fn Lpstr char_next_ex_a(ushort code_page, Lpcstr lp_current_char, CULong dw_flags) @cname("CharNextExA");
extern fn Lpstr char_prev_ex_a(ushort code_page, Lpcstr lp_start, Lpcstr lp_current_char, CULong dw_flags) @cname("CharPrevExA");
extern fn Winbool is_char_alpha_a(char ch) @cname("IsCharAlphaA");
extern fn Winbool is_char_alpha_w(ushort ch) @cname("IsCharAlphaW");
extern fn Winbool is_char_alpha_numeric_a(char ch) @cname("IsCharAlphaNumericA");
extern fn Winbool is_char_alpha_numeric_w(ushort ch) @cname("IsCharAlphaNumericW");
extern fn Winbool is_char_upper_a(char ch) @cname("IsCharUpperA");
extern fn Winbool is_char_upper_w(ushort ch) @cname("IsCharUpperW");
extern fn Winbool is_char_lower_a(char ch) @cname("IsCharLowerA");
extern fn Winbool is_char_lower_w(ushort ch) @cname("IsCharLowerW");
extern fn Uint get_kb_code_page() @cname("GetKBCodePage");
extern fn Short get_key_state(int n_virt_key) @cname("GetKeyState");
extern fn Short get_async_key_state(int v_key) @cname("GetAsyncKeyState");
extern fn Winbool get_keyboard_state(Pbyte lp_key_state) @cname("GetKeyboardState");
extern fn Winbool set_keyboard_state(Lpbyte lp_key_state) @cname("SetKeyboardState");
extern fn int get_key_name_text_a(CLong l_param, Lpstr lp_string, int cch_size) @cname("GetKeyNameTextA");
extern fn int get_key_name_text_w(CLong l_param, Lpwstr lp_string, int cch_size) @cname("GetKeyNameTextW");
extern fn int get_keyboard_type(int n_type_flag) @cname("GetKeyboardType");
extern fn int to_ascii(uint u_virt_key, uint u_scan_code, Byte* lp_key_state, Lpword lp_char, uint u_flags) @cname("ToAscii");
extern fn int to_ascii_ex(uint u_virt_key, uint u_scan_code, Byte* lp_key_state, Lpword lp_char, uint u_flags, Hkl dwhkl) @cname("ToAsciiEx");
extern fn int to_unicode(uint w_virt_key, uint w_scan_code, Byte* lp_key_state, Lpwstr pwsz_buff, int cch_buff, uint w_flags) @cname("ToUnicode");
extern fn Dword oem_key_scan(ushort w_oem_char) @cname("OemKeyScan");
extern fn Short vk_key_scan_a(char ch) @cname("VkKeyScanA");
extern fn Short vk_key_scan_w(ushort ch) @cname("VkKeyScanW");
extern fn Short vk_key_scan_ex_a(char ch, Hkl dwhkl) @cname("VkKeyScanExA");
extern fn Short vk_key_scan_ex_w(ushort ch, Hkl dwhkl) @cname("VkKeyScanExW");
extern fn void keybd_event(char b_vk, char b_scan, CULong dw_flags, ulong dw_extra_info) @cname("keybd_event");
extern fn void mouse_event(CULong dw_flags, CULong dx, CULong dy, CULong dw_data, ulong dw_extra_info) @cname("mouse_event");
extern fn Uint send_input(uint c_inputs, Lpinput p_inputs, int cb_size) @cname("SendInput");
extern fn Winbool get_last_input_info(Plastinputinfo plii) @cname("GetLastInputInfo");
extern fn Uint map_virtual_key_a(uint u_code, uint u_map_type) @cname("MapVirtualKeyA");
extern fn Uint map_virtual_key_w(uint u_code, uint u_map_type) @cname("MapVirtualKeyW");
extern fn Uint map_virtual_key_ex_a(uint u_code, uint u_map_type, Hkl dwhkl) @cname("MapVirtualKeyExA");
extern fn Uint map_virtual_key_ex_w(uint u_code, uint u_map_type, Hkl dwhkl) @cname("MapVirtualKeyExW");
extern fn Winbool get_input_state() @cname("GetInputState");
extern fn Dword get_queue_status(uint flags) @cname("GetQueueStatus");
extern fn Winbool release_capture() @cname("ReleaseCapture");
extern fn Dword msg_wait_for_multiple_objects(CULong n_count, Handle* p_handles, int f_wait_all, CULong dw_milliseconds, CULong dw_wake_mask) @cname("MsgWaitForMultipleObjects");
extern fn Dword msg_wait_for_multiple_objects_ex(CULong n_count, Handle* p_handles, CULong dw_milliseconds, CULong dw_wake_mask, CULong dw_flags) @cname("MsgWaitForMultipleObjectsEx");
extern fn int get_system_metrics(int n_index) @cname("GetSystemMetrics");
extern fn Long get_menu_check_mark_dimensions() @cname("GetMenuCheckMarkDimensions");
extern fn Winbool track_popup_menu_ex() @cname("TrackPopupMenuEx");
extern fn Winbool end_menu() @cname("EndMenu");
extern fn Winbool allow_set_foreground_window(CULong dw_process_id) @cname("AllowSetForegroundWindow");
extern fn Winbool lock_set_foreground_window(uint u_lock_code) @cname("LockSetForegroundWindow");
extern fn int message_box_indirect_a(Msgboxparamsa* lpmbp) @cname("MessageBoxIndirectA");
extern fn int message_box_indirect_w(Msgboxparamsw* lpmbp) @cname("MessageBoxIndirectW");
extern fn Winbool message_beep(uint u_type) @cname("MessageBeep");
extern fn int show_cursor(int b_show) @cname("ShowCursor");
extern fn Winbool set_cursor_pos(int x, int y) @cname("SetCursorPos");
extern fn Uint get_caret_blink_time() @cname("GetCaretBlinkTime");
extern fn Winbool set_caret_blink_time(uint u_m_seconds) @cname("SetCaretBlinkTime");
extern fn Winbool destroy_caret() @cname("DestroyCaret");
extern fn Winbool set_caret_pos(int x, int y) @cname("SetCaretPos");
extern fn Dword get_sys_color(int n_index) @cname("GetSysColor");
extern fn Winbool get_process_default_layout(Dword* pdw_default_layout) @cname("GetProcessDefaultLayout");
extern fn Winbool set_process_default_layout(CULong dw_default_layout) @cname("SetProcessDefaultLayout");
extern fn Winbool enum_windows(Wndenumproc lp_enum_func, long l_param) @cname("EnumWindows");
extern fn Winbool enum_thread_windows(CULong dw_thread_id, Wndenumproc lpfn, long l_param) @cname("EnumThreadWindows");
extern fn Winbool is_gui_thread(int b_convert) @cname("IsGUIThread");
extern fn Winbool unhook_windows_hook(int n_code, Hookproc pfn_filter_proc) @cname("UnhookWindowsHook");
extern fn int lookup_icon_id_from_directory(Pbyte presbits, int f_icon) @cname("LookupIconIdFromDirectory");
extern fn int lookup_icon_id_from_directory_ex(Pbyte presbits, int f_icon, int cx_desired, int cy_desired, uint flags) @cname("LookupIconIdFromDirectoryEx");
extern fn Handle load_image_a(Hinstance h_inst, Lpcstr name, uint type, int cx, int cy, uint fu_load) @cname("LoadImageA");
extern fn Handle load_image_w(Hinstance h_inst, Lpcwstr name, uint type, int cx, int cy, uint fu_load) @cname("LoadImageW");
extern fn Handle copy_image(void* h, uint type, int cx, int cy, uint flags) @cname("CopyImage");
extern fn Dword get_gui_resources(void* h_process, CULong ui_flags) @cname("GetGuiResources");
extern fn Winbool system_parameters_info_a(uint ui_action, uint ui_param, void* pv_param, uint f_win_ini) @cname("SystemParametersInfoA");
extern fn Winbool system_parameters_info_w(uint ui_action, uint ui_param, void* pv_param, uint f_win_ini) @cname("SystemParametersInfoW");
extern fn void set_debug_error_level(CULong dw_level) @cname("SetDebugErrorLevel");
extern fn void set_last_error_ex(CULong dw_err_code, CULong dw_type) @cname("SetLastErrorEx");
extern fn Winbool cancel_shutdown() @cname("CancelShutdown");
extern fn Winbool sound_sentry() @cname("SoundSentry");
extern fn Winbool is_win_event_hook_installed(CULong event) @cname("IsWinEventHookInstalled");
extern fn Winbool get_gui_thread_info(CULong id_thread, Pguithreadinfo pgui) @cname("GetGUIThreadInfo");
extern fn Winbool block_input(int f_block_it) @cname("BlockInput");
extern fn Winbool set_process_dpi_aware() @cname("SetProcessDPIAware");
extern fn Winbool is_process_dpi_aware() @cname("IsProcessDPIAware");
extern fn Winbool get_cursor_info(Pcursorinfo pci) @cname("GetCursorInfo");
extern fn Winbool lock_work_station() @cname("LockWorkStation");
extern fn Winbool user_handle_grant_access(void* h_user_handle, void* h_job, int b_grant) @cname("UserHandleGrantAccess");
extern fn Uint get_raw_input_data(Hrawinput h_raw_input, uint ui_command, void* p_data, uint* pcb_size, uint cb_size_header) @cname("GetRawInputData");
extern fn Uint get_raw_input_device_info_a(void* h_device, uint ui_command, void* p_data, uint* pcb_size) @cname("GetRawInputDeviceInfoA");
extern fn Uint get_raw_input_device_info_w(void* h_device, uint ui_command, void* p_data, uint* pcb_size) @cname("GetRawInputDeviceInfoW");
extern fn Uint get_raw_input_buffer(Prawinput p_data, uint* pcb_size, uint cb_size_header) @cname("GetRawInputBuffer");
extern fn Winbool register_raw_input_devices(Pcrawinputdevice p_raw_input_devices, uint ui_num_devices, uint cb_size) @cname("RegisterRawInputDevices");
extern fn Uint get_registered_raw_input_devices(Prawinputdevice p_raw_input_devices, uint* pui_num_devices, uint cb_size) @cname("GetRegisteredRawInputDevices");
extern fn Uint get_raw_input_device_list(Prawinputdevicelist p_raw_input_device_list, uint* pui_num_devices, uint cb_size) @cname("GetRawInputDeviceList");
extern fn Lresult def_raw_input_proc(Prawinput* pa_raw_input, int n_input, uint cb_size_header) @cname("DefRawInputProc");
extern fn Winbool get_pointer_input_transform(uint pointer_id, uint history_count, InputTransform* input_transform) @cname("GetPointerInputTransform");
extern fn Winbool is_mouse_pointer_enabled() @cname("IsMousePointerEnabled");

// Global Variables
extern Guid guid_powerscheme_personality @cname("GUID_POWERSCHEME_PERSONALITY");
extern Guid guid_min_power_savings @cname("GUID_MIN_POWER_SAVINGS");
extern Guid guid_max_power_savings @cname("GUID_MAX_POWER_SAVINGS");
extern Guid guid_typical_power_savings @cname("GUID_TYPICAL_POWER_SAVINGS");
extern Guid guid_acdc_power_source @cname("GUID_ACDC_POWER_SOURCE");
extern Guid guid_battery_percentage_remaining @cname("GUID_BATTERY_PERCENTAGE_REMAINING");
extern Guid guid_idle_background_task @cname("GUID_IDLE_BACKGROUND_TASK");
extern Guid guid_system_awaymode @cname("GUID_SYSTEM_AWAYMODE");
extern Guid guid_monitor_power_on @cname("GUID_MONITOR_POWER_ON");

