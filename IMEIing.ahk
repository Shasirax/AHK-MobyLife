#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Tip, IMEIing. Reads files for IMEI passwords

;Deklarera variabler
global USER
	FileRead, USER, C:\GSPN\username.txt
global PW
	FileRead, PW, C:\GSPN\password.txt
global IMEI
	FileRead, IMEI, C:\GSPN\IMEI.txt
global HHP
	FileRead, HHP, C:\GSPN\HHP.txt
global OTPloc
	OTPloc = C:\GSPN\otp.txt
global mOTPloc
	mOTPloc = \\192.168.1.228\Samsung\IMEI\masterotp.txt

;Settings
FileReadLine, hotkeyupdater, C:\GSPN\settings.txt, 2
	Hotkey, %hotkeyupdater%, HotKey1 ;Visa info
FileReadLine, hotkeyupdater, C:\GSPN\settings.txt, 4
	Hotkey, %hotkeyupdater%, HotKey2 ;OTP uppdaterare, med timer
FileReadLine, hotkeyupdater, C:\GSPN\settings.txt, 6
	Hotkey, %hotkeyupdater%, HotKey3 ;Master OTP uppdaterare
FileReadLine, hotkeyupdater, C:\GSPN\settings.txt, 8
	Hotkey, %hotkeyupdater%, HotKey4 ;Password utskrivning
FileReadLine, hotkeyupdater, C:\GSPN\settings.txt, 10
	Hotkey, %hotkeyupdater%, HotKey5 ;Master OTP utskrivning
FileReadLine, hotkeyupdater, C:\GSPN\settings.txt, 12
	Hotkey, %hotkeyupdater%, HotKey6 ;HHP utskrivning
FileReadLine, hotkeyupdater, C:\GSPN\settings.txt, 14
	Hotkey, %hotkeyupdater%, HotKey7 ;Öppna Daseul

;***Visa info***
HotKey1:
	FileReadLine, OTP, %OTPloc%, 1
	FileReadLine, TIMER, %OTPloc%, 2
	FileReadLine, mOTP, %mOTPloc%, 1
	FileReadLine, mOTPTime, %mOTPloc%, 2
	MsgBox, 0,, Username: %USER%.`nPassword: %PW%.`nIMEI PW: %IMEI%.`nHHP PW: %HHP%`nOTP: %OTP%`nTime made: %TIMER%`nMaster: %mOTP%`nMaster time made: %mOTPTime% 
Return

;***OTP uppdaterare, med timer***
HotKey2:
	FileReadLine, OTP1, %OTPloc%, 1
	FileReadLine, OTPTime, %OTPloc%, 2
	InputBox, otp2, New OTP, Gammal OTP: %OTP1%`nTid uppdaterad: %OTPTime%,,250,135,850,400,,,%OTP1%
	if ErrorLevel
		MsgBox, CANCEL was pressed.
	else
		file := FileOpen(OTPloc, "w")
		file.Write(otp2)
		file.Write("`n")
		file.Write(A_Hour)
		file.Write(":")
		file.Write(A_Min)
		file.Close()
		SetTimer OTP_Triggered, -21600000
Return

;***Master OTP uppdaterare***
HotKey3:
	FileReadLine, mOTP1, %mOTPloc%, 1
	FileReadLine, mOTPTime, %mOTPloc%, 2
	InputBox, motp2, New OTP, Gammal Master OTP: %mOTP1%`nTid uppdaterad: %mOTPTime%,,250,135,,,,,%mOTP1%
	if ErrorLevel
		MsgBox, CANCEL was pressed.
	else
		file := FileOpen(mOTPloc, "w")
		file.Write(motp2)
		file.Write("`n")
		file.Write(A_Hour)
		file.Write(":")
		file.Write(A_Min)
		file.Write(" ")
		file.Write(A_DD)
		file.Write("/")
		file.Write(A_MM)
		file.Close()
Return

;Timer
OTP_Triggered:
	MsgBox, OTP expired!
Return

;***Password***
HotKey4:
	SendRaw, %PW%
	Send, {Enter}
Return

;***Master OTP***
HotKey5:
	FileReadLine, mOTP, %mOTPloc%, 1
	SendRaw, %mOTP%
Return

;***HHP***
HotKey6:
	SendRaw, %HHP%
	Send, {Enter}
Return

HotKey7:
	WinActivate, DASEUL
	WinActivate, PYTHIA
Return

;***OTPinlogg***
:CO:OTP::
	SendRaw, %USER%
	Send, {Tab}
	SendRaw, %IMEI%
	Send, {Tab}
	FileReadLine, OTP, %OTPloc%, 1
	SendRaw, %OTP%
	;Loop, 7 { ;Why Must, WHY?!
	;	Send, {Tab}
	;	Sleep, 10
	;}
	;FileReadLine, mOTP, %mOTPloc%, 1
	;SendRaw, %mOTP%
Return