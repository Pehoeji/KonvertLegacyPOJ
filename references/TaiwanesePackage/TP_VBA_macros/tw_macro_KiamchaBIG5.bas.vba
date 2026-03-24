Attribute VB_Name = "KiamchaBIG5"
Sub KiamchaBIG5()

    Dim r As Range
    Dim c As Range  'each character
    Dim s As String
    Dim ucode As Long
    Dim acode As Long
    Dim hc As Integer
    
    'tiann eng hanji 5401
    Const combegin As Long = &HA440 + 65536
    Const comend As Long = &HC67E + 65536
    'bo tiann eng hanji 7652
    Const uncombegin As Long = &HC940 + 65536
    Const uncomend As Long = &HF9D5 + 65536
    'huho
    Const symbegin As Long = &HA140 + 65536
    Const symend As Long = &HA3BF + 65536
        
    

     
    hc = MsgBox("Check noncommon Hanji" + Chr(13) + "To display BIG5/Unicode encoding?", vbYesNoCancel)
    If hc = vbCancel Then
        Exit Sub
    End If


    Application.Caption = "Tngteh kiamcha msi BIG5 e hanji. Chhiann sio tan--chite..."
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
        acode = Asc(c)
        ucode = AscW(c)
        If c.CharacterWidth = wdWidthFullWidth Then
          If acode >= 0 Then
            'non big5
                s = Hex(acode)
                c.Font.Color = wdColorRed
                If hc = vbYes Then
                    s = right(Hex(ucode), 4)
                    c.InsertAfter "(U+" + s + ") "
                End If
          Else
            acode = acode + 65536
            If acode >= combegin And acode <= comend Then
            ElseIf acode >= symbegin And acode <= symend Then
            ElseIf acode >= uncombegin And acode <= uncomend Then
                ' found non common BIG5
                s = Hex(acode)
                c.Font.Color = wdColorBlue
                If hc = vbYes Then
                    c.InsertAfter "(" + s + ") "
                End If
            Else
                ' non BIG5
                s = Hex(acode)
                c.Font.Color = wdColorRed
                If hc = vbYes Then
                    c.InsertAfter "(" + s + ") "
                End If
            End If
          End If
        End If
    End With
    r.Start = c.End
    Wend
    
    
    System.Cursor = wdCursorNormal
    Application.Caption = ""
    Application.ScreenUpdating = True
    
End Sub

