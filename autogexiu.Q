[General]
SyntaxVersion=2
BeginHotkey=221
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=219
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=e5c54eb6-ce42-494b-b3c8-cf94c16d13dd
Description=自動去掛個修
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
//自動領師範掛個休
Plugin.RegDll.Reg "C:\Users\bluec\Desktop\QuickMacroPortable\dm\dm.dll"
set dm = createobject("dm.dmsoft")
dm_ret = dm.setpath("C:\Users\bluec\Desktop\QuickMacroPortable\dm")
dm_ret = dm.setdict(0, "dmdic.txt")
hwnd = dm.GetMousePointWindow()
dm_ret = dm.BindWindow(hwnd, "dx2", "windows", "windows", 0)
UserVar var10=DropList{"開啟":"1"|"關閉":"999999"}=10 "師範逆天符"
Delay 1000
Rem startall
Delay 1000
Call backhome()
Delay 1000
Call takefu()
Delay 1000
Call gotodao()
Delay 1000
Call into()
Delay 1000
Call attack()
Delay 1000



Sub attack() //修鍊場內攻擊木偶
//確認在修鍊場內
//dm_ret = dm.FindStr(718,188,800,212,"修練場店","6be24a-010101",1.0,intX,intY)
//If intX > 0 and intY > 0 Then 
//intX = 0 : intY = 0

//Else 
//ExitScript
//End If
//攻擊木偶
dm.keypress 27
Delay 50
dm_ret = dm.FindStr(0,0,800,457,"師範","ff8080-020202",1.0,intX,intY)
If intX > 0 and intY > 0 Then 
	dm.moveto intX + 21, intY + 47
	dm.leftclick
	Delay 200
	intX = 0 : intY = 0
End If
End Sub
sub backhome() //回城領師範
//開地圖回師範
dm.keypress 9
Delay 4000
dm_ret = dm.FindStr(260,0,540,240,"世界地圖","fefefe-010101",1.0,intX,intY)
If intX > 0 and intY > 0 Then 
dm.moveto intX + 10, intY + 5
Delay 10
dm.leftclick 
End If
Delay 2000
dm.moveto 493, 268
Delay 10
dm.leftclick 
Delay 500
dm.moveto 740, 394
Delay 10
dm.leftclick 
Delay 2000
dm.moveto 284, 320
dm.leftclick 
dm.leftclick
dm.moveto 285, 320
dm.leftclick 
dm.leftclick
Delay 500
dm.moveto 284,324
Delay 10
dm.leftclick 
Delay 1000
dm.moveto 412,437
Delay 10
dm.leftclick 
Delay 7000

End Sub
sub takefu() //領師範加倍
If var10 = 1 Then 
	//確認逆天福狀態
dm.moveto 115, 475
Delay 10
dm.leftclick 
Delay 5000
dm.keypress 46
Delay 200
dm_ret = dm.FindStr(13,74,162,413,"逆天符","fefefe-010101",1.0,intX,intY)
If intX > 0 and intY > 0 Then 
	dm.moveto intX+200,intY+30
	Delay 10
	dm.leftclick 
	Delay 200
	dm.moveto 356,271
	Delay 10
	dm.leftclick 
	Delay 1000
Else 
	Goto starttakefu
End If

