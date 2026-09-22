module win32::def;

// Type Aliases & Callbacks
alias Hgdiobj = void*;
alias Hcursor = Hicon;
alias Colorref = CULong;
alias Lpcolorref = Dword*;
alias Prect = TagRECT*;
alias Nprect = TagRECT*;
alias Lprect = TagRECT*;
alias Lpcrect = Rect*;
alias Prectl = Rectl*;
alias Lprectl = Rectl*;
alias Lpcrectl = Rectl*;
alias Ppoint = TagPOINT*;
alias Nppoint = TagPOINT*;
alias Lppoint = TagPOINT*;
alias Ppointl = Pointl*;
alias Psize = TagSIZE*;
alias Lpsize = TagSIZE*;
alias Sizel = Size;
alias Psizel = Size*;
alias Lpsizel = Size*;
alias Ppoints = TagPOINTS*;
alias Lppoints = TagPOINTS*;
alias Dword = CULong;
alias Long = CLong;
alias Short = short;
alias Byte = char;

constdef DpiAwareness : int
{
	DPI_AWARENESS_INVALID = -1,
	DPI_AWARENESS_UNAWARE = 0,
	DPI_AWARENESS_SYSTEM_AWARE = 1,
	DPI_AWARENESS_PER_MONITOR_AWARE = 2
}

constdef DpiHostingBehavior : int
{
	DPI_HOSTING_BEHAVIOR_INVALID = -1,
	DPI_HOSTING_BEHAVIOR_DEFAULT = 0,
	DPI_HOSTING_BEHAVIOR_MIXED = 1
}

struct Hwnd
{
	int unused;
}

struct Hhook
{
	int unused;
}

struct Haccel
{
	int unused;
}

struct Hbitmap
{
	int unused;
}

struct Hbrush
{
	int unused;
}

struct Hcolorspace
{
	int unused;
}

struct Hdc
{
	int unused;
}

struct Hglrc
{
	int unused;
}

struct Hdesk
{
	int unused;
}

struct Henhmetafile
{
	int unused;
}

struct Hfont
{
	int unused;
}

struct Hicon
{
	int unused;
}

struct Hmenu
{
	int unused;
}

struct Hpalette
{
	int unused;
}

struct Hpen
{
	int unused;
}

struct Hmonitor
{
	int unused;
}

struct Hwineventhook
{
	int unused;
}

struct Humpd
{
	int unused;
}

struct TagRECT
{
	CLong left;
	CLong top;
	CLong right;
	CLong bottom;
}

struct Rect
{
	CLong left;
	CLong top;
	CLong right;
	CLong bottom;
}

struct Rectl
{
	CLong left;
	CLong top;
	CLong right;
	CLong bottom;
}

struct TagPOINT
{
	CLong x;
	CLong y;
}

struct Point
{
	CLong x;
	CLong y;
}

struct Pointl
{
	CLong x;
	CLong y;
}

struct TagSIZE
{
	CLong cx;
	CLong cy;
}

struct Size
{
	CLong cx;
	CLong cy;
}

struct TagPOINTS
{
	short x;
	short y;
}

struct Points
{
	short x;
	short y;
}

struct AppLocalDeviceId
{
	Byte[32] value;
}

struct DpiAwarenessContext
{
	int unused;
}

