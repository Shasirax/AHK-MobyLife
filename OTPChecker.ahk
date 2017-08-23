#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Tip, OTPChecker

Loop
{
	WinWaitActive, SVC Login 
	{
		FileRead, USER, C:\GSPN\username.txt
		FileRead, IMEI, C:\GSPN\IMEI.txt
		FileReadLine, OTP, C:\GSPN\otp.txt, 1
		FileReadLine, masterotp, \\192.168.1.228\Samsung\IMEI\masterotp.txt, 1
		Send {Tab}
		SendRaw %USER%
		Send {TAB}
		SendRaw %IMEI%
		Send {TAB}
		SendRaw %OTP%
		Send {TAB}
		SendRaw %masterotp%
		Send {enter}
	}
}
return