Rem starttakefu
dm_ret = dm.FindStr(364, 114, 435, 177, "師範", "6be24a-010101", 1.0, intX, intY)
If intX > 0 And intY > 0 Then 
intX = 0 : intY = 0
dm.moveto 400, 215
Delay 10
dm.leftclick 
Delay 300
dm.moveto 400, 215
Delay 10
dm.leftclick 
Delay 3000
dm.moveto 167, 249
Delay 10
dm.leftclick 
Delay 3000
dm_ret = dm.FindStr(602, 383, 654, 409, "確認", "fec666-010101", 1.0, intX, intY)
dm.moveto 634, 398
Delay 10
dm.leftclick 
Delay 2000
dm_ret = dm.FindStr(602, 383, 654, 409, "下一個", "fec666-010101", 1.0, intX, intY)
dm.keypress 13
Delay 500
dm.keypress 13
Delay 500
dm.keypress 13
Delay 500
dm.keypress 13
Delay 500
dm.keypress 13
Delay 500
dm.keypress 13
Delay 500
dm.keypress 13
Delay 500
'dm.moveto 634, 398
'Delay 10
'dm.leftclick 
'Delay 500
dm_ret = dm.SetWindowState(hwnd, 1)
Delay 200
SayString "3"
Delay 500
dm.moveto 368, 433
Delay 10
dm.leftclick 
Delay 3000
Else 
Delay 5000
Goto starttakefu
End If

End If

End sub
Sub gotodao() //去修練場
	//開啟飛
	dm.keypress 115
	Delay 500
	dm.keypress 115
	Delay 500
	dm.moveto 104, 57
	Delay 10
	dm.leftclick 
	Delay 1000
	dm.moveto 104, 57
	Delay 10
	dm.leftclick 
	Delay 1000
	Rem findbucaolan
	dm_ret = dm.FindStr(355, 6, 796, 345, "佈告欄", "6be24a-010101", 1.0, intX, intY)
	If intX > 0 And intY > 0 Then 
	dm.moveto intX + 15, intY + 85
	Else 
	Delay 1000
	Goto findbucaolan
	End If
	Delay 10
	dm.leftclick 
	Delay 3000
	dm.moveto 198, 135
	Delay 10
	dm.leftclick 
	Delay 3000
	dm_ret = dm.FindStr(78, 226, 503, 399, "風", "fefefe-010101", 1.0, intX, intY)
	dm.moveto intX, intY
	Delay 10
	dm.leftclick 
	Delay 300
	dm.moveto 352, 430
	Delay 10
	dm.leftclick 
	Delay 5000
	
End Sub
Sub into()
intX = 0 : int = 0
dm_ret = dm.FindStr(70,91,715,467,"修練場管","6be24a-010101",1.0,intX,intY)
If intX > 0 and intY > 0 Then 
dm.moveto intX + 35, intY + 70
Delay 10
dm.leftclick 
End If
Delay 3000
dm.moveto 184, 124
Delay 10
dm.leftclick 
Delay 3000
intX = 0 : int = 0
dm_ret = dm.FindStr(285,413,352,443,"入場","fec666-010101",1.0,intX,intY)
If intX > 0 and intY > 0 Then 
dm.moveto 442, 330
Delay 200
dm.leftclick 
'Delay 200
'dm.moveto 442, 330
'Delay 10
'dm.leftclick 
'Delay 200
'dm.moveto 442, 330
'Delay 10
'dm.leftclick 
'Delay 200
'dm.moveto 442, 330
'Delay 10
'dm.leftclick 
'Delay 200
'dm.moveto 442, 330
'Delay 10
'dm.leftclick 
'Delay 200
'dm.moveto intX, intY
'Delay 10
'dm.leftclick 
Delay 5000
Else
End If

End Sub
Sub OnScriptExit()

dm_ret = dm.UnBindWindow()

End Sub

