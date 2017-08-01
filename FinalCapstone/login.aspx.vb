
Imports System
Imports System.Data.SqlClient

Partial Class login
    Inherits System.Web.UI.Page




    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtPW.Text = ""
        txtUN.Text = ""
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim enteredUN As String = txtUN.Text
        Dim enteredPW As String = txtPW.Text
        Dim dr As SqlDataReader
        Dim qStr As String

        Dim cmdr As SqlCommand


        Dim cnValAcct As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")


        cnValAcct.Open()

        cmdr = New SqlCommand("SELECT * FROM Customer WHERE UserName='" + enteredUN + "'", cnValAcct)


        dr = cmdr.ExecuteReader

        If (dr.Read) Then
            Dim dbPW As String = dr(4).ToString
            Dim dbAuth As String = dr(5).ToString
            Dim customerID As String = dr(0).ToString

            Dim dbAuth2 As String = "1"
            'String.Equals(dbPW, enteredPW) And 
            If String.Equals(dbPW, enteredPW) And String.Equals(dbAuth, dbAuth2) Then
                ' lblMessage.Text = " Details are Correct"
                qStr = "loginComplete"
                Session("loginValueAdmin") = qStr
                Session("customerID") = customerID



                Response.Redirect("adminPortal.aspx")
            ElseIf String.Equals(dbPW, enteredPW) Or String.Equals(dbAuth, dbAuth2) Then
                qStr = "loginComplete"
                Session("loginValue") = qStr
                Session("customerID") = customerID



                Response.Redirect("profile.aspx")




            Else
                lblMessage.Text = "Password Incorrect"

            End If
        Else

            lblMessage.Text = "UserName Incorrect"
        End If
        cnValAcct.Close()




    End Sub


    Protected Sub txtUN_TextChanged(sender As Object, e As EventArgs) Handles txtUN.TextChanged

    End Sub
End Class
