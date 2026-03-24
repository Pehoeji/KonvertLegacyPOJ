Attribute VB_Name = "AdjOaOe"
Option Explicit

Sub AdjOaOe()

    Dim r As Range
    Dim w As Range 'each word
    Dim which As Integer
    Dim oPos As Integer 'o position
    Dim cnt As Integer
    Dim c, c2, c2u, c3, s As String
    Dim oAccents, aAccents, eAccents As String
    
    
    ' lower case, upper case
    oAccents = ChrW$(243) + ChrW$(242) + ChrW$(244) + ChrW$(246) + ChrW$(245) + _
        ChrW$(211) + ChrW$(210) + ChrW$(212) + ChrW$(214) + ChrW$(213)
    aAccents = ChrW$(225) + ChrW$(224) + ChrW$(226) + ChrW$(228) + ChrW$(227) + _
        ChrW$(193) + ChrW$(192) + ChrW$(194) + ChrW$(196) + ChrW$(195)
    eAccents = ChrW$(233) + ChrW$(232) + ChrW$(234) + ChrW$(235) + ChrW$(231) + _
        ChrW$(201) + ChrW$(200) + ChrW$(202) + ChrW$(203) + ChrW$(199)
     
     
    If MsgBox("To adjust the diacritics of oa's and oe's to Campbell mode?", vbYesNo) <> vbYes Then
        Exit Sub
    End If


    Application.Caption = "Adjusting the diacritics of oa's and oe's to Campbell mode. Please wait..."
    'Application.ScreenUpdating = False
    System.Cursor = wdCursorWait

    If (Selection.Start <> Selection.End) Then
        Set r = Selection.Range
    Else
        Set r = ActiveDocument.Content
    End If
    
    While r <> ""
    Set w = r.Words.First
    With w
    If left(.Font.Name, 10) = "Taiwanese " Then
        cnt = .Characters.Count
        c = .Characters.First.Text
        If InStr("BCGHJKLMNPST", (UCase(c))) > 0 Then
            If cnt >= 2 Then
                c = w.Characters(2).Text
                oPos = 2
            Else
                c = "x"
            End If
            If (c = "G" Or c = "g") Then
                ' ng
                If cnt >= 3 Then
                    c = w.Characters(3).Text
                    oPos = 3
                Else
                    c = "x"
                End If
            ElseIf (c = "H" Or c = "h") Then
                'ch, kh, ph, th
                If cnt >= 3 Then
                    c = w.Characters(3).Text
                    oPos = 3
                Else
                    c = "x"
                End If
                If (c = "H" Or c = "h") Then
                    'chh
                    If cnt >= 4 Then
                        c = w.Characters(4).Text
                        oPos = 4
                    Else
                        c = "x"
                    End If
                End If
            End If
            If (c = "o" Or c = "O") Then
                If cnt >= oPos + 1 Then
                    c2 = .Characters(oPos + 1).Text
                Else
                    c2 = "x"
                End If
                which = InStr(aAccents, c2)
                If which <= 0 Then
                    which = InStr(eAccents, c2)
                    If which > 5 Then
                        s = "E"
                        which = which - 5
                    ElseIf which > 0 Then
                        s = "e"
                    End If
                ElseIf which <= 5 Then
                    s = "a"
                Else
                    s = "A"
                    which = which - 5
                End If
                If which > 0 Then
                    If oPos + 2 <= cnt Then
                        c3 = .Characters(oPos + 2).Text
                    Else
                        c3 = " "
                    End If
                    If (c3 < "a" Or c3 > "z") And (c3 < "A" Or c3 > "Z") Then
                        ' [b | ch | ...] (o | O) [a | A | e | E]* (N or else)
                        ' adjust the diacritic to (o | O)
                        If (c = "o") Then
                            s = Mid(oAccents, which, 1) + s
                        Else
                            s = Mid(oAccents, which + 5, 1) + s
                        End If
                        w.Text = left(w.Text, oPos - 1) + s + Mid(w.Text, oPos + 2)
                        w.CharacterWidth = wdWidthHalfWidth
                    End If
                End If
            Else
                which = InStr(oAccents, c)
                If which > 0 Then
                    If cnt >= oPos + 1 Then
                        c2 = w.Characters(oPos + 1).Text
                    Else
                        c2 = "x"
                    End If
                    c2u = UCase(c2)
                    If c2u = "A" Or c2u = "E" Then
                        If cnt >= oPos + 2 Then
                            c3 = w.Characters(oPos + 2).Text
                        Else
                            c3 = " "
                        End If
                        If (c3 >= "a" And c3 <= "z") Or (c3 >= "A" And c3 <= "Z") Then
                            ' [b | ch | ...] (o | O)* [a | A | e | E] (a-z | A-Z)+
                            ' adjust the diacritic to A or E
                            If which <= 5 Then
                                s = "o"
                            Else
                                s = "O"
                                which = which - 5
                            End If
                            If c2 = "a" Then
                                s = s + Mid(aAccents, which, 1)
                            ElseIf c2 = "A" Then
                                s = s + Mid(aAccents, which + 5, 1)
                            ElseIf c2 = "e" Then
                                s = s + Mid(eAccents, which, 1)
                            Else
                                s = s + Mid(eAccents, which + 5, 1)
                            End If
                            w.Text = left(w.Text, oPos - 1) + s + Mid(w.Text, oPos + 2)
                            w.CharacterWidth = wdWidthHalfWidth
                        End If
                    End If
                End If
            End If
        Else
            which = InStr(oAccents, c)
            If which > 0 Then
                If which <= 5 Then
                    s = "o"
                Else
                    s = "O"
                    which = which - 5
                End If
                If cnt >= 2 Then
                    c2 = w.Characters(2).Text
                Else
                    c2 = "x"
                End If
                c2u = UCase(c2)
                If c2u = "A" Then
                    If c2 = "a" Then
                        s = s + Mid(aAccents, which, 1)
                    Else
                        s = s + Mid(aAccents, which + 5, 1)
                    End If
                    w.Text = s + Mid(w.Text, 3)
                    w.CharacterWidth = wdWidthHalfWidth
                ElseIf c2u = "E" Then
                    If c2 = "e" Then
                        s = s + Mid(eAccents, which, 1)
                    Else
                        s = s + Mid(eAccents, which + 5, 1)
                    End If
                    w.Text = s + Mid(w.Text, 3)
                    w.CharacterWidth = wdWidthHalfWidth
                End If
            End If
        End If
    End If
    End With
    r.Start = w.End
    Wend


    System.Cursor = wdCursorNormal
    Application.Caption = ""
    Application.ScreenUpdating = True

End Sub