UserVar var11=0 "回城時間"
UserVar var9=DropList{"開啟":"3610"|"關閉":"999999"}=10 "自動練功符"
UserVar var2=DropList{"開啟60分":"3605"|"開啟30分":"1805"|"開啟15分":"905"|"關閉":"999999"}=999999 "自動逆天符"
UserVar var1=DropList{"開啟":"20"|"關閉":"999999"}=10 "自動料理"
UserVar var5=DropList{"烏龍膏":"烏龍膏"|"牛黃清心元":"牛黃清心元"|"人參":"人參"|"關閉":"0"}=1 "自動買補"
UserVar var6=DropList{"開啟":"600"|"關閉":"999999"}=1 "避開自擋"
UserVar var7=DropList{"真白虎訣":"真白虎訣"|"真朱雀訣":"真朱雀訣"|"猛虎柔體":"猛虎柔體"|"狂熊強身":"狂熊強身"|"關閉":"0"}=0 "檢查技能"
UserVar var8=DropList{"九魔神仙的手鐲":"九魔神仙的手鐲"|"神將的念珠":"神將的念珠"|"關閉":"0"}=0 "手環"
UserVar var3=0 "運行時間(時)"
UserVar var4=0 "運行時間(分)"
Dim a, b, t0, t1, t2, t3, t4, t5, c, d, CO, e, y, f
t0 = now : t1 = now : t2 = now : t4 = now : t5 = now : t6 = now

d = var3 * 3600 + var4 * 60
a = var1 * 1
b = var2 * 1
c = var7
e = var6 * 1
f = 0
g = var9 * 1
h = var11 * 3600


//Call time()

Rem start
//dm_ret = dm.BindWindow(hwnd, "dx2", "windows", "windows", 0)
//dm_ret = dm.BindWindowEx(hwnd,"dx2","windows","windows","dx.public.active.message",0)
Delay 3000

Rem checkover
intX = 0 : intY = 0
dm.KeyPress 46
Delay 100
dm_ret = dm.FindStr(330, 1, 652, 190, "店員|僧侶|店小二", "6be24a-010101", 1.0, intX, intY)
If intX > 0 and intY > 0 Then 
	intX = 0 : intY = 0
	Goto startall
End If

//If DateDiff("s", t0, now) >= d Then 
//        EndScript
//Delay 100
//End If


//重新攻擊
'Rem reattack
'If DateDiff("s", t4, now) >= e Then 
'Delay 1000
'dm.MoveTo 404, 219
'Delay 10
'dm.LeftClick
'Delay 1000
'dm.MoveTo 341, 220
'Delay 10
'dm.LeftClick
'Delay 1000
't4 = now
'End If


Rem checkliao
If DateDiff("s", t1, now) >= a Then 
        Call useliao()
Delay 100
t1 = now
End If
Rem checkfu
If DateDiff("s", t2, now) >= b Then 
        Call usefu()
Delay 100
t2 = now
End If

If f = 1 Then 
Rem useskill
If DateDiff("s", t3, now) >= 700 Then
        Call setskill()
		Delay 100
		f = 0
End If
End If

Rem checkliancong
If DateDiff("s", t5, now) >= g Then 
        Call useliancong()
        Delay 100
		t5 = now
End If
Rem backtown
If h = 0 Then 
	Else
If DateDiff("s", t6, now) >= h Then 
        Delay 100
        t6 = now
        Goto startall
End If

End If



Rem checkF2
If dm.CmpColor(681, 533, "c88c38", 1) = 1 then
    Delay 1000
dm.KeyPress 113
    Delay 1000
Else
End If

Rem checkF3
If dm.CmpColor(725, 533, "c88c38", 1) = 0 then
    Delay 1000
dm.KeyPress 114
    Delay 1000
Else
End If

Rem checkF4
If dm.CmpColor(766, 533, "c88c38", 1) = 0 then
Delay 1000
dm.KeyPress 115
    Delay 1000
Else
End If
//////////////////////////
//開啟道具籃
Rem openF10
Delay 1000
dm.KeyPress 121
Delay 1000
If dm.CmpColor(680, 9, "ffffff", 1) = 0 then
'Goto checkear
Else 
Delay 1000
Goto openF10
End If



//檢查耳環
'Rem checkear
'If dm.CmpColor(581, 133, "f0f2f5", 1) = 0 then
'    Delay 1000
'    Call repairear()
'Else
'End If

//檢查SP
If var5 = 0 Then
Else 
Rem checksp
If dm.CmpColor(650, 570, "004068", 1) = 1 then
dm.KeyPress 121
Delay 1000
Call buy()
Delay 1000
dm.KeyPress 121
Else
End If
End If

