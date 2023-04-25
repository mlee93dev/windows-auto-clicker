#include <Misc.au3>

HotKeySet("{ESC}" , "close")
HotKeySet("{SPACE}" , "startpause")

Dim $click = False

Func close()
	ToolTip("Rewl Auto Click v1.0 Exited." , 0 , 0)
    Exit
EndFunc

Func startpause()
   If $click = False Then
      $click = True
      ToolTip("Auto Click v1.0 Running." , 0 , 0)
   Else
      $click = False
      ToolTip("Auto Click v1.0 Paused." , 0 , 0)
   EndIf
EndFunc


While 1
    If _IsPressed ( "02" ) = 1 Then
        ConsoleWrite ( "Sleep ( 2000 )" & @Crlf )
        Sleep ( 2000 )
		$click = True
    EndIf

   If $click = True Then
    MouseClick("left")
	Sleep(5000)
EndIf
sleep(20)
WEnd



