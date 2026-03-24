Attribute VB_Name = "CvtToNumber_holo"
Option Explicit

Sub CvtToNumber_holo()

    Dim r As Range
    Dim c As Range  'each character
    Dim which As Integer
    Dim tai As String
    Dim taiA(83) As String ' tai Alphabet
    Dim taiT(83) As String ' tai Tone number
    Dim toPutTone As Boolean
    Dim toneNo As String
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
    taiA(i) = "a": taiT(i) = "2": i = i + 1
    taiA(i) = "a": taiT(i) = "3": i = i + 1
    taiA(i) = "a": taiT(i) = "5": i = i + 1
    taiA(i) = "a": taiT(i) = "7": i = i + 1
    taiA(i) = "a": taiT(i) = "8": i = i + 1
    taiA(i) = "e": taiT(i) = "2": i = i + 1
    taiA(i) = "e": taiT(i) = "3": i = i + 1
    taiA(i) = "e": taiT(i) = "5": i = i + 1
    taiA(i) = "e": taiT(i) = "7": i = i + 1
    taiA(i) = "e": taiT(i) = "8": i = i + 1
    taiA(i) = "i": taiT(i) = "2": i = i + 1
    taiA(i) = "i": taiT(i) = "3": i = i + 1
    taiA(i) = "i": taiT(i) = "5": i = i + 1
    taiA(i) = "i": taiT(i) = "7": i = i + 1
    taiA(i) = "i": taiT(i) = "8": i = i + 1
    taiA(i) = "m": taiT(i) = "2": i = i + 1
    taiA(i) = "m": taiT(i) = "3": i = i + 1
    taiA(i) = "m": taiT(i) = "5": i = i + 1
    taiA(i) = "m": taiT(i) = "7": i = i + 1
    taiA(i) = "m": taiT(i) = "8": i = i + 1
    taiA(i) = "n": taiT(i) = "2": i = i + 1
    taiA(i) = "n": taiT(i) = "3": i = i + 1
    taiA(i) = "n": taiT(i) = "5": i = i + 1
    taiA(i) = "n": taiT(i) = "7": i = i + 1
    taiA(i) = "n": taiT(i) = "8": i = i + 1
    taiA(i) = "o": taiT(i) = "2": i = i + 1
    taiA(i) = "o": taiT(i) = "3": i = i + 1
    taiA(i) = "o": taiT(i) = "5": i = i + 1
    taiA(i) = "o": taiT(i) = "7": i = i + 1
    taiA(i) = "o": taiT(i) = "8": i = i + 1
    taiA(i) = "ou": taiT(i) = "1": i = i + 1
    taiA(i) = "ou": taiT(i) = "2": i = i + 1
    taiA(i) = "ou": taiT(i) = "3": i = i + 1
    taiA(i) = "ou": taiT(i) = "5": i = i + 1
    taiA(i) = "ou": taiT(i) = "7": i = i + 1
    taiA(i) = "ou": taiT(i) = "8": i = i + 1
    taiA(i) = "u": taiT(i) = "2": i = i + 1
    taiA(i) = "u": taiT(i) = "3": i = i + 1
    taiA(i) = "u": taiT(i) = "5": i = i + 1
    taiA(i) = "u": taiT(i) = "7": i = i + 1
    taiA(i) = "u": taiT(i) = "8": i = i + 1
    taiA(i) = "N": taiT(i) = "1": i = i + 1
    taiA(i) = "A": taiT(i) = "2": i = i + 1
    taiA(i) = "A": taiT(i) = "3": i = i + 1
    taiA(i) = "A": taiT(i) = "5": i = i + 1
    taiA(i) = "A": taiT(i) = "7": i = i + 1
    taiA(i) = "A": taiT(i) = "8": i = i + 1
    taiA(i) = "E": taiT(i) = "2": i = i + 1
    taiA(i) = "E": taiT(i) = "3": i = i + 1
    taiA(i) = "E": taiT(i) = "5": i = i + 1
    taiA(i) = "E": taiT(i) = "7": i = i + 1
    taiA(i) = "E": taiT(i) = "8": i = i + 1
    taiA(i) = "I": taiT(i) = "2": i = i + 1
    taiA(i) = "I": taiT(i) = "3": i = i + 1
    taiA(i) = "I": taiT(i) = "5": i = i + 1
    taiA(i) = "I": taiT(i) = "7": i = i + 1
    taiA(i) = "I": taiT(i) = "8": i = i + 1
    taiA(i) = "M": taiT(i) = "2": i = i + 1
    taiA(i) = "M": taiT(i) = "3": i = i + 1
    taiA(i) = "M": taiT(i) = "5": i = i + 1
    taiA(i) = "M": taiT(i) = "7": i = i + 1
    taiA(i) = "M": taiT(i) = "8": i = i + 1
    taiA(i) = "N": taiT(i) = "2": i = i + 1
    taiA(i) = "N": taiT(i) = "3": i = i + 1
    taiA(i) = "N": taiT(i) = "5": i = i + 1
    taiA(i) = "N": taiT(i) = "7": i = i + 1
    taiA(i) = "N": taiT(i) = "8": i = i + 1
    taiA(i) = "O": taiT(i) = "2": i = i + 1
    taiA(i) = "O": taiT(i) = "3": i = i + 1
    taiA(i) = "O": taiT(i) = "5": i = i + 1
    taiA(i) = "O": taiT(i) = "7": i = i + 1
    taiA(i) = "O": taiT(i) = "8": i = i + 1
    taiA(i) = "Ou": taiT(i) = "1": i = i + 1
    taiA(i) = "Ou": taiT(i) = "2": i = i + 1
    taiA(i) = "Ou": taiT(i) = "3": i = i + 1
    taiA(i) = "Ou": taiT(i) = "5": i = i + 1
    taiA(i) = "Ou": taiT(i) = "7": i = i + 1
    taiA(i) = "Ou": taiT(i) = "8": i = i + 1
    taiA(i) = "U": taiT(i) = "2": i = i + 1
    taiA(i) = "U": taiT(i) = "3": i = i + 1
    taiA(i) = "U": taiT(i) = "5": i = i + 1
    taiA(i) = "U": taiT(i) = "7": i = i + 1
    taiA(i) = "U": taiT(i) = "8"
      
     
     
    If MsgBox("To convert Taiwanese Package to Number?", vbYesNo) <> vbYes Then
        Exit Sub
    End If


    Application.Caption = "Converting Taiwanese Package to Number. Please wait..."
    'Application.ScreenUpdating = False
    System.Cursor = wdCursorWait

    If (Selection.Start <> Selection.End) Then
        Set r = Selection.Range
    Else
        Set r = ActiveDocument.Content
    End If
    
    toPutTone = False
    While r <> ""
    Set c = r.Characters.First
    With c
        If toPutTone Then
            If AscW(.Text) = 176 And left(.Font.Name, 10) = "Taiwanese " Then
                .Text = "N" + toneNo
                .CharacterWidth = wdWidthHalfWidth
                toPutTone = False
            ElseIf (.Text < "a" Or .Text > "z") And (.Text < "A" Or .Text > "Z") Then
                .Text = toneNo + .Text
                .CharacterWidth = wdWidthHalfWidth
                toPutTone = False
            End If
        ElseIf left(.Font.Name, 10) = "Taiwanese " Then
            which = InStr(tai, .Text)
            If which > 0 Then
                .Text = taiA(which)
                .CharacterWidth = wdWidthHalfWidth
                toneNo = taiT(which)
                ' N, ou1, Ou1 do not have to put tone no.
                If toneNo <> "1" Then
                    toPutTone = True
                End If
            End If
        End If
    End With
    r.Start = c.End
    Wend
    
    If toPutTone Then
        Set c = r.Characters.Last
        c.InsertAfter (toneNo)
    End If

  

    System.Cursor = wdCursorNormal
    Application.Caption = ""
    Application.ScreenUpdating = True
    

End Sub