//檢查手環
'Rem checkring
'dm_ret = dm.FindPic(91, 305, 162, 388, Var8 & "壞.bmp", "000000", 0.9, 0, intX, intY)
'If intX > 0 And intY > 0 Then 
'Delay 1000
'Call repairring()
'Else
'End If


Delay 1000
dm.KeyPress 121
Delay 1000

//檢查技能
'If c = 0 Then 
'Else 
'If f = 0 Then 
'Rem checkskill
'If dm.CmpColor(689, 559, "181c18", 1) = 0 then
'Call countskill()
'f = 1
'End If
'Else 
'End If
'End If
Delay 10000
Delay 500
Goto start
Sub setskill()
	Delay 50
    dm.KeyPress 121
    Delay 500
    dm_ret = dm.FindPic(560, 20, 800, 203, Var7 & "書.bmp", "000000", 0.9, 0, intX, intY)
	If intX > 0 And intY > 0 Then 
	dm.moveto intX + 15, intY + 15
	End If
    Delay 50
    dm.LeftDoubleClick 
    Delay 50
    dm.LeftDoubleClick 
    Delay 50
    Rem usebook
    Delay 500
    dm.KeyPress 118
    Delay 500

    
    dm.KeyPress 122
    Delay 500
    dm.MoveTo 537, 64
    Delay 50
    dm.LeftClick
    Delay 1000
    //////////////////////////////////////////////////////////
Rem findskill
//找出武功圖片
dm_ret = dm.FindPic(186, 84, 456, 237, Var7 & ".bmp", "000000", 0.9, 0, intX3, intY3)
If intX3 > 0 And intY3 > 0 Then 
Delay 50
dm.MoveTo intX3 + 15, intY3 + 15
Delay 50
dm.LeftClick
Delay 100
//確認武功名字
dm_ret = dm.FindPic(311, 234, 444, 269, Var7 & "字.bmp", "000000", 0.9, 0, intX4, intY4)
If intX4 > 0 And intY4 > 0 Then 
Goto setskill2
Else 
End If

Else 
Delay 50
dm.MoveTo 460, 224
Delay 50
dm.LeftClick
Delay 200
Goto findskill
End If



	//雙擊武功
	Rem setskill2
    dm.MoveTo intX3 + 15, intY3 + 15
    Delay 50
    dm.LeftDoubleClick 
    Delay 50
    dm.LeftDoubleClick 
    Delay 50
    dm.LeftDoubleClick 
    Delay 50
    dm.LeftDoubleClick
    Delay 1000
    dm.KeyPress 122
    Delay 1000
    dm.KeyPress 113
    Delay 1000
End Sub
Sub useliancong()
	Delay 50
	dm.keyPress 121
    Delay 1000
    dm_ret = dm.FindPic(560, 20, 800, 203, "山西省練功符.bmp", "000000", 0.9, 0, intX, intY)
	If intX > 0 And intY > 0 Then 
    dm.MoveTo intX + 15, intY + 15
    End if
	Delay 50
    dm.LeftDoubleClick
    Delay 100
    dm.KeyPress 118
    Delay 500
    dm.KeyPress 121
    Delay 1000
    intX = 0
    intY = 0
