Attribute VB_Name = "CvtFromNumber_holo"
Option Explicit
Dim tai As String
Dim taiA(83) As String ' tai Alphabet
Dim taiI(83) As Integer ' tai index number

' sort taiA by index
Sub SortTai()
    Dim i As Integer
    Dim j As Integer
    Dim min As Integer
    Dim value As String
    Dim t As Integer
    
    For i = 1 To 83
        taiI(i) = i
    Next i
    For i = 1 To 82
        min = i
        value = taiA(taiI(i))
        For j = i + 1 To 83
            If taiA(taiI(j)) < value Then
                min = j
                value = taiA(taiI(j))
            End If
        Next j
        ' change i & min of taiI()
        t = taiI(i)
        taiI(i) = taiI(min)
        taiI(min) = t
    Next i
End Sub
' binary search taiI
Function bsearch(s As String)
    Dim left As Integer
    Dim right As Integer
    Dim curr As Integer
    
    left = 1: right = 83
    While left <= right
        curr = (left + right) / 2
        If s = taiA(taiI(curr)) Then
            bsearch = taiI(curr)
            Exit Function
        ElseIf s < taiA(taiI(curr)) Then
            right = curr - 1
        Else
            left = curr + 1
        End If
    Wend
    bsearch = 0
End Function



