;AHK 1v
;thanks Rohwedder from AHK fourms <3
;https://www.autohotkey.com/boards/viewtopic.php?p=514742#p514742

;#IfWinActive,ahk_exe blender.exe ;ahk will work only for blender
direction := "left"

::
KeyWait, e, T.4 ; 0.4 second
IF ErrorLevel {	
					
						; Define a variable to keep track of the direction
						

						; Define a hotkey for left capslock
													; Send the keys for window + ctrl + direction
							
							; Toggle the direction between left and right
							if (direction = "left") 
							{
								Send {LWin down}{LCtrl down}{%direction%}{LWin up}{LCtrl up}
								direction := "right"
							}
							else 
							{
								Send {LWin down}{LCtrl down}{right}{LWin up}{LCtrl up}
								direction := "left"
							}
						return
					
	
	
				}
	                     ;change here the shortcut
Else 
	{
		BlockInput On
		Send {Enter}
		BlockInput Off
	}
KeyWait, e
Return


;@xmaxrayx