End Sub
Sub repairring()
    Delay 500
	dm.MoveTo intX + 15, intY + 15
	Delay 50
    dm.LeftDoubleClick
	Delay 50
    dm.LeftDoubleClick
    Delay 1000
    dm_ret = dm.FindPic(560, 20, 800, 203, "手鐲修理道具.bmp", "000000", 0.9, 0, intX, intY)
	If intX > 0 And intY > 0 Then 
    dm.MoveTo intX + 15, intY + 15
    End if
	Delay 50
    dm.LeftDoubleClick
    Delay 1000
    dm.KeyPress 118
    Rem checkrepairwindow
    Delay 100
    If dm.CmpColor(54, 432, "fec666", 1) = 0 then
	Delay 50
	Else 
	Delay 100
	Goto checkrepairwindow
	End If
	
	dm_ret = dm.FindPic(560, 20, 800, 203, Var8 & "壞.bmp", "000000", 0.9, 0, intX, intY)
	If intX > 0 And intY > 0 Then
    dm.MoveTo intX + 15, intY + 15
    End if
	Delay 50
    dm.LeftDoubleClick
    Delay 50
    dm.LeftDoubleClick
    Delay 500
	Rem clickrepairok1
    dm.MoveTo 98, 440
	Delay 50
    dm.LeftClick
    Delay 4000
    If dm.CmpColor(338, 437, "fec666", 1) = 0 then
	Else 
	Delay 100
	Goto clickrepairok1
	End If
	
	Rem clickrepairok2
    dm.MoveTo 338, 437
	Delay 50
    dm.LeftClick
    Delay 5000
    If dm.CmpColor(338, 437, "fec666", 1) = 0 Then 
    Delay 100
    Goto clickrepairok2
	Else 
    End If
    Rem checkrepairrok3
    If dm.CmpColor(65, 223, "ffffff", 1) = 0 then
    Delay 1000
	Else 
	Delay 100
	Goto checkrepairrok3
	End If
    dm.keypress 27
	Delay 1000
	dm.keypress 121
	Delay 500
	dm_ret = dm.FindPic(560, 20, 800, 203, Var8 & ".bmp", "000000", 0.9, 0, intX, intY)
	If intX > 0 And intY > 0 Then 
	dm.MoveTo intX + 15, intY + 15
	End if
	Delay 50
    dm.LeftDoubleClick
    Delay 50
    dm.LeftDoubleClick
    Delay 1000
    intX = 0
    intY = 0
    
End Sub
Sub repairear()
    Delay 1000
	dm.MoveTo 589, 141
	Delay 50
    dm.LeftClick
    Delay 1000
    dm.RightClick
    Delay 1000
    dm.MoveTo 440, 202
	Delay 50
    dm.LeftClick
    Delay 2000
    dm.MoveTo 379, 436
	Delay 50
    dm.LeftClick
    Delay 5000
    dm.MoveTo 598, 151
	Delay 50
    dm.LeftDoubleClick
    Delay 1000
    dm.LeftDoubleClick
    Delay 2000
End Sub
Sub buy()


	dm.MoveTo 785, 36
	Delay 50
    dm.LeftClick
    Delay 2000
    
    Rem movetobuy
    If dm.CmpColor(397, 153, "5080C8", 1) = 0 then
	Delay 50
	Else 
	Delay 100
	dm.MoveTo 785, 36
	Delay 50
    dm.LeftClick
	Delay 50
    Goto movetobuy
	End If
	
    Delay 2000
    dm.MoveTo 401, 245
	Delay 50
	dm.LeftClick
	Delay 1000
    dm.MoveTo 400, 177
	Delay 50
	dm.LeftClick
        Rem waitbuy
    If dm.CmpColor(267, 13, "b71818", 1) = 0 then
		Delay 1000
    	dm.MoveTo 223, 137
	Delay 50
        dm.LeftClick
        Delay 1000
        dm.MoveTo 99, 442
	Delay 50
        dm.LeftClick
        Rem waitbuy2
        If dm.CmpColor(37, 183, "d17917", 1) = 0 then
        	Goto buy2
		Else 
			Delay 100
			Goto waitbuy2
        End If
    Else 
    	Delay 100
    	Goto waitbuy
	End If
        Rem buy2
        dm_ret = dm.FindPic(3, 114, 228, 371, Var5 & ".bmp", "000000", 0.9, 0, intX, intY)
		If intX > 0 And intY > 0 Then 
	Delay 50
		Call checkfoodposition()
		dm.MoveTo intX, intY
		Delay 50
		dm.LeftClick
		Else 
		Delay 50
		dm.MoveTo 213, 352
	Delay 50
		dm.LeftClick
		Delay 50
		Goto buy2
        End If
        
        Delay 300
        dm.MoveTo 99, 439
	Delay 50
        dm.LeftClick
        Delay 1000
        dm.KeyPress 121
        Delay 2000
        Rem checkfood
        	dm.MoveTo 596, 150
	Delay 50
        	dm.LeftDoubleClick
	Delay 50
        	dm.LeftDoubleClick
        	Delay 1000
        	For 20
        	dm.KeyPress 117
        	Delay 300
			Next
        	dm.KeyPress 121
        	Delay 1000
        	dm.KeyPress 115
        	Delay 500
        	dm.KeyPress 115
        	Delay 500
        	dm.MoveTo 102, 334
	Delay 50
			dm.LeftClick


