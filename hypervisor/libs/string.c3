module std::core::string;

import wdm;
typedef WString = inline Wchar*;

macro WString @wstring(String $string) @builtin
{
    return (WString)&&$$wstr16($string);
}