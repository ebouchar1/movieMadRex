
Partial Class forumsHome
    Inherits System.Web.UI.Page

    Protected Sub btnNP_Click(sender As Object, e As EventArgs) Handles btnNP.Click
        Response.Redirect("forumsPost.aspx")
    End Sub
End Class
