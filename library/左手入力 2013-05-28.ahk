 
KeyIsDown = 0
 
UpperDelay = 1000
 
UpperDelay *= -1
 
 
 
RegRead KLang, HKEY_CURRENT_USER, Keyboard Layout\Preload, 1
 
StringRight KLang, KLang, 4
 
If (!KLang)
 
  KLang := A_Language
 
 
 
If (KLang = "0407") {
 
  ; 0407 DE_de QWERTZ mirror set
 
  original := "^12345qwertasdfgyxcvb"
 
  mirrored := "s09876poiuzolkjh-.,mn"
 
} Else If (KLang = "040c" || KLang = "040C") {
 
  ; 040c FR_fr AZERTY mirror set        
 
  original := "2&e" . """" . "'(azertqsdfgwxcvb"   ; split up string for better
 
  mirrored := ")ac" . "_"  . "e-poiuymlkjh!:;,n"   ; human readability
 
} Else If (KLang = "0411") {
 
  ; 0411 JIS QUETRY mirror set
 
  original := "12345qwertasdfgzxcvb"
 
  mirrored := "09876poiuy;lkjh/.,mn"
 
} Else {
 
  ; 0409 US_us QWERTY mirror set
 
  original := "``" . "12345qwertasdfgzxcvb"   ; split up string for better
 
  mirrored := "'"  . "09876poiuy;lkjh/.,mn"   ; human readability
 
}
 
 
 
Loop % StrLen(original)
 
{
 
  c1 := SubStr(original, A_Index, 1)
 
  c2 := SubStr(mirrored, A_Index, 1)
 
  Hotkey Space & %c1%, DoHotkey, Off
 
  Hotkey Space & %c2%, DoHotkey, Off
 
  Hotkey %c1%, KeyDown, Off
 
  Hotkey %c1% UP, KeyUP, Off
 
  Hotkey %c2%, KeyDown, Off
 
  Hotkey %c2% UP, KeyUP, Off
 
}
 
   
 
Hotkey, Space & Control, Send_Enter, Off
 
Hotkey, Space & Tab, Send_Backspace, Off
 
Hotkey, Space, Send_Space, Off
 
Hotkey, +Space, Send_ShiftSpace, Off



Send_Enter:
 
    Send, {Enter}
 
    Return
 
Send_Backspace:
 
    Send, {Backspace}
 
    Return
 
Send_Space:
 
    Send, {Space}
 
    Return
 
Send_ShiftSpace:
 
    Send, +{Space}
 
    Return
 
 
 
DoHotkey:
 
    StartTime := A_TickCount
 
    StringRight ThisKey, A_ThisHotkey, 1
 
    i1 := InStr(original, ThisKey)
 
    i2 := InStr(mirrored, ThisKey)
 
    If (i1+i2 = 0) {
 
        MirrorKey := ThisKey
 
    } Else If (i1 > 0) {
 
        MirrorKey := SubStr(mirrored, i1, 1)
 
    } Else {
 
        MirrorKey := SubStr(original, i2, 1)
 
    }
 
 
 
    Modifiers := ""
 
    If (GetKeyState("LWin") || GetKeyState("RWin")) {
 
        Modifiers .= "#"
 
    }
 
    If (GetKeyState("Control")) {
 
        Modifiers .= "^"
 
    }
 
    If (GetKeyState("Alt")) {
 
        Modifiers .= "!"
 
    }
 
    If (GetKeyState("Shift") + GetKeyState("CapsLock", "T") = 1) {
 
        Modifiers .= "+"
 
    }
 
 
 
    If (KeyIsDown < 1 or ThisKey <> LastKey)
 
    {
 
        KeyIsDown := True
 
        LastKey := ThisKey
 
        Send %Modifiers%{%MirrorKey%}
 
        SetKeyDelay, 65535
 
        SetTimer, ReplaceWithUpperMirror, %UpperDelay%
 
    }
 
    Return
 
 
 
KeyDown:
 
   Key:=A_ThisHotkey
 
        If (KeyIsDown < 1 or Key <> LastKey)
 
           {
 
                KeyIsDown := True
 
                LastKey := Key
 
                Send %Key%
 
                SetKeyDelay, 65535
 
                SetTimer, ReplaceWithUpper, %UpperDelay%
 
           }
 
        Return
 
 
 
KeyUp:
 
   Key:=A_ThisHotkey
 
        SetTimer, ReplaceWithUpper, Off
 
        SetTimer, ReplaceWithUpperMirror, Off
 
        KeyIsDown := False
 
        Return
 
 
 
ReplaceWithUpper:
 
    SetKeyDelay, -1
 
    Send {Backspace}+%LastKey%
 
    Return
 
 
 
ReplaceWithUpperMirror:
 
    SetKeyDelay, -1
 
    Send {Backspace}+%MirrorKey%
 
    Return
 
 
 
ToggleHalfKeyboard()
 
{
 
    global original, mirrored
 
    Loop % StrLen(original)
 
    {
 
        c1 := SubStr(original, A_Index, 1)
 
        c2 := SubStr(mirrored, A_Index, 1)
 
        Hotkey Space & %c1%, Toggle
 
        Hotkey Space & %c2%, Toggle
 
        Hotkey %c1%, Toggle
 
        Hotkey %c1% UP, Toggle
 
        Hotkey %c2%, Toggle
 
        Hotkey %c2% UP, Toggle
 
    }
 
    Hotkey Space & Control, Toggle
 
    Hotkey Space, Toggle
 
    Hotkey Space & Tab, Toggle
 
    Hotkey +Space, Toggle
 
    Return
 
}


vk1Dsc07B & Esc::ToggleHalfKeyboard()

vk1Dsc07B & s::send,{bs}

sc03a::enter

