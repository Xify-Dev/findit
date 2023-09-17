#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

$Name = "FindIt"

$Form1 = GUICreate($Name, 214, 88)
$Input1 = GUICtrlCreateInput("", 8, 8, 193, 21)
$Button1 = GUICtrlCreateButton("Generate Link", 8, 32, 195, 25)
$Label1 = GUICtrlCreateLabel("v1 | XIFY", 8, 64, 109, 17)
GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1
			$Text = GUICtrlRead($Input1)
			if not $Text = "" Then
				$Link = "https://letmegooglethat.com/?q=" & StringReplace($text," ","+")
				ClipPut($Link)
				MsgBox(0,$Name,"Copied To Clipboard.")
			Else
				MsgBox(0,$Name,"Input can not be blank.")
			EndIf
	EndSwitch
WEnd