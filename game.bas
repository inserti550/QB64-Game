Dim gamestarted As Integer
Dim ax As Integer
Dim ay As Integer
Dim score As Integer
Randomize Timer
Screen 12
gamestarted = 0
ax = 0
ay = 0
x = 5
y = 5
score = 0
applex = 0
appley = 0
startTime = Timer
Do
    Cls
    Print ax; ay; x; y; gamestarted; applex; appley
    If appley = 0 Then

        applex = Int(Rnd * 40) + 6
        appley = Int(Rnd * 15) + 6

    End If
    Locate 15, 50
    Print "score: "; score; "  time: "; Int(Timer - startTime)
    Locate 4, 4
    Print "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
    Locate 5, 4
    Print "º                                         º"
    Locate 6, 4
    Print "º                                         º"
    Locate 7, 4
    Print "º                                         º"
    Locate 8, 4
    Print "º                                         º"
    Locate 9, 4
    Print "º                                         º"
    Locate 10, 4
    Print "º                                         º"
    Locate 11, 4
    Print "º                                         º"
    Locate 12, 4
    Print "º                                         º"
    Locate 13, 4
    Print "º                                         º"
    Locate 14, 4
    Print "º                                         º"
    Locate 15, 4
    Print "º                                         º"
    Locate 16, 4
    Print "º                                         º"
    Locate 17, 4
    Print "º                                         º"
    Locate 18, 4
    Print "º                                         º"
    Locate 19, 4
    Print "º                                         º"
    Locate 20, 4
    Print "º                                         º"
    Locate 21, 4
    Print "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"
    Locate appley, applex
    Print "ì"
    If x = applex And y = appley Then
        score = score + 1
        appley = 0
        applex = 0
    ElseIf applex = x + 1 And appley = y + 1 Then
        score = score + 1
        appley = 0
        applex = 0
    ElseIf applex = x + 1 And appley = y Then
        score = score + 1
        appley = 0
        applex = 0

    ElseIf applex = x And appley = y + 1 Then
        score = score + 1
        appley = 0
        applex = 0

    ElseIf applex = x - 1 And appley = y Then
        score = score + 1
        appley = 0
        applex = 0

    ElseIf applex = x - 1 And appley = y - 1 Then
        score = score + 1
        appley = 0
        applex = 0

    ElseIf applex = x - 1 And appley = y + 1 Then
        score = score + 1
        appley = 0
        applex = 0

    ElseIf applex = x + 1 And appley = y - 1 Then
        score = score + 1
        appley = 0
        applex = 0

    ElseIf applex = x And appley = y - 1 Then
        score = score + 1
        appley = 0
        applex = 0

    End If








    key$ = InKey$
    If key$ = "" Then
        ax = 0
        ay = 0
    Else
        Select Case key$
            Case "1"
                gamestarted = Not gamestarted
            Case Chr$(0) + "M"
                ax = 1
                ay = 0
            Case Chr$(0) + "K"
                ay = 0
                ax = -1
            Case Chr$(0) + "H"
                ax = 0
                ay = -1
            Case Chr$(0) + "P"
                ax = 0
                ay = 1
        End Select
    End If
    y = y + ay
    x = x + ax
    If x < 5 Then

        x = 5

    End If
    If y < 5 Then

        y = 5

    End If
    If y > 20 Then

        y = 20

    End If
    If x > 45 Then

        x = 45

    End If

    Locate y, x
    Print "ê"
    ax = 0
    ay = 0
    Sleep 1
Loop Until Timer - startTime >= 60
Cls
Locate 4, 4
Print "ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»"
Locate 5, 4
Print "º                                         º"
Locate 6, 4
Print "º                                         º"
Locate 7, 4
Print "º                                         º"
Locate 8, 4
Print "º                                         º"
Locate 9, 4
Print "º                                         º"
Locate 10, 4
Print "º                                         º"
Locate 11, 4
Print "º                                         º"
Locate 12, 4
Print "º                                         º"
Locate 13, 4
Print "º                                         º"
Locate 14, 4
Print "º                                         º"
Locate 15, 4
Print "º                                         º"
Locate 16, 4
Print "º                                         º"
Locate 17, 4
Print "º                                         º"
Locate 18, 4
Print "º                                         º"
Locate 19, 4
Print "º                                         º"
Locate 20, 4
Print "º                                         º"
Locate 21, 4
Print "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼"
Locate 13, 15
Print "You score: "; score
If score < 12 Then
    Locate 14, 15
    Print "You've earned a Brass Medal"
ElseIf score < 24 And score > 12 Then
    Locate 14, 15
    Print "You've earned a Silver Medal"
ElseIf score < 36 And score > 24 Then
    Locate 14, 15
    Print "You've earned a Gold Medal"
ElseIf score < 48 And score > 36 Then
    Locate 14, 15
    Print "You've earned a Platinum Medal"
End If

