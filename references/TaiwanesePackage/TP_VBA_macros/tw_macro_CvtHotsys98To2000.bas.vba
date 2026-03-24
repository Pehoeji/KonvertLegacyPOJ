Attribute VB_Name = "CvtHotsys98To2000"
Option Explicit

Sub CvtHotsys98To2000()

    Dim r As Range
    Dim c As Range  'each character
    Dim which As Integer
    Dim hot98 As String
    Dim hot2000 As String
    
    
    ' i3, m7, o2, o5, o7, o8, u7, u8, u:5, N,
    hot98 = ChrW$(141) + _
        ChrW$(143) + _
        ChrW$(158) + ChrW$(&H201C) + ChrW$(&H201D) + ChrW$(157) + _
        ChrW$(129) + ChrW$(&H2019) + _
        ChrW$(&H2018) + _
        ChrW$(142)
        
    hot2000 = ChrW$(162) + _
        ChrW$(222) + _
        ChrW$(224) + ChrW$(226) + ChrW$(227) + ChrW$(223) + _
        ChrW$(242) + ChrW$(229) + _
        ChrW$(225) + _
        ChrW$(193)
        
    ' ou1 has 2 possible values 168 and 162 on 95/98 --> 168 on 2000
    hot98 = ChrW$(162) + hot98
    hot2000 = ChrW$(168) + hot2000
    ' 2 more strange codes 381 -> N, 382 -> o2
    hot98 = hot98 + ChrW$(381) + ChrW$(382)
    hot2000 = hot2000 + ChrW$(193) + ChrW$(224)

     
    If MsgBox("To convert Hotsys 95/98 to Hotsys 2000?", vbYesNo) <> vbYes Then
        Exit Sub
    End If


    Application.Caption = "Converting Hotsys 95/98 to Hotsys 2000. Please wait..."
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
        If .Font.Name = "HoloWin" Then
            which = InStr(hot98, .Text)
            If which > 0 Then
                ' found
                .Text = Mid$(hot2000, which, 1)
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


