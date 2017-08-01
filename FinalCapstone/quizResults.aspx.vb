Imports System
Imports System.Data.SqlClient

Partial Class quizResults
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim str As String = "loginComplete"
        Dim str2 As String = Session("loginValue")
        Dim custID As String = Session("customerID")
        Dim quizNum As String = Session("quizNum")

        If str2 <> str Then
            Response.Redirect("login.aspx")
        End If


        '    Dim dr As SqlDataReader
        '     Dim qStr As String
        '   Dim cmdr As SqlCommand


        '   Dim cnValAcct As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")


        '    cnValAcct.Open()

        '  cmdr = New SqlCommand("SELECT * FROM Movies WHERE QuizNumber='" + quizNum + "'", cnValAcct)


        '  dr = cmdr.ExecuteReader



        '   While (dr.Read)
        'Dim count As Integer = 0
        '   Dim dbMovieName As String = dr("MovieName").ToString
        '   Dim dbmovieYear As String = dr("Year").ToString
        '   Dim dbmovieGenre As String = dr("Genre").ToString
        '   Dim dbmovieDesc As String = dr(4).ToString
        '   Dim customerID As String = dr(0).ToString

        '   lblMessage.Text = dbMovieName + dbmovieYear

        '    End While

        '   cnValAcct.Close()







    End Sub


    Protected Sub btnRetake_Click(sender As Object, e As EventArgs) Handles btnRetake.Click
        Response.Redirect("quiz.aspx")
    End Sub

 
End Class
