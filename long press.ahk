;AHK 1v
;thanks Rohwedder from AHK fourms <3
;https://www.autohotkey.com/boards/viewtopic.php?p=514742#p514742

#IfWinActive,ahk_exe blender.exe ;ahk will work only for blender


$e::
KeyWait, e, T.4 ; 0.4 second
IF ErrorLevel ;long press
	Send, {F2}                     ;change here the shortcut
Else Send, {e}
KeyWait, e
Return


;@xmaxrayx