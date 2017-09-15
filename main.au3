#RequireAdmin
#include <ImageSearch.au3>
#include <AutoItConstants.au3>
#include <FileConstants.au3>
#include <File.au3>
#include <Timers.au3>
#include <Array.au3>

Global $caption_array[0]

_ArrayAdd($caption_array, 0 )
_ArrayAdd($caption_array, "Oh, cái này hay ghê" )
_ArrayAdd($caption_array, "Không ngờ luôn đấy" )
_ArrayAdd($caption_array, "Hay lắm =))" )
_ArrayAdd($caption_array, "Khá lắm :))" )
_ArrayAdd($caption_array, "Cái gì cũng nói hộ được lòng tôi" )
_ArrayAdd($caption_array, "Sa mạc lời" )
_ArrayAdd($caption_array, "Hạn hán lời" )
_ArrayAdd($caption_array, "Cạn lời" )
_ArrayAdd($caption_array, "Khốn nạn em tôi!" )
_ArrayAdd($caption_array, " Khổ thân em tôi!" )
_ArrayAdd($caption_array, "Hỡi ơi!" )
_ArrayAdd($caption_array, "Đắng lòng!" )
_ArrayAdd($caption_array, "Vãi chưởng!" )
_ArrayAdd($caption_array, "Oi Vãi linh hồn" )
_ArrayAdd($caption_array, "Chất vl!" )
_ArrayAdd($caption_array,"Và chúng tôi gọi đó là CHẤT" )
_ArrayAdd($caption_array, "Hay lắm đmm" )
_ArrayAdd($caption_array, "Thua" )
_ArrayAdd($caption_array, "Trời đụ :)")
_ArrayAdd($caption_array, "Tròi má :v" )
_ArrayAdd($caption_array, "Má!!!" )
_ArrayAdd($caption_array, "Mé :v" )
_ArrayAdd($caption_array, "Tao quỳ :v" )

$caption_array[0] = UBound($caption_array) - 1



$aFileList = _FileListToArray("archive", "*",0,False)
$next_time = 0


For $i = 1 To UBound($aFileList)
	$key_caption_random = Random(1, $caption_array[0], 1)
	$next_time = $next_time + 15
	Random_Image($i)
	twice_wait_image("image/1.png", 1)
	Sleep(3000)
	no_wait_image("image/2.png", 1)
	Sleep(1000)
	$hashtag1 = "{#}CGCH "
	$hashtag2 = "{#}Caigicunghay "
	$hashtag3 = "{#}Google "
	$caption = $caption_array[$key_caption_random]
	$upload_folder = "C:\Users\Administrator\Desktop\project\facebook_scheduler\upload"
	Sleep(300)
	WinActivate("Tải lên một tập tin")
	Sleep(300)
	ControlClick("Tải lên một tập tin", "", "[CLASS:ToolbarWindow32; INSTANCE:2]", "left", 1, 516, 45)
	Sleep(300)
	Send("{DELETE}")
	Sleep(300)
	If $i = 1 Then
		Send($upload_folder)
	EndIf
	Sleep(300)
	Send("{ENTER}")
	Sleep(300)
	WinActivate("Tải lên một tập tin")
	Sleep(300)
	ControlClick("Tải lên một tập tin", "", "[CLASS:DirectUIHWND; INSTANCE:2]", "left", 1)
	Sleep(300)
	Send("{RIGHT}")
	Sleep(300)
	Send("{ENTER}")
	Sleep(2000)
	no_wait_image("image/3.png", 1)
	Sleep(800)
	Send($caption)
	Send("{ENTER}")
	Send("{ENTER}")
	Send($hashtag1)
	Send($hashtag2)
	Send($hashtag3)
	Sleep(800)
	no_wait_image("image/4.png", 1)

	Sleep(800)
	fuck_wait_image("image/5.png", 1)
	Sleep(800)
	For $j = 1 to $next_time
		Send("{UP}")
	Next
	Sleep(300)

	If find_image("image/error.png") = 1 Then
		fuck_2_wait_image("image/calendar.png", 1)
		Sleep(120)
		Send("{UP}")
	EndIf

	no_wait_image("image/6.png", 1)
	Sleep(5000)
Next

Func find_image($path)
	$start = _Timer_Init()
	Do
		$end =  Round(_Timer_Diff($start))
		Local $y = 0, $x = 0
		Local $search = _ImageSearch($path, 1, $x, $y, 60)
		If $search = 1 Then
			Return 1
			ExitLoop
		EndIf
		If $end >= 5000 then ExitLoop
		If $end <= 5000 Then Sleep(30)
	Until $end >= 5000
EndFunc

Func no_wait_image($path, $n)
	$start = _Timer_Init()
	Do
		$end =  Round(_Timer_Diff($start))
		Local $y = 0, $x = 0
		Local $search = _ImageSearch($path, 1, $x, $y, 60)
		If $search = 1 Then
			MouseClick("left", $x, $y, $n, 0)
			Return 1
			ExitLoop
		EndIf
		If $end >= 20000 then ExitLoop
		If $end <= 20000 Then Sleep(30)
	Until $end >=20000
EndFunc

Func fuck_wait_image($path, $n)
	$start = _Timer_Init()
	Do
		$end =  Round(_Timer_Diff($start))
		Local $y = 0, $x = 0
		Local $search = _ImageSearch($path, 1, $x, $y, 60)
		If $search = 1 Then
		MouseClick("left", $x-40, $y, $n, 0)
		Return 1
		ExitLoop
		Else
		Sleep(20)
		EndIf
	Until $end >=20000
EndFunc

Func fuck_2_wait_image($path, $n)
	$start = _Timer_Init()
	Do
		$end =  Round(_Timer_Diff($start))
		Local $y = 0, $x = 0
		Local $search = _ImageSearch($path, 1, $x, $y, 60)
		If $search = 1 Then
		MouseClick("left", $x-80, $y, $n, 0)
		Return 1
		ExitLoop
		Else
		Sleep(20)
		EndIf
	Until $end >=20000
EndFunc

Func twice_wait_image($path, $n)
	$start = _Timer_Init()
	Do
		$end =  Round(_Timer_Diff($start))
		Local $y = 0, $x = 0
		Local $search = _ImageSearch($path, 1, $x, $y, 60)
		If $search = 1 Then
			MouseClick("left", $x, $y, $n, 0)
			Sleep(100)
			MouseClick("left", $x, $y, $n, 0)
			Return 1
			ExitLoop
		EndIf
		If $end >= 20000 then ExitLoop
		If $end <= 20000 Then Sleep(30)
	Until $end >=20000
EndFunc


Func Random_Image($i)
	$aFileList = _FileListToArray("archive", "*",0,False)
	FileCopy("archive\" & $aFileList[$i],  "upload\" & "image.jpg", $FC_OVERWRITE + $FC_CREATEPATH) ; change this
EndFunc
