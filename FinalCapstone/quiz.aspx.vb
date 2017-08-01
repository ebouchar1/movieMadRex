Imports System.Data.SqlClient

Partial Class quiz
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim str As String = "loginComplete"
        Dim str2 As String = Session("loginValue")
        If str2 <> str Then
            Response.Redirect("login.aspx")
        End If



    End Sub
    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        rdBtnL1.ClearSelection()
        rdBtnL2.ClearSelection()
        rdBtnL3.ClearSelection()
        rdBtnL4.ClearSelection()
        rdBtnL5.ClearSelection()
        rdBtnL6.ClearSelection()
        rdBtnL7.ClearSelection()


    End Sub

    Protected Sub btnSub_Click(sender As Object, e As EventArgs) Handles btnSub.Click
        Dim rdList1 As Integer = rdBtnL1.SelectedValue
        Dim rdList2 As Integer = rdBtnL2.SelectedValue
        Dim rdList3 As Integer = rdBtnL3.SelectedValue
        Dim rdList4 As Integer = rdBtnL4.SelectedValue
        Dim rdList5 As Integer = rdBtnL5.SelectedValue
        Dim rdList6 As Integer = rdBtnL6.SelectedValue
        Dim rdList7 As Integer = rdBtnL7.SelectedValue
        Dim rdTotal As Integer = rdList1 + rdList2 + rdList3 + rdList4 + rdList5 + rdList6 + rdList7
        Dim quizIdentifier As Integer
        Dim timeStamp As String = DateTime.Now


        If rdTotal >= 200 Then
            quizIdentifier = 4
        ElseIf rdTotal >= 86 And rdTotal <= 115 Then
            quizIdentifier = 3
        ElseIf rdTotal >= 51 And rdTotal <= 85 Then
            quizIdentifier = 2
        ElseIf rdTotal >= 36 And rdTotal <= 50 Then
            quizIdentifier = 1
        ElseIf rdTotal >= 0 And rdTotal <= 35 Then
            quizIdentifier = 0
        End If

        Session("quizNum") = quizIdentifier

        Dim cnQuizCon As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        cnQuizCon.Open()

        Dim custID As String = Session("customerID")




        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO [Quiz](Q1, Q2, Q3, Q4, Q5, Q6, Q7, CustomerID) VALUES ('" & rdList1 & "','" & rdList2 & "','" & rdList3 & "','" & rdList4 & "','" & rdList5 & "','" & rdList6 & "','" & rdList7 & "','" & custID & "')"), cnQuizCon)
        Dim cmdR As New Data.SqlClient.SqlCommand(("INSERT INTO [QuizResults](QuizNumber, CustomerID, Recomendations, timeStamp) VALUES ('" & quizIdentifier & "','" & custID & "','" & quizIdentifier & "','" & timeStamp & "')"), cnQuizCon)




        cmd.ExecuteNonQuery()
        cmdR.ExecuteNonQuery()




        cnQuizCon.Close()




        Response.Redirect("quizResults.aspx")
    End Sub



End Class
