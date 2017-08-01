
Partial Class forumsPost
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim str As String = "loginComplete"
        Dim str2 As String = Session("loginValue")
        Dim custID As String = Session("customerID")

        If str2 <> str Then
            Response.Redirect("login.aspx")
        End If
    End Sub


    Protected Sub btnPost_Click(sender As Object, e As EventArgs) Handles btnPost.Click
        Dim custID = Session("customerID")
        Dim pTitle As String = txtPT.Text
        Dim pMessage As String = txtPost.Text
        Dim timeS As String = DateTime.Now

        Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        cn.Open()






        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO [forumMessages](CustomerID, Title, Message, timeStamp) VALUES ('" & custID & "','" & pTitle & "','" & pMessage & "','" & timeS & "' )"), cn)



        cmd.ExecuteNonQuery()




        cn.Close()




        Response.Redirect("forumsHome.aspx")


    End Sub


    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtPost.Text = ""
        txtPT.Text = ""

    End Sub
End Class
