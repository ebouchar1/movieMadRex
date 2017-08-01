Imports System.Data.SqlClient

Partial Class profile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim str As String = "loginComplete"
        Dim str2 As String = Session("loginValue")
        Dim custID As String = Session("customerID")
        Dim QuizN As String = Session("quizNum")

        If str2 <> str Then
            Response.Redirect("login.aspx")
    
        ElseIf str2 = str Then


            Dim dr As SqlDataReader

            Dim cmdr As SqlCommand


            Dim cnValAcct As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")


            cnValAcct.Open()

            cmdr = New SqlCommand("SELECT * FROM Customer WHERE CustomerID='" + custID + "'", cnValAcct)


            dr = cmdr.ExecuteReader

            If (dr.Read) Then
                Dim dbFName As String = dr(1).ToString
                Dim dbLName As String = dr(2).ToString
                Dim dbUName As String = dr(3).ToString
                lblFName.Text = dbFName
                lblLName.Text = dbLName
                lblUN.Text = dbUName
                lblCustID.Text = custID

                cnValAcct.Close()
            Else

                Response.Redirect("login.aspx")

            End If

        End If





    End Sub
End Class
