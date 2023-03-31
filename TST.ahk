; Define a variable to keep track of the direction
direction := "left"

; Define a variable to store the time when caps lock is pressed
capslock_time := 0

; Define a hotkey for caps lock down
Capslock::
    ; Store the current time in milliseconds
    capslock_time := A_TickCount
    
return

; Define a hotkey for caps lock up
Capslock up::
    ; Calculate the time difference between key presses
    time_diff := A_TickCount - capslock_time
    MsgBox, Caps lock up at %A_TickCount%, time difference is %time_diff%
    ; If the time difference is more than 500 milliseconds (half a second)
    if (time_diff > 500) {
        ; Send the keys for window + ctrl + direction
        Send {LWin down}{LCtrl down}{%direction%}{LWin up}{LCtrl up}
        ; Toggle the direction between left and right
        if (direction = "left") {
            direction := "right"
        } else {
            direction := "left"
        }
    }
return