Module Program
    Sub Main()
        Console.Title = "UP AND DOWN THE LADDER WOD"
        Console.WriteLine("    _Geek Fit_
        O
     \__|__/
        |
       / \
      /   \
UP AND DOWN THE LADDER WOD
Start at 1 each of burpees, dumbbell thrusters, and situps." & vbCrLf)
        Console.WriteLine("Ready?")
        For count As Integer = 5 To 1 Step -1
            Console.WriteLine(count)
            Threading.Thread.Sleep(1000)
        Next
        Console.WriteLine(vbCrLf & "GO!!!!" & vbCrLf)
        For round As Integer = 1 To 19
            Dim actualRound As Integer = round
            If round > 10 Then
                actualRound = 10 - (round - 10)
            End If
            Dim continueText As String = "Press any key to continue to the next round"
            DoRound(actualRound)
            Console.WriteLine(continueText.PadLeft(continueText.Length + actualRound) & vbCrLf)
            Console.ReadKey()
        Next
        Console.WriteLine(vbCrLf & "Finished!!!" & vbCrLf)
        Console.ReadKey()
    End Sub

    Private Sub DoRound(round As Integer)
        Dim exercises As List(Of String)
        If round = 1 Then
            exercises = New List(Of String)({"Burpee", "Dumbbell Thruster", "Sit-up"})
        Else
            exercises = New List(Of String)({"Burpees", "Dumbbell Thrusters", "Sit-ups"})
        End If
        Dim line As String = ("{0} {1}").PadLeft(7 + round)
        exercises.ForEach(Sub(ex As String) Console.WriteLine(String.Format(line, round, ex)))
    End Sub
End Module
