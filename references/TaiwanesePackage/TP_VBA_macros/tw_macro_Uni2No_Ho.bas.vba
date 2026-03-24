Attribute VB_Name = "Uni2No_Ho"
Option Explicit
Const TW_AB_SIZE As Integer = 204
Dim taiA(TW_AB_SIZE) As String ' tai Alphabet
Dim taiU(TW_AB_SIZE) As String ' Taigi Unicode encoding table
Dim taiI(TW_AB_SIZE) As Integer ' tai index number

' sort taiU by index
Sub SortTaiUni()
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
        value = taiU(taiI(i))
        For j = i + 1 To TW_AB_SIZE
            If taiU(taiI(j)) < value Then
                min = j
                value = taiU(taiI(j))
            End If
        Next j
        ' change i & min of taiI()
        t = taiI(i)
        taiI(i) = taiI(min)
        taiI(min) = t
    Next i
End Sub
' binary search taiU by index
Function bsearch(s As String)
    Dim left As Integer
    Dim right As Integer
    Dim curr As Integer
    
    left = 1: right = TW_AB_SIZE
    While left <= right
        curr = (left + right) / 2
        If s = taiU(taiI(curr)) Then
            bsearch = taiI(curr)
            Exit Function
        ElseIf s < taiU(taiI(curr)) Then
            right = curr - 1
        Else
            left = curr + 1
        End If
    Wend
    bsearch = 0
End Function
'Unicode string to number format
' s is a Unicode encoded string
Function uni2nf(us As String)
    Dim which As Integer
    Dim s As String
    
    which = bsearch(us)
    If (which > 0) Then
        s = taiA(which)
    Else
        s = ""
    End If
    uni2nf = s
End Function
Function isNasal(s As String)
    If (s = ChrW$(&H207F)) Then
        isNasal = True
    Else
        isNasal = False
    End If
End Function

Function isTrailing(s As String)
    isTrailing = (s >= "a" And s <= "z") Or (s >= "A" And s <= "Z")