'        	Rem checkposition1
'        	IfColor 658,76,"4098C8",0 Then
'        		MoveTo 221, 300
'				LeftClick 1
'				Delay 1000
'			Else 
'				Goto checkposition2
'			End If
'			
'			Rem checkposition2
'			IfColor 713, 42, "B0D8E8", 0 Then
'				MoveTo 342, 248
'				LeftClick 1
'				Delay 1000
'			Else 
'				Goto checkposition3
'			End If
'			
'			Rem checkposition3
'			IfColor 591, 132, "285890", 0 Then
'				MoveTo 170, 338
'				LeftClick 1
'				Delay 1000
'			Else 
'				Goto checkposition4
'			End If
'			
'			Rem checkposition4
'			IfColor 711,90,"488FBF",0 Then
'				MoveTo 280, 279
'				LeftClick 1
'				Delay 1000
'			Else
'			End If



End Sub
Sub usefu()
	
Delay 1000
    dm.keyPress 121
    Delay 1000
    dm_ret = dm.FindPic(560, 20, 800, 203, "超奇天烈逆天符.bmp", "000000", 0.9, 0, intX, intY)
	If intX > 0 And intY > 0 Then 
    dm.MoveTo intX + 15, intY + 15
    End if
	Delay 50
    dm.LeftDoubleClick
    Delay 100
    dm.KeyPress 118
    Delay 500
    dm.KeyPress 121
    Delay 1000
    intX = 0
    intY = 0
    
End Sub
Sub useliao()
	Delay 1000
    dm.KeyPress 121
    Delay 1000
    intX = 0
    intY = 0
    
    dm_ret = dm.FindPic(560, 20, 800, 203, "河蝦泡菜湯.bmp|燉煮花鱸.bmp|2燉煮花鱸.bmp", "000000", 0.9, 0, intX, intY)
	If intX > 0 And intY > 0 Then 
    dm.MoveTo intX + 15, intY + 15
    Delay 50
    dm.LeftDoubleClick
    Delay 500
    dm.KeyPress 118
    Delay 500
    dm.KeyPress 121
    Delay 1000
    Else
    MessageBox "123"
    End if
	
End Sub
Sub time()
a = 0 : b = 0
For 2
		sj(b)=thetime(a)
	a = a + 1 : b = b + 1
	Delay 10
Next
End Sub
Sub countskill()
	t3 = now
	
End Sub
Sub checkfoodposition()
	        
If intY > 122 and intY < 162 Then 
	intX = 171
	intY = 152
End If
 //第2格
If intY > 162 and intY < 202 Then 
	intX = 171
	intY = 192
End If
 //第3格
If intY > 202 and intY < 242 Then 
	intX = 171
	intY = 232
End If
 //第4格
If intY > 242 and intY < 282 Then 
	intX = 171
	intY = 272
End If
 //第5格
If intY > 282 and intY < 322 Then 
	intX = 171
	intY = 312
End If
 //第6格
If intY > 350 and intY < 390 Then 
	intX = 171
	intY = 352
End If
        
End Sub
