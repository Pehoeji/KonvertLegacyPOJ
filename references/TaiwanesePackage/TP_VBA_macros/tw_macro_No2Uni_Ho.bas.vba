Attribute VB_Name = "No2Uni_Ho"
Option Explicit
Const TW_AB_SIZE As Integer = 112
Dim taiA(TW_AB_SIZE) As String ' tai Alphabet
Dim taiU(TW_AB_SIZE) As String ' Taigi Unicode encoding table
Dim taiI(TW_AB_SIZE) As Integer ' tai index number

' sort taiA by index
Sub SortTai()
    Dim i As Integer
    Dim j As Integer
    Dim min As Integer
    Dim value As String
    Dim t As Integer
    
    For i = 1 To TW_AB_SIZE
        taiI(i) = i
    Next i
    For i = 1 To TW_AB_SIZE - 1
        min = i
        value = taiA(taiI(i))
        For j = i + 1 To TW_AB_SIZE
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
    
    left = 1: right = TW_AB_SIZE
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

'number format to Unicode string
' s is like a5, ou9, etc.
Function nf_uni(ns As String)
    Dim which As Integer
    Dim s As String
    
    which = bsearch(ns)
    If (which > 0) Then
        s = taiU(which)
    Else
        s = ""
    End If
    nf_uni = s
End Function



