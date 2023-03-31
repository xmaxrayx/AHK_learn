;Capslock::Send {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up}

; Define a variable to keep track of the direction
direction := "left"

; Define a hotkey for left ctrl + capslock
Capslock::
    ; Send the keys for window + ctrl + direction
    Send {LWin down}{LCtrl down}{%direction%}{LWin up}{LCtrl up}
    ; Toggle the direction between left and right
    if (direction = "left") {
        direction := "right"
    } else {
        direction := "left"
    }
return