End Function
Private Sub InitTai()

    Dim i As Integer
    
    i = 1
    taiA(i) = "a": taiU(i) = "a": i = i + 1
    taiA(i) = "a2": taiU(i) = ChrW$(&HE1): i = i + 1
    taiA(i) = "a2": taiU(i) = "a" + ChrW$(&H301): i = i + 1
    taiA(i) = "a3": taiU(i) = ChrW$(&HE0): i = i + 1
    taiA(i) = "a3": taiU(i) = "a" + ChrW$(&H300): i = i + 1
    taiA(i) = "a5": taiU(i) = ChrW$(&HE2): i = i + 1
    taiA(i) = "a5": taiU(i) = "a" + ChrW$(&H302): i = i + 1
    taiA(i) = "a7": taiU(i) = ChrW$(&H101): i = i + 1
    taiA(i) = "a7": taiU(i) = "a" + ChrW$(&H304): i = i + 1
    taiA(i) = "a8": taiU(i) = "a" + ChrW$(&H30D): i = i + 1
    taiA(i) = "a9": taiU(i) = ChrW$(&H103): i = i + 1
    taiA(i) = "a9": taiU(i) = "a" + ChrW$(&H306): i = i + 1
    taiA(i) = "e": taiU(i) = "e": i = i + 1
    taiA(i) = "e2": taiU(i) = ChrW$(&HE9): i = i + 1
    taiA(i) = "e2": taiU(i) = "e" + ChrW$(&H301): i = i + 1
    taiA(i) = "e3": taiU(i) = ChrW$(&HE8): i = i + 1
    taiA(i) = "e3": taiU(i) = "e" + ChrW$(&H300): i = i + 1
    taiA(i) = "e5": taiU(i) = ChrW$(&HEA): i = i + 1
    taiA(i) = "e5": taiU(i) = "e" + ChrW$(&H302): i = i + 1
    taiA(i) = "e7": taiU(i) = ChrW$(&H113): i = i + 1
    taiA(i) = "e7": taiU(i) = "e" + ChrW$(&H304): i = i + 1
    taiA(i) = "e8": taiU(i) = "e" + ChrW$(&H30D): i = i + 1
    taiA(i) = "e9": taiU(i) = ChrW$(&H115): i = i + 1
    taiA(i) = "e9": taiU(i) = "e" + ChrW$(&H306): i = i + 1
    taiA(i) = "i": taiU(i) = "i": i = i + 1
    taiA(i) = "i2": taiU(i) = ChrW$(&HED): i = i + 1
    taiA(i) = "i2": taiU(i) = "i" + ChrW$(&H301): i = i + 1
    taiA(i) = "i3": taiU(i) = ChrW$(&HEC): i = i + 1
    taiA(i) = "i3": taiU(i) = "i" + ChrW$(&H300): i = i + 1
    taiA(i) = "i5": taiU(i) = ChrW$(&HEE): i = i + 1
    taiA(i) = "i5": taiU(i) = "i" + ChrW$(&H302): i = i + 1
    taiA(i) = "i7": taiU(i) = ChrW$(&H12B): i = i + 1
    taiA(i) = "i7": taiU(i) = "i" + ChrW$(&H304): i = i + 1
    taiA(i) = "i8": taiU(i) = "i" + ChrW$(&H30D): i = i + 1
    taiA(i) = "i9": taiU(i) = ChrW$(&H12D): i = i + 1
    taiA(i) = "i9": taiU(i) = "i" + ChrW$(&H306): i = i + 1
    taiA(i) = "ii": taiU(i) = ChrW$(&H1E73): i = i + 1
    taiA(i) = "ii2": taiU(i) = ChrW$(&H1E73) + ChrW$(&H301): i = i + 1
    taiA(i) = "ii3": taiU(i) = ChrW$(&H1E73) + ChrW$(&H300): i = i + 1
    taiA(i) = "ii5": taiU(i) = ChrW$(&H1E73) + ChrW$(&H302): i = i + 1
    taiA(i) = "ii7": taiU(i) = ChrW$(&H1E73) + ChrW$(&H304): i = i + 1
    taiA(i) = "ii8": taiU(i) = ChrW$(&H1E73) + ChrW$(&H30D): i = i + 1
    taiA(i) = "m": taiU(i) = "m": i = i + 1
    taiA(i) = "m2": taiU(i) = ChrW$(&H1E3F): i = i + 1
    taiA(i) = "m2": taiU(i) = "m" + ChrW$(&H301): i = i + 1
    taiA(i) = "m3": taiU(i) = "m" + ChrW$(&H300): i = i + 1
    taiA(i) = "m5": taiU(i) = "m" + ChrW$(&H302): i = i + 1
    taiA(i) = "m7": taiU(i) = "m" + ChrW$(&H304): i = i + 1
    taiA(i) = "m8": taiU(i) = "m" + ChrW$(&H30D): i = i + 1
    taiA(i) = "m9": taiU(i) = "m" + ChrW$(&H306): i = i + 1
    taiA(i) = "n": taiU(i) = "n": i = i + 1
    taiA(i) = "n2": taiU(i) = ChrW$(&H144): i = i + 1
    taiA(i) = "n2": taiU(i) = "n" + ChrW$(&H301): i = i + 1
    taiA(i) = "n3": taiU(i) = ChrW$(&H1F9): i = i + 1
    taiA(i) = "n3": taiU(i) = "n" + ChrW$(&H300): i = i + 1
    taiA(i) = "n5": taiU(i) = "n" + ChrW$(&H302): i = i + 1
    taiA(i) = "n7": taiU(i) = "n" + ChrW$(&H304): i = i + 1
    taiA(i) = "n8": taiU(i) = "n" + ChrW$(&H30D): i = i + 1
    taiA(i) = "n9": taiU(i) = "n" + ChrW$(&H306): i = i + 1
    taiA(i) = "o": taiU(i) = "o": i = i + 1
    taiA(i) = "o2": taiU(i) = ChrW$(&HF3): i = i + 1
    taiA(i) = "o2": taiU(i) = "o" + ChrW$(&H301): i = i + 1
    taiA(i) = "o3": taiU(i) = ChrW$(&HF2): i = i + 1
    taiA(i) = "o3": taiU(i) = "o" + ChrW$(&H300): i = i + 1
    taiA(i) = "o5": taiU(i) = ChrW$(&HF4): i = i + 1
    taiA(i) = "o5": taiU(i) = "o" + ChrW$(&H302): i = i + 1
    taiA(i) = "o7": taiU(i) = ChrW$(&H14D): i = i + 1
    taiA(i) = "o7": taiU(i) = "o" + ChrW$(&H304): i = i + 1
    taiA(i) = "o8": taiU(i) = "o" + ChrW$(&H30D): i = i + 1
    taiA(i) = "o9": taiU(i) = ChrW$(&H14F): i = i + 1
    taiA(i) = "o9": taiU(i) = "o" + ChrW$(&H306): i = i + 1
    taiA(i) = "ou": taiU(i) = "o" + ChrW$(&H358): i = i + 1
    taiA(i) = "ou2": taiU(i) = ChrW$(&HF3) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou2": taiU(i) = "o" + ChrW$(&H301) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou2": taiU(i) = "o" + ChrW$(&H358) + ChrW$(&H301): i = i + 1
    taiA(i) = "ou3": taiU(i) = ChrW$(&HF2) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou3": taiU(i) = "o" + ChrW$(&H300) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou3": taiU(i) = "o" + ChrW$(&H358) + ChrW$(&H300): i = i + 1
    taiA(i) = "ou5": taiU(i) = ChrW$(&HF4) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou5": taiU(i) = "o" + ChrW$(&H302) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou5": taiU(i) = "o" + ChrW$(&H358) + ChrW$(&H302): i = i + 1
    taiA(i) = "ou7": taiU(i) = ChrW$(&H14D) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou7": taiU(i) = "o" + ChrW$(&H304) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou7": taiU(i) = "o" + ChrW$(&H358) + ChrW$(&H304): i = i + 1
    taiA(i) = "ou8": taiU(i) = "o" + ChrW$(&H30D) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou8": taiU(i) = "o" + ChrW$(&H358) + ChrW$(&H30D): i = i + 1
    taiA(i) = "ou9": taiU(i) = ChrW$(&H14F) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou9": taiU(i) = "o" + ChrW$(&H306) + ChrW$(&H358): i = i + 1
    taiA(i) = "ou9": taiU(i) = "o" + ChrW$(&H358) + ChrW$(&H306): i = i + 1
    taiA(i) = "u": taiU(i) = "u": i = i + 1
    taiA(i) = "u2": taiU(i) = ChrW$(&HFA): i = i + 1
    taiA(i) = "u2": taiU(i) = "u" + ChrW$(&H301): i = i + 1
    taiA(i) = "u3": taiU(i) = ChrW$(&HF9): i = i + 1
    taiA(i) = "u3": taiU(i) = "u" + ChrW$(&H300): i = i + 1
    taiA(i) = "u5": taiU(i) = ChrW$(&HFB): i = i + 1
    taiA(i) = "u5": taiU(i) = "u" + ChrW$(&H302): i = i + 1
    taiA(i) = "u7": taiU(i) = ChrW$(&H16B): i = i + 1
    taiA(i) = "u7": taiU(i) = "u" + ChrW$(&H304): i = i + 1
    taiA(i) = "u8": taiU(i) = "u" + ChrW$(&H30D): i = i + 1
    taiA(i) = "u9": taiU(i) = ChrW$(&H16D): i = i + 1
    taiA(i) = "u9": taiU(i) = "u" + ChrW$(&H306): i = i + 1
    taiA(i) = "nn": taiU(i) = ChrW$(&H207F): i = i + 1
    taiA(i) = "N": taiU(i) = ChrW$(&H207F): i = i + 1
    taiA(i) = "A": taiU(i) = "A": i = i + 1
    taiA(i) = "A2": taiU(i) = ChrW$(&HC1): i = i + 1
    taiA(i) = "A2": taiU(i) = "A" + ChrW$(&H301): i = i + 1
    taiA(i) = "A3": taiU(i) = ChrW$(&HC0): i = i + 1
    taiA(i) = "A3": taiU(i) = "A" + ChrW$(&H300): i = i + 1
    taiA(i) = "A5": taiU(i) = ChrW$(&HC2): i = i + 1
    taiA(i) = "A5": taiU(i) = "A" + ChrW$(&H302): i = i + 1
    taiA(i) = "A7": taiU(i) = ChrW$(&H100): i = i + 1
    taiA(i) = "A7": taiU(i) = "A" + ChrW$(&H304): i = i + 1
    taiA(i) = "A8": taiU(i) = "A" + ChrW$(&H30D): i = i + 1
    taiA(i) = "A9": taiU(i) = ChrW$(&H102): i = i + 1
    taiA(i) = "A9": taiU(i) = "A" + ChrW$(&H306): i = i + 1
    taiA(i) = "E": taiU(i) = "E": i = i + 1
    taiA(i) = "E2": taiU(i) = ChrW$(&HC9): i = i + 1
    taiA(i) = "E2": taiU(i) = "E" + ChrW$(&H301): i = i + 1
    taiA(i) = "E3": taiU(i) = ChrW$(&HC8): i = i + 1
    taiA(i) = "E3": taiU(i) = "E" + ChrW$(&H300): i = i + 1
    taiA(i) = "E5": taiU(i) = ChrW$(&HCA): i = i + 1
    taiA(i) = "E5": taiU(i) = "E" + ChrW$(&H302): i = i + 1
    taiA(i) = "E7": taiU(i) = ChrW$(&H112): i = i + 1
    taiA(i) = "E7": taiU(i) = "E" + ChrW$(&H304): i = i + 1
    taiA(i) = "E8": taiU(i) = "E" + ChrW$(&H30D): i = i + 1
    taiA(i) = "E9": taiU(i) = ChrW$(&H114): i = i + 1
    taiA(i) = "E9": taiU(i) = "E" + ChrW$(&H306): i = i + 1
    taiA(i) = "I": taiU(i) = "I": i = i + 1
    taiA(i) = "I2": taiU(i) = ChrW$(&HCD): i = i + 1
    taiA(i) = "I2": taiU(i) = "I" + ChrW$(&H301): i = i + 1
    taiA(i) = "I3": taiU(i) = ChrW$(&HCC): i = i + 1
    taiA(i) = "I3": taiU(i) = "I" + ChrW$(&H300): i = i + 1
    taiA(i) = "I5": taiU(i) = ChrW$(&HCE): i = i + 1
    taiA(i) = "I5": taiU(i) = "I" + ChrW$(&H302): i = i + 1
    taiA(i) = "I7": taiU(i) = ChrW$(&H12A): i = i + 1
    taiA(i) = "I7": taiU(i) = "I" + ChrW$(&H304): i = i + 1
    taiA(i) = "I8": taiU(i) = "I" + ChrW$(&H30D): i = i + 1
    taiA(i) = "I9": taiU(i) = ChrW$(&H12C): i = i + 1
    taiA(i) = "I9": taiU(i) = "I" + ChrW$(&H306): i = i + 1
    taiA(i) = "Ii": taiU(i) = ChrW$(&H1E72): i = i + 1
    taiA(i) = "Ii2": taiU(i) = ChrW$(&H1E72) + ChrW$(&H301): i = i + 1
    taiA(i) = "Ii3": taiU(i) = ChrW$(&H1E72) + ChrW$(&H300): i = i + 1
    taiA(i) = "Ii5": taiU(i) = ChrW$(&H1E72) + ChrW$(&H302): i = i + 1
    taiA(i) = "Ii7": taiU(i) = ChrW$(&H1E72) + ChrW$(&H304): i = i + 1
    taiA(i) = "Ii8": taiU(i) = ChrW$(&H1E72) + ChrW$(&H30D): i = i + 1
    taiA(i) = "M": taiU(i) = "M": i = i + 1
    taiA(i) = "M2": taiU(i) = ChrW$(&H1E3E): i = i + 1
    taiA(i) = "M2": taiU(i) = "M" + ChrW$(&H301): i = i + 1
    taiA(i) = "M3": taiU(i) = "M" + ChrW$(&H300): i = i + 1
    taiA(i) = "M5": taiU(i) = "M" + ChrW$(&H302): i = i + 1
    taiA(i) = "M7": taiU(i) = "M" + ChrW$(&H304): i = i + 1
    taiA(i) = "M8": taiU(i) = "M" + ChrW$(&H30D): i = i + 1
    taiA(i) = "M9": taiU(i) = "M" + ChrW$(&H306): i = i + 1
    taiA(i) = "N": taiU(i) = "N": i = i + 1
    taiA(i) = "N2": taiU(i) = ChrW$(&H143): i = i + 1
    taiA(i) = "N2": taiU(i) = "N" + ChrW$(&H301): i = i + 1
    taiA(i) = "N3": taiU(i) = ChrW$(&H1F8): i = i + 1
    taiA(i) = "N3": taiU(i) = "N" + ChrW$(&H300): i = i + 1
    taiA(i) = "N5": taiU(i) = "N" + ChrW$(&H302): i = i + 1
    taiA(i) = "N7": taiU(i) = "N" + ChrW$(&H304): i = i + 1
    taiA(i) = "N8": taiU(i) = "N" + ChrW$(&H30D): i = i + 1
    taiA(i) = "N9": taiU(i) = "N" + ChrW$(&H306): i = i + 1
    taiA(i) = "O": taiU(i) = "O": i = i + 1
    taiA(i) = "O2": taiU(i) = ChrW$(&HD3): i = i + 1
    taiA(i) = "O2": taiU(i) = "O" + ChrW$(&H301): i = i + 1
    taiA(i) = "O3": taiU(i) = ChrW$(&HD2): i = i + 1
    taiA(i) = "O3": taiU(i) = "O" + ChrW$(&H300): i = i + 1
    taiA(i) = "O5": taiU(i) = ChrW$(&HD4): i = i + 1
    taiA(i) = "O5": taiU(i) = "O" + ChrW$(&H302): i = i + 1
    taiA(i) = "O7": taiU(i) = ChrW$(&H14C): i = i + 1
    taiA(i) = "O7": taiU(i) = "O" + ChrW$(&H304): i = i + 1
    taiA(i) = "O8": taiU(i) = "O" + ChrW$(&H30D): i = i + 1
    taiA(i) = "O9": taiU(i) = ChrW$(&H14E): i = i + 1
    taiA(i) = "O9": taiU(i) = "O" + ChrW$(&H306): i = i + 1
    taiA(i) = "Ou": taiU(i) = "O" + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou2": taiU(i) = ChrW$(&HD3) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou2": taiU(i) = "O" + ChrW$(&H301) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou2": taiU(i) = "O" + ChrW$(&H358) + ChrW$(&H301): i = i + 1
    taiA(i) = "Ou3": taiU(i) = ChrW$(&HD2) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou3": taiU(i) = "O" + ChrW$(&H300) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou3": taiU(i) = "O" + ChrW$(&H358) + ChrW$(&H300): i = i + 1
    taiA(i) = "Ou5": taiU(i) = ChrW$(&HD4) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou5": taiU(i) = "O" + ChrW$(&H302) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou5": taiU(i) = "O" + ChrW$(&H358) + ChrW$(&H302): i = i + 1
    taiA(i) = "Ou7": taiU(i) = ChrW$(&H14C) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou7": taiU(i) = "O" + ChrW$(&H304) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou7": taiU(i) = "O" + ChrW$(&H358) + ChrW$(&H304): i = i + 1
    taiA(i) = "Ou8": taiU(i) = "O" + ChrW$(&H30D) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou8": taiU(i) = "O" + ChrW$(&H358) + ChrW$(&H30D): i = i + 1
    taiA(i) = "Ou9": taiU(i) = ChrW$(&H14E) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou9": taiU(i) = "O" + ChrW$(&H306) + ChrW$(&H358): i = i + 1
    taiA(i) = "Ou9": taiU(i) = "O" + ChrW$(&H358) + ChrW$(&H306): i = i + 1
    taiA(i) = "U": taiU(i) = "U": i = i + 1
    taiA(i) = "U2": taiU(i) = ChrW$(&HDA): i = i + 1
    taiA(i) = "U2": taiU(i) = "U" + ChrW$(&H301): i = i + 1
    taiA(i) = "U3": taiU(i) = ChrW$(&HD9): i = i + 1
    taiA(i) = "U3": taiU(i) = "U" + ChrW$(&H300): i = i + 1
    taiA(i) = "U5": taiU(i) = ChrW$(&HDB): i = i + 1
    taiA(i) = "U5": taiU(i) = "U" + ChrW$(&H302): i = i + 1
    taiA(i) = "U7": taiU(i) = ChrW$(&H16A): i = i + 1
    taiA(i) = "U7": taiU(i) = "U" + ChrW$(&H304): i = i + 1
    taiA(i) = "U8": taiU(i) = "U" + ChrW$(&H30D): i = i + 1
    taiA(i) = "U9": taiU(i) = ChrW$(&H16C): i = i + 1
    taiA(i) = "U9": taiU(i) = "U" + ChrW$(&H306)
