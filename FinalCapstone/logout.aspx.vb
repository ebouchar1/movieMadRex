
Partial Class logout
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Response.Redirect("login.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim logOutStr As String = "loggedOut"
        Session("loginValue") = logOutStr

    End Sub
End Class
