Imports System.Data.SqlClient

Partial Class forumMessage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim str As String = "loginComplete"
        Dim str2 As String = Session("loginValue")
        Dim custID As String = Session("customerID")

        Dim postID As String = Request.QueryString("postID")


        If str2 <> str Then
            Response.Redirect("login.aspx")

        ElseIf str2 = str Then


            Dim dr As SqlDataReader
            Dim dr2 As SqlDataReader

            Dim cmdr As SqlCommand
            Dim cmd As SqlCommand

            Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")


            cn.Open()

            cmdr = New SqlCommand("SELECT * FROM forumMessages WHERE postID='" + postID + "'", cn)


            dr = cmdr.ExecuteReader


            If (dr.Read) Then
                Dim dbPTitle As String = dr(2).ToString
                Dim dbMessage As String = dr(3).ToString
                Dim dbTime As String = dr(4).ToString


                lblPostTitle.Text = dbPTitle
                lblMess.Text = dbMessage
                lblTime.Text = dbTime





            Else


                Response.Redirect("login.aspx")
            End If
            cn.Close()


            cn.Open()

            cmd = New SqlCommand("SELECT * FROM Customer WHERE CustomerID='" + custID + "'", cn)
            dr2 = cmd.ExecuteReader

            If (dr2.Read) Then
                Dim dbUName As String = dr2(3).ToString

                lblUser.Text = dbUName


            End If

        End If

    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtReply.Text = ""
    End Sub

    Protected Sub btnReply_Click(sender As Object, e As EventArgs) Handles btnReply.Click
        Dim custID = Session("customerID")
        Dim pMessage As String = txtReply.Text
        Dim timeS As String = DateTime.Now
        Dim postID As String = Request.QueryString("postID")

        Dim cn As New Data.SqlClient.SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        cn.Open()






        Dim cmd As New Data.SqlClient.SqlCommand(("INSERT INTO [replys](CustomerID, Message, timeStamp, postID) VALUES ('" & custID & "','" & pMessage & "','" & timeS & "','" & postID & "')"), cn)



        cmd.ExecuteNonQuery()




        cn.Close()

        GridView1.DataBind()


    End Sub
End Class
