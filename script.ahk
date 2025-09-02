#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


!d::
FormatTime, xx,, dd-MM-yyyy
sendINput, %xx%
return

!f::
Run, C:\Program Files\Mozilla Firefox\firefox.exe
return

!c::
Run, C:\Program Files\Google\Chrome\Application\chrome.exe
return

!a::
Run, C:\Users\Mauricio\AppData\Local\Asana\Asana.exe
return

!s::
Run, C:\Windows\system32\SnippingTool.exe
return

!t::
Run, C:\Users\Mauricio\AppData\Roaming\Telegram Desktop\Telegram.exe
return

^!t::
Run, C:\Users\Mauricio\AppData\Local\Microsoft\WindowsApps\wt.exe
return

!1::
Run, obsidian://open?vault=notas-programacion
return

!2::
Run, obsidian://open?vault=notas-universidad
return

::f0::
FormatTime, xx,, dd-MM-yyyy
sendINput, %xx%
return

!8::
Run, C:\Users\Mauricio\AppData\Local\Programs\obsidian\Obsidian.exe
return


!9::
Run, D:\Aplicaciones\SublimeText\Sublime Text 3\sublime_text.exe
return


!0::
Run, Notepad
return


!Esc::
{
DllCall("LockWorkStation")
}
return

^!Esc::DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 0) ;  Suspend