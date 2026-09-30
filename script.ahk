#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Alt + d: Insertar fecha
!d::
FormatTime, xx,, dd-MM-yyyy
sendINput, %xx%
return

; Ctrl + Alt + t: Abrir terminal
^!t::
Run, C:\Users\Mauricio\AppData\Local\Microsoft\WindowsApps\wt.exe
return

; Alt + 2: Abrir Vault de Obsidian notas-programacion
!1::
Run, obsidian://open?vault=notas-programacion
return

; Alt + 2: Abrir Vault de Obsidian notas-varias
!2::
Run, obsidian://open?vault=notas-varias
return

; Auto-reemplazo: Escribir 'f0' y a continuación pulsar "Space" para insertar la fecha actual (DD-MM-AAAA)
::f0::
    FormatTime, xx,, dd-MM-yyyy
    SendInput, %xx%
return

; Alt + 0: Abrir Notepad++
!0::
Run, Notepad++
return

; Alt + Esc: Bloquear la sesión
!Esc::
    DllCall("LockWorkStation")
return

; Ctrl + Alt + Esc: Suspender el equipo
^!Esc::
    DllCall("PowrProf\SetSuspendState", "Int", 0, "Int", 1, "Int", 0)
return

; Ctrl + Espacio: Fijar / Desfijar la ventana activa (Always on Top)
^SPACE::
    WinSet, AlwaysOnTop, Toggle, A
return