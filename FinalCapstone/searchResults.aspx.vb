Imports System.Data.SqlClient

Partial Class searchResults
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim search As String = Session("search")

        lblsearch.Text = search
        lblResults.Text = "The Following Results for " + search + "&nbsp; were found: "


    End Sub


End Class



