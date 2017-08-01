
Partial Class createAccount
    Inherits System.Web.UI.Page

    Protected Sub btnCA_Click(sender As Object, e As EventArgs) Handles btnCA.Click
        Dim fName As String
        Dim lName As String
        Dim uName As String
        Dim passWDone As String
        Dim passWDtwo As String
        Dim uRole As Integer = 2

        fName = Trim(txtFirst.Text.ToString)
        lName = Trim(txtLast.Text.ToString)
        uName = Trim(txtUN.Text.ToString)
        passWDone = Trim(txtPW1.Text.ToString)
        passWDtwo = Trim(txtPW2.Text.ToString)
        
        If passWDone = passWDtwo Then
            Dim cnAcctCreate As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")


            cnAcctCreate.Open()

            Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO [Customer](First, Last, UserName, Password, Role) VALUES ('" & fName & "', '" & lName & "', '" & uName & "','" & passWDone & "','" & uRole & "')"), cnAcctCreate)

            cmd.ExecuteNonQuery()
            cnAcctCreate.Close()


            Response.Redirect("loginComplete.aspx")

        Else
            lblMessage.Text = "****Passwords do not match."
        End If
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtFirst.Text = ""
        txtLast.Text = ""
        txtUN.Text = ""
        txtPW1.Text = ""
        txtPW2.Text = ""


    End Sub
End Class