'    MsgBox ("table size =" + str(i))
 
End Sub



Sub UnicodeToNumberHolo()

    Dim r As Range
    Dim c As Range  'each character
    Dim matching, toPutTone As Boolean
    Dim toneNo As String
    Dim uniStr, outStr, s As String
    Dim hc As Integer
    Dim nasalSound As String
    Dim s1 As String
    
      
    InitTai
    SortTaiUni
     
    hc = MsgBox("To convert Unicode to Number Format" + Chr$(13) + "with 'nn' for nasal sound?", vbYesNoCancel)
    If hc = vbCancel Then
        Exit Sub
    ElseIf hc = vbYes Then
        nasalSound = "nn"
    Else
        nasalSound = "N"
    End If


    Application.Caption = "Converting Unicode to Number Format. Please wait..."
    'Application.ScreenUpdating = False
    System.Cursor = wdCursorWait

    If (Selection.Start <> Selection.End) Then
        Set r = Selection.Range
    Else
        Set r = ActiveDocument.Content
    End If
    
    uniStr = ""
    outStr = ""
    toneNo = ""
    s = ""
    toPutTone = False
    matching = False
    While r <> ""
    Set c = r.Characters.First
    With c
        If isNasal(.Text) Then
            If matching Then
                'check and adjust the outStr & toneno
                toneNo = right(outStr, 1)
                If (toneNo >= "1") And (toneNo <= "9") Then
                    outStr = left(outStr, Len(outStr) - 1)
                Else
                    toneNo = ""
                End If
            End If
            .Text = outStr + nasalSound + toneNo
            .CharacterWidth = wdWidthHalfWidth
            outStr = ""
            toneNo = ""
            toPutTone = False
            matching = False
        ElseIf toPutTone Then
            If Not isTrailing(.Text) Then
                'to end the trailing sequence
                .Text = toneNo + .Text
                .CharacterWidth = wdWidthHalfWidth
                toneNo = ""
                toPutTone = False
            Else
                'skip trailing characters
            End If
        ElseIf matching Then
            s = uni2nf(uniStr + .Text)
            If s <> "" Then
                'still being within a matching sequence, maximal matching
                uniStr = uniStr + .Text
                .Text = ""
                outStr = s
            Else
                'end a matching sequence
                'check toneno
                toneNo = right(outStr, 1)
                If (toneNo >= "1") And (toneNo <= "9") Then
                    outStr = left(outStr, Len(outStr) - 1)
                    toPutTone = True
                Else
                    toneNo = ""
                End If
                'remember the new character, and out the old data
                s = .Text
                .Text = outStr
                outStr = ""
                .CharacterWidth = wdWidthHalfWidth
                matching = False
                
                If toPutTone Then
                    If Not isTrailing(s) Then
                        .Text = .Text + toneNo + s
                        toneNo = ""
                        .CharacterWidth = wdWidthHalfWidth
                        toPutTone = False
                    Else
                        'begin the trailing sequence
                        .Text = .Text + s
                        .CharacterWidth = wdWidthHalfWidth
                    End If
                Else
                    'not need to put tone, check if dobule or triple vowels, such as t<io8>h, <ma7>
                    ' if yes, to start a new matching
                    ' if not, output the character directly
                    s1 = uni2nf(s)
                    If s1 <> "" Then
                        'begin a matching sequence
                        uniStr = s
                        outStr = s1
                        matching = True
                    Else
                        .Text = .Text + s
                        .CharacterWidth = wdWidthHalfWidth
                    End If
                End If
            End If
        Else
            ' if left(.Font.Name, 10) = "Taiwanese " Then
            ' do not care font again
            s = uni2nf(.Text)
            If s <> "" Then
                'begin a matching sequence
                uniStr = .Text
                .Text = ""
                outStr = s
                matching = True
            End If
        End If
    End With
    r.Start = c.End
    Wend
    
    outStr = outStr + toneNo
    If outStr <> "" Then
        Set c = r.Characters.First
        r.InsertBefore (outStr)
'        r.Text = outStr
'        Set c = r.Characters.Last
'        r.InsertAfter (outStr)
'        Selection.End = r.End
    End If

    System.Cursor = wdCursorNormal
    Application.Caption = ""
    Application.ScreenUpdating = True
    

End Sub