Sub NumberToUnicodeHolo()

    Dim r As Range
    Dim itm As Integer
    Dim c As Range  'each character
    Dim which As Integer
    Dim toFindTone As Boolean
    Dim s As String
    Dim t As String
    Dim boim As String
    Dim i As Integer
    Dim left2c As String
    
    
    
    ' following the sequence of a, e, i, m, n, o, ou, u, ii  (lower case, N, upper case)
    ' note that: ou has 7 characters, total ((9 vowels * 6 + 1) * 2 + 2) = 112
            
    i = 1
    taiA(i) = "a2": taiU(i) = ChrW$(&HE1): i = i + 1
    taiA(i) = "a3": taiU(i) = ChrW$(&HE0): i = i + 1
    taiA(i) = "a5": taiU(i) = ChrW$(&HE2): i = i + 1
    taiA(i) = "a7": taiU(i) = ChrW$(&H101): i = i + 1
    taiA(i) = "a8": taiU(i) = "a" + ChrW$(&H30D): i = i + 1
    taiA(i) = "a9": taiU(i) = ChrW$(&H103): i = i + 1
    taiA(i) = "e2": taiU(i) = ChrW$(&HE9): i = i + 1
    taiA(i) = "e3": taiU(i) = ChrW$(&HE8): i = i + 1
    taiA(i) = "e5": taiU(i) = ChrW$(&HEA): i = i + 1
    taiA(i) = "e7": taiU(i) = ChrW$(&H113): i = i + 1
    taiA(i) = "e8": taiU(i) = "e" + ChrW$(&H30D): i = i + 1
    taiA(i) = "e9": taiU(i) = ChrW$(&H115): i = i + 1
    taiA(i) = "i2": taiU(i) = ChrW$(&HED): i = i + 1
    taiA(i) = "i3": taiU(i) = ChrW$(&HEC): i = i + 1
    taiA(i) = "i5": taiU(i) = ChrW$(&HEE): i = i + 1
    taiA(i) = "i7": taiU(i) = ChrW$(&H12B): i = i + 1
    taiA(i) = "i8": taiU(i) = "i" + ChrW$(&H30D): i = i + 1
    taiA(i) = "i9": taiU(i) = ChrW$(&H12D): i = i + 1
    taiA(i) = "ii": taiU(i) = ChrW$(&H1E73): i = i + 1
    taiA(i) = "ii2": taiU(i) = ChrW$(&H1E73) + ChrW$(&H301): i = i + 1
    taiA(i) = "ii3": taiU(i) = ChrW$(&H1E73) + ChrW$(&H300): i = i + 1
    taiA(i) = "ii5": taiU(i) = ChrW$(&H1E73) + ChrW$(&H302): i = i + 1
    taiA(i) = "ii7": taiU(i) = ChrW$(&H1E73) + ChrW$(&H304): i = i + 1
    taiA(i) = "ii8": taiU(i) = ChrW$(&H1E73) + ChrW$(&H30D): i = i + 1
    taiA(i) = "m2": taiU(i) = ChrW$(&H1E3F): i = i + 1
    taiA(i) = "m3": taiU(i) = "m" + ChrW$(&H300): i = i + 1
    taiA(i) = "m5": taiU(i) = "m" + ChrW$(&H302): i = i + 1
    taiA(i) = "m7": taiU(i) = "m" + ChrW$(&H304): i = i + 1
    taiA(i) = "m8": taiU(i) = "m" + ChrW$(&H30D): i = i + 1
    taiA(i) = "m9": taiU(i) = "m" + ChrW$(&H306): i = i + 1
    taiA(i) = "n2": taiU(i) = ChrW$(&H144): i = i + 1
    taiA(i) = "n3": taiU(i) = ChrW$(&H1F9): i = i + 1
    taiA(i) = "n5": taiU(i) = "n" + ChrW$(&H302): i = i + 1
    taiA(i) = "n7": taiU(i) = "n" + ChrW$(&H304): i = i + 1
    taiA(i) = "n8": taiU(i) = "n" + ChrW$(&H30D): i = i + 1
    taiA(i) = "n9": taiU(i) = "n" + ChrW$(&H306): i = i + 1
    taiA(i) = "o2": taiU(i) = ChrW$(&HF3): i = i + 1
    taiA(i) = "o3": taiU(i) = ChrW$(&HF2): i = i + 1
    taiA(i) = "o5": taiU(i) = ChrW$(&HF4): i = i + 1
    taiA(i) = "o7": taiU(i) = ChrW$(&H14D): i = i + 1
    taiA(i) = "o8": taiU(i) = "o" + ChrW$(&H30D): i = i + 1
    taiA(i) = "o9": taiU(i) = ChrW$(&H14F): i = i + 1
    taiA(i) = "ou": taiU(i) = "o" + ChrW$(&H358): i = i + 1
    taiA(i) = "ou2": taiU(i) = ChrW$(&HF3) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou3": taiU(i) = ChrW$(&HF2) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou5": taiU(i) = ChrW$(&HF4) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou7": taiU(i) = ChrW$(&H14D) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou8": taiU(i) = "o" + ChrW$(&H30D) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou9": taiU(i) = ChrW$(&H14F) + ChrW$(&H358): i = i + 1
    taiA(i) = "u2": taiU(i) = ChrW$(&HFA): i = i + 1
    taiA(i) = "u3": taiU(i) = ChrW$(&HF9): i = i + 1
    taiA(i) = "u5": taiU(i) = ChrW$(&HFB): i = i + 1
    taiA(i) = "u7": taiU(i) = ChrW$(&H16B): i = i + 1
    taiA(i) = "u8": taiU(i) = "u" + ChrW$(&H30D): i = i + 1
    taiA(i) = "u9": taiU(i) = ChrW$(&H16D): i = i + 1
    taiA(i) = "nn": taiU(i) = ChrW$(&H207F): i = i + 1
    taiA(i) = "N": taiU(i) = ChrW$(&H207F): i = i + 1
    taiA(i) = "A2": taiU(i) = ChrW$(&HC1): i = i + 1
    taiA(i) = "A3": taiU(i) = ChrW$(&HC0): i = i + 1
    taiA(i) = "A5": taiU(i) = ChrW$(&HC2): i = i + 1
    taiA(i) = "A7": taiU(i) = ChrW$(&H100): i = i + 1
    taiA(i) = "A8": taiU(i) = "A" + ChrW$(&H30D): i = i + 1
    taiA(i) = "A9": taiU(i) = ChrW$(&H102): i = i + 1
    taiA(i) = "E2": taiU(i) = ChrW$(&HC9): i = i + 1
    taiA(i) = "E3": taiU(i) = ChrW$(&HC8): i = i + 1
    taiA(i) = "E5": taiU(i) = ChrW$(&HCA): i = i + 1
    taiA(i) = "E7": taiU(i) = ChrW$(&H112): i = i + 1
    taiA(i) = "E8": taiU(i) = "E" + ChrW$(&H30D): i = i + 1
    taiA(i) = "E9": taiU(i) = ChrW$(&H114): i = i + 1
    taiA(i) = "I2": taiU(i) = ChrW$(&HCD): i = i + 1
    taiA(i) = "I3": taiU(i) = ChrW$(&HCC): i = i + 1
    taiA(i) = "I5": taiU(i) = ChrW$(&HCE): i = i + 1
    taiA(i) = "I7": taiU(i) = ChrW$(&H12A): i = i + 1
    taiA(i) = "I8": taiU(i) = "I" + ChrW$(&H30D): i = i + 1
    taiA(i) = "I9": taiU(i) = ChrW$(&H12C): i = i + 1
    taiA(i) = "Ii": taiU(i) = ChrW$(&H1E72): i = i + 1
    taiA(i) = "Ii2": taiU(i) = ChrW$(&H1E72) + ChrW$(&H301): i = i + 1
    taiA(i) = "Ii3": taiU(i) = ChrW$(&H1E72) + ChrW$(&H300): i = i + 1
    taiA(i) = "Ii5": taiU(i) = ChrW$(&H1E72) + ChrW$(&H302): i = i + 1
    taiA(i) = "Ii7": taiU(i) = ChrW$(&H1E72) + ChrW$(&H304): i = i + 1
    taiA(i) = "Ii8": taiU(i) = ChrW$(&H1E72) + ChrW$(&H30D): i = i + 1
    taiA(i) = "M2": taiU(i) = ChrW$(&H1E3E): i = i + 1
    taiA(i) = "M3": taiU(i) = "M" + ChrW$(&H300): i = i + 1
    taiA(i) = "M5": taiU(i) = "M" + ChrW$(&H302): i = i + 1
    taiA(i) = "M7": taiU(i) = "M" + ChrW$(&H304): i = i + 1
    taiA(i) = "M8": taiU(i) = "M" + ChrW$(&H30D): i = i + 1
    taiA(i) = "M9": taiU(i) = "M" + ChrW$(&H306): i = i + 1
    taiA(i) = "N2": taiU(i) = ChrW$(&H143): i = i + 1
    taiA(i) = "N3": taiU(i) = ChrW$(&H1F8): i = i + 1
    taiA(i) = "N5": taiU(i) = "N" + ChrW$(&H302): i = i + 1
    taiA(i) = "N7": taiU(i) = "N" + ChrW$(&H304): i = i + 1
    taiA(i) = "N8": taiU(i) = "N" + ChrW$(&H30D): i = i + 1
    taiA(i) = "N9": taiU(i) = "N" + ChrW$(&H306): i = i + 1
    taiA(i) = "O2": taiU(i) = ChrW$(&HD3): i = i + 1
    taiA(i) = "O3": taiU(i) = ChrW$(&HD2): i = i + 1
    taiA(i) = "O5": taiU(i) = ChrW$(&HD4): i = i + 1
    taiA(i) = "O7": taiU(i) = ChrW$(&H14C): i = i + 1
    taiA(i) = "O8": taiU(i) = "O" + ChrW$(&H30D): i = i + 1
    taiA(i) = "O9": taiU(i) = ChrW$(&H14E): i = i + 1
    taiA(i) = "Ou": taiU(i) = "O" + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou2": taiU(i) = ChrW$(&HD3) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou3": taiU(i) = ChrW$(&HD2) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou5": taiU(i) = ChrW$(&HD4) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou7": taiU(i) = ChrW$(&H14C) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou8": taiU(i) = "O" + ChrW$(&H30D) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou9": taiU(i) = ChrW$(&H14E) + ChrW$(&H358): i = i + 1
    taiA(i) = "U2": taiU(i) = ChrW$(&HDA): i = i + 1
    taiA(i) = "U3": taiU(i) = ChrW$(&HD9): i = i + 1
    taiA(i) = "U5": taiU(i) = ChrW$(&HDB): i = i + 1
    taiA(i) = "U7": taiU(i) = ChrW$(&H16A): i = i + 1
    taiA(i) = "U8": taiU(i) = "U" + ChrW$(&H30D): i = i + 1
    taiA(i) = "U9": taiU(i) = ChrW$(&H16C)
    If i <> TW_AB_SIZE Then
        MsgBox "Taiwanese Alphabet size " + i + " is not equal to " + TW_AB_SIZE, vbOKOnly
    End If
      
     
    SortTai
    
    If MsgBox("To convert Number Format to Unicode?", vbYesNo) <> vbYes Then
        Exit Sub
    End If


    Application.Caption = "Converting Number Format to Unicode. Please wait..."
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
            ElseIf (s = "m" Or s = "M" Or s = "n" Or s = "N") And InStr("AEINOU", UCase(.Text)) Then
                t = .Text
                .Text = s
                .CharacterWidth = wdWidthHalfWidth
                s = t
            ElseIf UCase(s) = "NG" And InStr("AEIOU", UCase(.Text)) Then
                t = .Text
                .Text = s
                .CharacterWidth = wdWidthHalfWidth
                s = t
            ElseIf .Text = "N" Then
                .Text = ""
                s = s + ChrW$(&H207F)
            ElseIf .Text = "n" Then
                If (right(s, 1) = "n") Then
                    s = left(s, Len(s) - 1) + ChrW$(&H207F)
                Else
                    s = s + "n"
                End If
                .Text = ""
            ElseIf (.Text >= "a" And .Text <= "z") Or (.Text >= "A" And .Text <= "Z") Then
                s = s + .Text
                .Text = ""
            ElseIf (.Text = "1" Or .Text = "4") Then
                left2c = UCase(left(s, 2))
                If (left2c = "OU") Or (left2c = "II") Then
                    s = nf_uni(left(s, 1) + LCase(Mid(s, 2, 1))) + Mid(s, 3)
                End If
                .Text = s
                .CharacterWidth = wdWidthHalfWidth
                toFindTone = False
            ElseIf (.Text >= "2" And .Text <= "9") Then
                left2c = UCase(left(s, 2))
                If (left2c = "OU") Or (left2c = "II") Then
                    boim = left(s, 1) + LCase(Mid(s, 2, 1)) + .Text
                    s = nf_uni(boim) + Mid(s, 3)
                Else
                    boim = left(s, 1) + .Text
                    s = nf_uni(boim) + Mid(s, 2)
                End If
                .Text = s
                .CharacterWidth = wdWidthHalfWidth
                toFindTone = False
            Else
                left2c = UCase(left(s, 2))
                If (left2c = "OU") Or (left2c = "II") Then
                    s = nf_uni(left(s, 1) + LCase(Mid(s, 2, 1))) + Mid(s, 3)
                End If
                .Text = s + .Text
                .CharacterWidth = wdWidthHalfWidth
                .Font.Name = "Taiwanese Serif"
                toFindTone = False
            End If
            .Font.Name = "Taiwanese Serif"
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
        left2c = UCase(left(s, 2))
        If (left2c = "OU") Or (left2c = "II") Then
            s = nf_uni(left(s, 1) + LCase(Mid(s, 2, 1))) + Mid(s, 3)
        End If
        c.InsertAfter (s)
    End If
    

    System.Cursor = wdCursorNormal
    Application.Caption = ""
    Application.ScreenUpdating = True
    

End Sub





