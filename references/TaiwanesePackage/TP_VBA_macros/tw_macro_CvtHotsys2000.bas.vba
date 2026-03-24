Attribute VB_Name = "CvtHotsys2000"
Option Explicit

Sub CvtHotsys2000()

    Dim r As Range
    Dim c As Range  'each character
    Dim hot2000 As String
    Dim tai As String
    Dim which As Integer
    
    
    
    ' following the sequence of a, e, i, m, n, o, ou, u, u:, (lower case, N, upper case)
    ' note that: ou has 6 characters, u: has 5 characters
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
        ChrW$(218) + ChrW$(196) + ChrW$(208) + ChrW$(209) + ChrW$(219)
    tai = ChrW$(225) + ChrW$(224) + ChrW$(226) + ChrW$(228) + ChrW$(227) + _
        ChrW$(233) + ChrW$(232) + ChrW$(234) + ChrW$(235) + ChrW$(231) + _
        ChrW$(237) + ChrW$(236) + ChrW$(238) + ChrW$(&H201E) + ChrW$(&H2026) + _
        ChrW$(&H2022) + ChrW$(&H2013) + ChrW$(&H2014) + ChrW$(&H2DC) + ChrW$(&H2122) + _
        ChrW$(161) + ChrW$(162) + ChrW$(163) + ChrW$(164) + ChrW$(241) + _
        ChrW$(243) + ChrW$(242) + ChrW$(244) + ChrW$(246) + ChrW$(245) + _
        ChrW$(172) + ChrW$(175) + ChrW$(177) + ChrW$(178) + ChrW$(179) + ChrW$(180) + _
        ChrW$(250) + ChrW$(249) + ChrW$(251) + ChrW$(252) + ChrW$(253) + _
        ChrW$(187) + ChrW$(188) + ChrW$(189) + ChrW$(190) + ChrW$(191) + _
        ChrW$(176) + _
        ChrW$(193) + ChrW$(192) + ChrW$(194) + ChrW$(196) + ChrW$(195) + _
        ChrW$(201) + ChrW$(200) + ChrW$(202) + ChrW$(203) + ChrW$(199) + _
        ChrW$(205) + ChrW$(204) + ChrW$(206) + ChrW$(&H201A) + ChrW$(&H192) + _
        ChrW$(&H2C6) + ChrW$(&H2030) + ChrW$(&H160) + ChrW$(&H2039) + ChrW$(&H152) + _
        ChrW$(&H161) + ChrW$(&H203A) + ChrW$(&H153) + ChrW$(&H178) + ChrW$(209) + _
        ChrW$(211) + ChrW$(210) + ChrW$(212) + ChrW$(214) + ChrW$(213) + _
        ChrW$(165) + ChrW$(166) + ChrW$(167) + ChrW$(168) + ChrW$(170) + ChrW$(171) + _
        ChrW$(218) + ChrW$(217) + ChrW$(219) + ChrW$(220) + ChrW$(221) + _
        ChrW$(181) + ChrW$(182) + ChrW$(184) + ChrW$(185) + ChrW$(186)
        

     
    If MsgBox("To convert Hotsys 2000 to Taiwanese Package?", vbYesNo) <> vbYes Then
        Exit Sub
    End If


    Application.Caption = "Converting Hotsys 2000 to Taiwanese Package. Please wait..."
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
            .Font.Name = "Taiwanese Serif"
            which = InStr(hot2000, .Text)
            If which > 0 Then
                ' found
                .Text = Mid$(tai, which, 1)
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

