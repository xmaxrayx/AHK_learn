; Define a variable to keep track of the direction
direction := "left"

; Define a variable to store the time when F1 is pressed
F1_time := 0

; Define a hotkey for F1 down
F1::
    ; Store the current time in milliseconds
    F1_time := A_TickCount
return

; Define a hotkey for F1 up
F1 up::
    ; Calculate the time difference between key presses
    time_diff := A_TickCount - F1_time
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