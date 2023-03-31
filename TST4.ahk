; Define a timer variable
timer := 0

; Define a hotkey for CapsLock
CapsLock::
; Start a timer that will run after 500 ms (half a second)
SetTimer, SwitchDesktops, 500
; Set the timer variable to 1
timer := 1
; Return from the hotkey
return

; Define another hotkey for CapsLock up (when you release the key)
CapsLock up::
; If the timer variable is 1, it means the timer has not run yet
if (timer = 1)
{
    ; Cancel the timer
    SetTimer, SwitchDesktops, Off
    ; Send Ctrl+C as normal
    SendInput, ^c
}
; Set the timer variable back to 0
timer := 0
; Return from the hotkey
return

; Define a label for the timer
SwitchDesktops:
; If the timer variable is 1, it means the timer has run after 500 ms
if (timer = 1)
{
    ; Send Win+Ctrl+Left and then Win+Ctrl+Right
    SendInput, #{Ctrl Down}{Left}{Ctrl Up}{Right}
}
; Return from the label
return