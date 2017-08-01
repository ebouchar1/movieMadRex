


Partial Class adminPortal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim str As String = "loginComplete"
        Dim str2 As String = Session("loginValueAdmin")
        If str2 <> str Then
            Response.Redirect("login.aspx")
        End If



    End Sub






End Class
