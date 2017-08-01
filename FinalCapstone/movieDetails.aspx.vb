Imports System.Data.SqlClient

Partial Class movieDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim str As String = "loginComplete"
        Dim str2 As String = Session("loginValue")
        Dim custID As String = Session("customerID")
        Dim QuizN As String = Session("quizNum")
        Dim movID As String = Request.QueryString("MovieID")


        If str2 <> str Then
            Response.Redirect("login.aspx")

        ElseIf str2 = str Then


            Dim dr As SqlDataReader

            Dim cmdr As SqlCommand


            Dim cnValAcct As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")


            cnValAcct.Open()

            cmdr = New SqlCommand("SELECT * FROM Movies WHERE MovieID='" + movID + "'", cnValAcct)


            dr = cmdr.ExecuteReader

            If (dr.Read) Then
                Dim dbMName As String = dr(1).ToString




                lblMName.Text = dbMName






                cnValAcct.Close()
            Else

                Response.Redirect("login.aspx")

            End If

        End If
    End Sub
End Class