Sub CvtFromNumber_holo()

    Dim r As Range
    Dim itm As Integer
    Dim c As Range  'each character
    Dim which As Integer
    Dim toFindTone As Boolean
    Dim s As String
    Dim t As String
    Dim boim As String
    Dim i As Integer
    
    
    ' following the sequence of a, e, i, m, n, o, ou, u  (lower case, N, upper case)
    ' note that: ou has 6 characters
            
    tai = ChrW$(225) + ChrW$(224) + ChrW$(226) + ChrW$(228) + ChrW$(227) + _
        ChrW$(233) + ChrW$(232) + ChrW$(234) + ChrW$(235) + ChrW$(231) + _
        ChrW$(237) + ChrW$(236) + ChrW$(238) + ChrW$(&H201E) + ChrW$(&H2026) + _
        ChrW$(&H2022) + ChrW$(&H2013) + ChrW$(&H2014) + ChrW$(&H2DC) + ChrW$(&H2122) + _
        ChrW$(161) + ChrW$(162) + ChrW$(163) + ChrW$(164) + ChrW$(241) + _
        ChrW$(243) + ChrW$(242) + ChrW$(244) + ChrW$(246) + ChrW$(245) + _
        ChrW$(172) + ChrW$(175) + ChrW$(177) + ChrW$(178) + ChrW$(179) + ChrW$(180) + _
        ChrW$(250) + ChrW$(249) + ChrW$(251) + ChrW$(252) + ChrW$(253) + _
        ChrW$(176) + _
        ChrW$(193) + ChrW$(192) + ChrW$(194) + ChrW$(196) + ChrW$(195) + _
        ChrW$(201) + ChrW$(200) + ChrW$(202) + ChrW$(203) + ChrW$(199) + _
        ChrW$(205) + ChrW$(204) + ChrW$(206) + ChrW$(&H201A) + ChrW$(&H192) + _
        ChrW$(&H2C6) + ChrW$(&H2030) + ChrW$(&H160) + ChrW$(&H2039) + ChrW$(&H152) + _
        ChrW$(&H161) + ChrW$(&H203A) + ChrW$(&H153) + ChrW$(&H178) + ChrW$(209) + _
        ChrW$(211) + ChrW$(210) + ChrW$(212) + ChrW$(214) + ChrW$(213) + _
        ChrW$(165) + ChrW$(166) + ChrW$(167) + ChrW$(168) + ChrW$(170) + ChrW$(171) + _
        ChrW$(218) + ChrW$(217) + ChrW$(219) + ChrW$(220) + ChrW$(221)
    
    i = 1
    taiA(i) = "a2": i = i + 1
    taiA(i) = "a3": i = i + 1
    taiA(i) = "a5": i = i + 1
    taiA(i) = "a7": i = i + 1
    taiA(i) = "a8": i = i + 1
    taiA(i) = "e2": i = i + 1
    taiA(i) = "e3": i = i + 1
    taiA(i) = "e5": i = i + 1
    taiA(i) = "e7": i = i + 1
    taiA(i) = "e8": i = i + 1
    taiA(i) = "i2": i = i + 1
    taiA(i) = "i3": i = i + 1
    taiA(i) = "i5": i = i + 1
    taiA(i) = "i7": i = i + 1
    taiA(i) = "i8": i = i + 1
    taiA(i) = "m2": i = i + 1
    taiA(i) = "m3": i = i + 1
    taiA(i) = "m5": i = i + 1
    taiA(i) = "m7": i = i + 1
    taiA(i) = "m8": i = i + 1
    taiA(i) = "n2": i = i + 1
    taiA(i) = "n3": i = i + 1
    taiA(i) = "n5": i = i + 1
    taiA(i) = "n7": i = i + 1
    taiA(i) = "n8": i = i + 1
    taiA(i) = "o2": i = i + 1
    taiA(i) = "o3": i = i + 1
    taiA(i) = "o5": i = i + 1
    taiA(i) = "o7": i = i + 1
    taiA(i) = "o8": i = i + 1
    taiA(i) = "ou1": i = i + 1
    taiA(i) = "ou2": i = i + 1
    taiA(i) = "ou3": i = i + 1
    taiA(i) = "ou5": i = i + 1
    taiA(i) = "ou7": i = i + 1
    taiA(i) = "ou8": i = i + 1
    taiA(i) = "u2": i = i + 1
    taiA(i) = "u3": i = i + 1
    taiA(i) = "u5": i = i + 1
    taiA(i) = "u7": i = i + 1
    taiA(i) = "u8": i = i + 1
    taiA(i) = "N": i = i + 1
    taiA(i) = "A2": i = i + 1
    taiA(i) = "A3": i = i + 1
    taiA(i) = "A5": i = i + 1
    taiA(i) = "A7": i = i + 1
    taiA(i) = "A8": i = i + 1
    taiA(i) = "E2": i = i + 1
    taiA(i) = "E3": i = i + 1
    taiA(i) = "E5": i = i + 1
    taiA(i) = "E7": i = i + 1
    taiA(i) = "E8": i = i + 1
    taiA(i) = "I2": i = i + 1
    taiA(i) = "I3": i = i + 1
    taiA(i) = "I5": i = i + 1
    taiA(i) = "I7": i = i + 1
    taiA(i) = "I8": i = i + 1
    taiA(i) = "M2": i = i + 1
    taiA(i) = "M3": i = i + 1
    taiA(i) = "M5": i = i + 1
    taiA(i) = "M7": i = i + 1
    taiA(i) = "M8": i = i + 1
    taiA(i) = "N2": i = i + 1
    taiA(i) = "N3": i = i + 1
    taiA(i) = "N5": i = i + 1
    taiA(i) = "N7": i = i + 1
    taiA(i) = "N8": i = i + 1
    taiA(i) = "O2": i = i + 1
    taiA(i) = "O3": i = i + 1
    taiA(i) = "O5": i = i + 1
    taiA(i) = "O7": i = i + 1
    taiA(i) = "O8": i = i + 1
    taiA(i) = "Ou1": i = i + 1
    taiA(i) = "Ou2": i = i + 1
    taiA(i) = "Ou3": i = i + 1
    taiA(i) = "Ou5": i = i + 1
    taiA(i) = "Ou7": i = i + 1
    taiA(i) = "Ou8": i = i + 1
    taiA(i) = "U2": i = i + 1
    taiA(i) = "U3": i = i + 1
    taiA(i) = "U5": i = i + 1
    taiA(i) = "U7": i = i + 1
    taiA(i) = "U8"
      
     
    SortTai
    
    If MsgBox("To convert Number to Taiwanese Package?", vbYesNo) <> vbYes Then
        Exit Sub
    End If


    Application.Caption = "Converting Number to Taiwanese Package. Please wait..."
    'Application.ScreenUpdating = False
    System.Cursor = wdCursorWait

    If (Selection.Start <> Selection.End) Then
        Set r = Selection.Range
    Else
        Set r = ActiveDocument.Content
    End If
    
    toFindTone = False
    itm = 1
    
    While r <> ""
    Set c = r.Characters.First
    With c
        If toFindTone Then
            which = AscW(.Text)
            If (s = "i" Or s = "I") And InStr("AEOU", UCase(.Text)) Then
                t = .Text
                .Text = s
                .CharacterWidth = wdWidthHalfWidth
                s = t
                .Font.Name = "Taiwanese Serif"
            ElseIf (s = "m" Or s = "M" Or s = "n" Or s = "N") And InStr("AEINOU", UCase(.Text)) Then
                t = .Text
                .Text = s
                .CharacterWidth = wdWidthHalfWidth
                s = t
                .Font.Name = "Taiwanese Serif"
            ElseIf UCase(s) = "NG" And InStr("AEIOU", UCase(.Text)) Then
                t = .Text
                .Text = s
                .CharacterWidth = wdWidthHalfWidth
                s = t
                .Font.Name = "Taiwanese Serif"
            ElseIf .Text = "N" Then
                .Text = ""
                s = s + ChrW$(176)
            ElseIf (.Text >= "a" And .Text <= "z") Or (.Text >= "A" And .Text <= "Z") Then
                s = s + .Text
                .Text = ""
            ElseIf (.Text = "1" Or .Text = "4") Then
                If UCase(left(s, 2)) = "OU" Then
                    If (left(s, 1) = "o") Then
                        s = ChrW$(172) + Mid(s, 3)
                    Else
                        s = ChrW$(165) + Mid(s, 3)
                    End If
                End If
                .Text = s
                .CharacterWidth = wdWidthHalfWidth
                .Font.Name = "Taiwanese Serif"
                toFindTone = False
            ElseIf (.Text >= "2" And .Text <= "8") Then
                If UCase(left(s, 2)) = "OU" Then
                    boim = left(s, 2) + .Text
                    s = Mid(s, 3)
                Else
                    boim = left(s, 1) + .Text
                    s = Mid(s, 2)
                End If
                which = bsearch(boim)
                If which > 0 Then
                    .Text = Mid(tai, which, 1) + s
                    .CharacterWidth = wdWidthHalfWidth
                    .Font.Name = "Taiwanese Serif"
                Else
                    MsgBox ("error> boim:[" + boim + "] unboe:[" + s + "]")
                End If
                toFindTone = False
            Else
                If UCase(left(s, 2)) = "OU" Then
                    If (left(s, 1) = "o") Then
                        s = ChrW$(172) + Mid(s, 3)
                    Else
                        s = ChrW$(165) + Mid(s, 3)
                    End If
                End If
                .Text = s + .Text
                .CharacterWidth = wdWidthHalfWidth
                .Font.Name = "Taiwanese Serif"
                toFindTone = False
            End If
        ElseIf InStr("AEIMNOU", UCase(.Text)) Then
            s = .Text
            .Text = ""
            toFindTone = True
        ElseIf AscW(.Text) <= 127 Then
            .Font.Name = "Taiwanese Serif"
        End If
    End With
    r.Start = c.End
    Wend
    
    If toFindTone Then
        Set c = r.Characters.Last
        If UCase(left(s, 2)) = "OU" Then
            If (left(s, 1) = "o") Then
                s = ChrW$(172) + Mid(s, 3)
            Else
                s = ChrW$(165) + Mid(s, 3)
            End If
        End If
        c.InsertAfter (s)
        c.Font.Name = "Taiwanese Serif"
    End If
    

    System.Cursor = wdCursorNormal
    Application.Caption = ""
    Application.ScreenUpdating = True
    

End Sub




