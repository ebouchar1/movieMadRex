Imports System.Data.SqlClient

Partial Class movieReview
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
                Dim dbMName2 As String = dr(1).ToString



                lblMName.Text = dbMName
                lblMName2.Text = dbMName2





                cnValAcct.Close()
            Else

                Response.Redirect("login.aspx")

            End If

        End If





    End Sub


    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtRating.Text = ""
        txtReview.Text = ""


    End Sub


    Protected Sub btnSub_Click(sender As Object, e As EventArgs) Handles btnSub.Click
        Dim mvReview As String = txtReview.Text
        Dim mvRating As String = txtRating.Text
        Dim custID As String = Session("customerID")
        Dim movID As String = Request.QueryString("MovieID")

        Dim cnMovieCon As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        cnMovieCon.Open()




        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO [Reviews](Review, CustomerID, MovieID, Rating) VALUES ('" & mvReview & "','" & custID & "','" & movID & "','" & mvRating & "')"), cnMovieCon)
       



        cmd.ExecuteNonQuery()
        DetailsView1.DataBind()




        cnMovieCon.Close()


    End Sub
End Class
