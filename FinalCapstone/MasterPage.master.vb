
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Session("search") = txtSearch.Text
        Response.Redirect("searchResults.aspx")
    End Sub

End Class

