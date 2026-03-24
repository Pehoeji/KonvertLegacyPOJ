Attribute VB_Name = "tp2uni"
Option Explicit
Const TW_AB_SIZE As Integer = 63
Dim taiA(TW_AB_SIZE) As String ' tai Alphabet
Dim taiU(TW_AB_SIZE) As String ' Taigi Unicode encoding table
Dim tp As String

Sub Tp2Uni()

    Dim r As Range
    Dim c As Range  'each character
    Dim hot2000 As String
    Dim which As Integer
    Dim i As Integer
    
    
    ' following the sequence of a, e, i, m, n, o, ou, u, ii, (lower case, N, upper case)
    ' note that: (a e i o u: 5 * 2 + m n ii: 3 * 5 + ou:6) * 2 + nn:1 = 63
    tp = ChrW$(228) + ChrW$(227) + _
         ChrW$(235) + ChrW$(231) + _
         ChrW$(&H201E) + ChrW$(&H2026) + _
         ChrW$(&H2022) + ChrW$(&H2013) + ChrW$(&H2014) + ChrW$(&H2DC) + ChrW$(&H2122) + _
         ChrW$(161) + ChrW$(162) + ChrW$(163) + ChrW$(164) + ChrW$(241) + _
         ChrW$(246) + ChrW$(245) + _
         ChrW$(172) + ChrW$(175) + ChrW$(177) + ChrW$(178) + ChrW$(179) + ChrW$(180) + _
         ChrW$(252) + ChrW$(253) + _
         ChrW$(187) + ChrW$(188) + ChrW$(189) + ChrW$(190) + ChrW$(191) + _
         ChrW$(176) + _
         ChrW$(196) + ChrW$(195) + _
         ChrW$(203) + ChrW$(199) + _
         ChrW$(&H201A) + ChrW$(&H192) + _
         ChrW$(&H2C6) + ChrW$(&H2030) + ChrW$(&H160) + ChrW$(&H2039) + ChrW$(&H152) + _
         ChrW$(&H161) + ChrW$(&H203A) + ChrW$(&H153) + ChrW$(&H178) + ChrW$(209) + _
         ChrW$(214) + ChrW$(213) + _
         ChrW$(165) + ChrW$(166) + ChrW$(167) + ChrW$(168) + ChrW$(170) + ChrW$(171) + _
         ChrW$(220) + ChrW$(221) + _
         ChrW$(181) + ChrW$(182) + ChrW$(184) + ChrW$(185) + ChrW$(186)
        
    i = 1
    taiA(i) = "a7": taiU(i) = ChrW$(&H101): i = i + 1
    taiA(i) = "a8": taiU(i) = "a" + ChrW$(&H30D): i = i + 1
    taiA(i) = "e7": taiU(i) = ChrW$(&H113): i = i + 1
    taiA(i) = "e8": taiU(i) = "e" + ChrW$(&H30D): i = i + 1
    taiA(i) = "i7": taiU(i) = ChrW$(&H12B): i = i + 1
    taiA(i) = "i8": taiU(i) = "i" + ChrW$(&H30D): i = i + 1
    taiA(i) = "m2": taiU(i) = ChrW$(&H1E3F): i = i + 1
    taiA(i) = "m3": taiU(i) = "m" + ChrW$(&H300): i = i + 1
    taiA(i) = "m5": taiU(i) = "m" + ChrW$(&H302): i = i + 1
    taiA(i) = "m7": taiU(i) = "m" + ChrW$(&H304): i = i + 1
    taiA(i) = "m8": taiU(i) = "m" + ChrW$(&H30D): i = i + 1
    taiA(i) = "n2": taiU(i) = ChrW$(&H144): i = i + 1
    taiA(i) = "n3": taiU(i) = ChrW$(&H1F9): i = i + 1
    taiA(i) = "n5": taiU(i) = "n" + ChrW$(&H302): i = i + 1
    taiA(i) = "n7": taiU(i) = "n" + ChrW$(&H304): i = i + 1
    taiA(i) = "n8": taiU(i) = "n" + ChrW$(&H30D): i = i + 1
    taiA(i) = "o7": taiU(i) = ChrW$(&H14D): i = i + 1
    taiA(i) = "o8": taiU(i) = "o" + ChrW$(&H30D): i = i + 1
    taiA(i) = "ou": taiU(i) = "o" + ChrW$(&H358): i = i + 1
    taiA(i) = "ou2": taiU(i) = ChrW$(&HF3) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou3": taiU(i) = ChrW$(&HF2) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou5": taiU(i) = ChrW$(&HF4) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou7": taiU(i) = ChrW$(&H14D) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou8": taiU(i) = "o" + ChrW$(&H30D) + ChrW$(&H358): i = i + 1
    taiA(i) = "u7": taiU(i) = ChrW$(&H16B): i = i + 1
    taiA(i) = "u8": taiU(i) = "u" + ChrW$(&H30D): i = i + 1
    taiA(i) = "ii": taiU(i) = ChrW$(&H1E73): i = i + 1
    taiA(i) = "ii2": taiU(i) = ChrW$(&H1E73) + ChrW$(&H301): i = i + 1
    taiA(i) = "ii3": taiU(i) = ChrW$(&H1E73) + ChrW$(&H300): i = i + 1
    taiA(i) = "ii5": taiU(i) = ChrW$(&H1E73) + ChrW$(&H302): i = i + 1
    taiA(i) = "ii8": taiU(i) = ChrW$(&H1E73) + ChrW$(&H30D): i = i + 1
    taiA(i) = "nn": taiU(i) = ChrW$(&H207F): i = i + 1
    taiA(i) = "A7": taiU(i) = ChrW$(&H100): i = i + 1
    taiA(i) = "A8": taiU(i) = "A" + ChrW$(&H30D): i = i + 1
    taiA(i) = "E7": taiU(i) = ChrW$(&H112): i = i + 1
    taiA(i) = "E8": taiU(i) = "E" + ChrW$(&H30D): i = i + 1
    taiA(i) = "I7": taiU(i) = ChrW$(&H12A): i = i + 1
    taiA(i) = "I8": taiU(i) = "I" + ChrW$(&H30D): i = i + 1
    taiA(i) = "M2": taiU(i) = ChrW$(&H1E3E): i = i + 1
    taiA(i) = "M3": taiU(i) = "M" + ChrW$(&H300): i = i + 1
    taiA(i) = "M5": taiU(i) = "M" + ChrW$(&H302): i = i + 1
    taiA(i) = "M7": taiU(i) = "M" + ChrW$(&H304): i = i + 1
    taiA(i) = "M8": taiU(i) = "M" + ChrW$(&H30D): i = i + 1
    taiA(i) = "N2": taiU(i) = ChrW$(&H143): i = i + 1
    taiA(i) = "N3": taiU(i) = ChrW$(&H1F8): i = i + 1
    taiA(i) = "N5": taiU(i) = "N" + ChrW$(&H302): i = i + 1
    taiA(i) = "N7": taiU(i) = "N" + ChrW$(&H304): i = i + 1
    taiA(i) = "N8": taiU(i) = "N" + ChrW$(&H30D): i = i + 1
    taiA(i) = "O7": taiU(i) = ChrW$(&H14C): i = i + 1
    taiA(i) = "O8": taiU(i) = "O" + ChrW$(&H30D): i = i + 1
    taiA(i) = "Ou": taiU(i) = "O" + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou2": taiU(i) = ChrW$(&HD3) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou3": taiU(i) = ChrW$(&HD2) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou5": taiU(i) = ChrW$(&HD4) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou7": taiU(i) = ChrW$(&H14C) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou8": taiU(i) = "O" + ChrW$(&H30D) + ChrW$(&H358): i = i + 1
    taiA(i) = "U7": taiU(i) = ChrW$(&H16A): i = i + 1
    taiA(i) = "U8": taiU(i) = "U" + ChrW$(&H30D): i = i + 1
    taiA(i) = "Ii": taiU(i) = ChrW$(&H1E72): i = i + 1
    taiA(i) = "Ii2": taiU(i) = ChrW$(&H1E72) + ChrW$(&H301): i = i + 1
    taiA(i) = "Ii3": taiU(i) = ChrW$(&H1E72) + ChrW$(&H300): i = i + 1
    taiA(i) = "Ii5": taiU(i) = ChrW$(&H1E72) + ChrW$(&H302): i = i + 1
    taiA(i) = "Ii8": taiU(i) = ChrW$(&H1E72) + ChrW$(&H30D)

     
    If MsgBox("To convert TP encoding to Unicode WS1?", vbYesNo) <> vbYes Then
        Exit Sub
    End If


    Application.Caption = "Converting TP encoding to Unicode WS1. Please wait..."
    'Application.ScreenUpdating = False
    System.Cursor = wdCursorWait

    If (Selection.Start <> Selection.End) Then
        Set r = Selection.Range
    Else
        Set r = ActiveDocument.Content
    End If
    

    While r <> ""
    Set c = r.Characters.First
    With c
        If left(.Font.Name, 10) = "Taiwanese " Then
            which = InStr(tp, .Text)
            If which > 0 Then
                ' found
                .Text = taiU(which)
                .CharacterWidth = wdWidthHalfWidth
            End If
        End If
    End With
    r.Start = c.End
    Wend
    
    
    System.Cursor = wdCursorNormal
    Application.Caption = ""
    Application.ScreenUpdating = True
    

End Sub



