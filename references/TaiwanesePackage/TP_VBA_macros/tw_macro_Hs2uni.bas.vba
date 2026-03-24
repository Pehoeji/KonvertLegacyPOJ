Attribute VB_Name = "Hs2uni"
Option Explicit
Const TW_AB_SIZE As Integer = 96
Dim taiA(TW_AB_SIZE) As String ' tai Alphabet
Dim taiU(TW_AB_SIZE) As String ' Taigi Unicode encoding table
Sub Hotsys2000_Uni()

    Dim r As Range
    Dim c As Range  'each character
    Dim hot2000 As String
    Dim which As Integer
    Dim i As Integer
    Dim code As Integer
    
    
    ' following the sequence of a, e, i, m, n, o, ou, u, ii:, (lower case, N, upper case)
    ' note that: ou has 6 characters, ii has 5 characters, total (8 * 5 + 6) * 2 + 2 = 94
    ' note that: HOTSYS2000 has 2 'N' encodings, 2 'o2', 2 'm7'
    hot2000 = ChrW$(161) + ChrW$(&H2026) + ChrW$(&H192) + ChrW$(&H201E) + ChrW$(&H2020) + _
        ChrW$(&H201A) + ChrW$(&H160) + ChrW$(&H2C6) + ChrW$(&H2030) + ChrW$(&H2DC) + _
        ChrW$(&H203A) + ChrW$(162) + ChrW$(&H152) + ChrW$(&H2039) + ChrW$(&H178) + _
        ChrW$(202) + ChrW$(203) + ChrW$(204) + ChrW$(222) + ChrW$(205) + _
        ChrW$(197) + ChrW$(198) + ChrW$(199) + ChrW$(200) + ChrW$(201) + _
        ChrW$(224) + ChrW$(&H2022) + ChrW$(226) + ChrW$(227) + ChrW$(223) + _
        ChrW$(168) + ChrW$(163) + ChrW$(164) + ChrW$(165) + ChrW$(166) + ChrW$(167) + _
        ChrW$(&H161) + ChrW$(&H2014) + ChrW$(&H2013) + ChrW$(242) + ChrW$(229) + _
        ChrW$(221) + ChrW$(220) + ChrW$(&H2021) + ChrW$(225) + ChrW$(&H2122) + _
        ChrW$(193) + _
        ChrW$(251) + ChrW$(250) + ChrW$(241) + ChrW$(206) + ChrW$(207) + _
        ChrW$(179) + ChrW$(180) + ChrW$(181) + ChrW$(194) + ChrW$(195) + _
        ChrW$(188) + ChrW$(192) + ChrW$(189) + ChrW$(190) + ChrW$(191) + _
        ChrW$(174) + ChrW$(170) + ChrW$(177) + ChrW$(169) + ChrW$(178) + _
        ChrW$(185) + ChrW$(184) + ChrW$(186) + ChrW$(183) + ChrW$(187) + _
        ChrW$(211) + ChrW$(210) + ChrW$(212) + ChrW$(214) + ChrW$(213) + _
        ChrW$(&H153) + ChrW$(172) + ChrW$(171) + ChrW$(173) + ChrW$(176) + ChrW$(175) + _
        ChrW$(216) + ChrW$(215) + ChrW$(217) + ChrW$(255) + ChrW$(254) + _
        ChrW$(218) + ChrW$(196) + ChrW$(208) + ChrW$(209) + ChrW$(219) + _
        ChrW$(&H8E) + ChrW$(&H9E) + ChrW$(&H8F)
        
    i = 1
    taiA(i) = "a2": taiU(i) = ChrW$(&HE1): i = i + 1
    taiA(i) = "a3": taiU(i) = ChrW$(&HE0): i = i + 1
    taiA(i) = "a5": taiU(i) = ChrW$(&HE2): i = i + 1
    taiA(i) = "a7": taiU(i) = ChrW$(&H101): i = i + 1
    taiA(i) = "a8": taiU(i) = "a" + ChrW$(&H30D): i = i + 1
    taiA(i) = "e2": taiU(i) = ChrW$(&HE9): i = i + 1
    taiA(i) = "e3": taiU(i) = ChrW$(&HE8): i = i + 1
    taiA(i) = "e5": taiU(i) = ChrW$(&HEA): i = i + 1
    taiA(i) = "e7": taiU(i) = ChrW$(&H113): i = i + 1
    taiA(i) = "e8": taiU(i) = "e" + ChrW$(&H30D): i = i + 1
    taiA(i) = "i2": taiU(i) = ChrW$(&HED): i = i + 1
    taiA(i) = "i3": taiU(i) = ChrW$(&HEC): i = i + 1
    taiA(i) = "i5": taiU(i) = ChrW$(&HEE): i = i + 1
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
    taiA(i) = "o2": taiU(i) = ChrW$(&HF3): i = i + 1
    taiA(i) = "o3": taiU(i) = ChrW$(&HF2): i = i + 1
    taiA(i) = "o5": taiU(i) = ChrW$(&HF4): i = i + 1
    taiA(i) = "o7": taiU(i) = ChrW$(&H14D): i = i + 1
    taiA(i) = "o8": taiU(i) = "o" + ChrW$(&H30D): i = i + 1
    taiA(i) = "ou": taiU(i) = "o" + ChrW$(&H358): i = i + 1
    taiA(i) = "ou2": taiU(i) = ChrW$(&HF3) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou3": taiU(i) = ChrW$(&HF2) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou5": taiU(i) = ChrW$(&HF4) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou7": taiU(i) = ChrW$(&H14D) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou8": taiU(i) = "o" + ChrW$(&H30D) + ChrW$(&H358): i = i + 1
    taiA(i) = "u2": taiU(i) = ChrW$(&HFA): i = i + 1
    taiA(i) = "u3": taiU(i) = ChrW$(&HF9): i = i + 1
    taiA(i) = "u5": taiU(i) = ChrW$(&HFB): i = i + 1
    taiA(i) = "u7": taiU(i) = ChrW$(&H16B): i = i + 1
    taiA(i) = "u8": taiU(i) = "u" + ChrW$(&H30D): i = i + 1
    taiA(i) = "ii": taiU(i) = ChrW$(&H1E73): i = i + 1
    taiA(i) = "ii2": taiU(i) = ChrW$(&H1E73) + ChrW$(&H301): i = i + 1
    taiA(i) = "ii3": taiU(i) = ChrW$(&H1E73) + ChrW$(&H300): i = i + 1
    taiA(i) = "ii5": taiU(i) = ChrW$(&H1E73) + ChrW$(&H302): i = i + 1
    taiA(i) = "ii8": taiU(i) = ChrW$(&H1E73) + ChrW$(&H30D): i = i + 1
    taiA(i) = "nn": taiU(i) = ChrW$(&H207F): i = i + 1
    taiA(i) = "A2": taiU(i) = ChrW$(&HC1): i = i + 1
    taiA(i) = "A3": taiU(i) = ChrW$(&HC0): i = i + 1
    taiA(i) = "A5": taiU(i) = ChrW$(&HC2): i = i + 1
    taiA(i) = "A7": taiU(i) = ChrW$(&H100): i = i + 1
    taiA(i) = "A8": taiU(i) = "A" + ChrW$(&H30D): i = i + 1
    taiA(i) = "E2": taiU(i) = ChrW$(&HC9): i = i + 1
    taiA(i) = "E3": taiU(i) = ChrW$(&HC8): i = i + 1
    taiA(i) = "E5": taiU(i) = ChrW$(&HCA): i = i + 1
    taiA(i) = "E7": taiU(i) = ChrW$(&H112): i = i + 1
    taiA(i) = "E8": taiU(i) = "E" + ChrW$(&H30D): i = i + 1
    taiA(i) = "I2": taiU(i) = ChrW$(&HCD): i = i + 1
    taiA(i) = "I3": taiU(i) = ChrW$(&HCC): i = i + 1
    taiA(i) = "I5": taiU(i) = ChrW$(&HCE): i = i + 1
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
    taiA(i) = "O2": taiU(i) = ChrW$(&HD3): i = i + 1
    taiA(i) = "O3": taiU(i) = ChrW$(&HD2): i = i + 1
    taiA(i) = "O5": taiU(i) = ChrW$(&HD4): i = i + 1
    taiA(i) = "O7": taiU(i) = ChrW$(&H14C): i = i + 1
    taiA(i) = "O8": taiU(i) = "O" + ChrW$(&H30D): i = i + 1
    taiA(i) = "Ou": taiU(i) = "O" + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou2": taiU(i) = ChrW$(&HD3) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou3": taiU(i) = ChrW$(&HD2) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou5": taiU(i) = ChrW$(&HD4) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou7": taiU(i) = ChrW$(&H14C) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou8": taiU(i) = "O" + ChrW$(&H30D) + ChrW$(&H358): i = i + 1
    taiA(i) = "U2": taiU(i) = ChrW$(&HDA): i = i + 1
    taiA(i) = "U3": taiU(i) = ChrW$(&HD9): i = i + 1
    taiA(i) = "U5": taiU(i) = ChrW$(&HDB): i = i + 1
    taiA(i) = "U7": taiU(i) = ChrW$(&H16A): i = i + 1
    taiA(i) = "U8": taiU(i) = "U" + ChrW$(&H30D): i = i + 1
    taiA(i) = "Ii": taiU(i) = ChrW$(&H1E72): i = i + 1
    taiA(i) = "Ii2": taiU(i) = ChrW$(&H1E72) + ChrW$(&H301): i = i + 1
    taiA(i) = "Ii3": taiU(i) = ChrW$(&H1E72) + ChrW$(&H300): i = i + 1
    taiA(i) = "Ii5": taiU(i) = ChrW$(&H1E72) + ChrW$(&H302): i = i + 1
    taiA(i) = "Ii8": taiU(i) = ChrW$(&H1E72) + ChrW$(&H30D): i = i + 1
    taiA(i) = "nn": taiU(i) = ChrW$(&H207F): i = i + 1
    taiA(i) = "o2": taiU(i) = ChrW$(&HF3): i = i + 1
    taiA(i) = "m7": taiU(i) = "m" + ChrW$(&H304)
     
    If MsgBox("To convert Hotsys 2000 encoding to Unicode WS1?", vbYesNo) <> vbYes Then
        Exit Sub
    End If


    Application.Caption = "Converting Hotsys 2000 encoding to Unicode WS1. Please wait..."
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
        code = AscW(.Text)
        If (.Font.Name = "HoloWin") Or (code = &H8E) Or (code = &H8F) Or (code = &H9E) Then
            .Font.Name = "Taiwanese Serif"
            which = InStr(hot2000, .Text)
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

