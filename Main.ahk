#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;;                            
;;;      - This script is for mapping CapsLock and Win (start) keys    
;;;		 - CapsLock should be mapped to F13 via registry
;;;		 - Win (start) should be mapped to F14 via registry
;;;		 - Registry maping can done with sharpkeys.exe
;;;
;;;      __ THIS SCRIPT USAGE ___
;;;			
;;;	     - No active window maps are found under the "DEFAULTS" section
;;;		 - Active window maps are found under the "windowName" section
;;;		 - Shift + Ctrl + Alt + Insert = will Reload script
;;;      - Shift + Ctrl + Alt + End = will exit script
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                        
;;                                 DEFAULTS
;;                                           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

vkC0 & F13:: CapsLock

+^!Insert:: Reload
+^!End:: ExitApp


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                        
;;                                 Blender
;;                                           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, Blender 
	F13:: 
		Send {LCtrl down}{LShift down}{LAlt down}{vkBA down} ;vkBA = ;
		KeyWait F13
		Send {LCtrl up}{LShift up}{LAlt up}{vkBA up} 
	return
	
	F14:: 	
		Send {LCtrl down}{LShift down}{LAlt down}{vkC0 down} ;vkC0 = ` (~ key)
		KeyWait F14
		Send {LCtrl up}{LShift up}{LAlt up}{vkC0 up} 
	return
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                        
;;                                 Chrome
;;                                           
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;#IfWinActive, ahk_exe chrome.exe






