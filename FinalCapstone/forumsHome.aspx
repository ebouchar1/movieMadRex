<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forumsHome.aspx.vb" Inherits="forumsHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Forums Home </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style4 {
            height: 23px;
        }
        </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
        <h1>Forums Main</h1>
        <section>
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><h2>Forum Posts</h2></td>
                    <td class="auto-style3">
                        <asp:Button ID="btnNP" runat="server" Text="New Post" AccessKey="n" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="postID" DataSourceID="ObjectDataSource1" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                <asp:BoundField DataField="timeStamp" HeaderText="timeStamp" SortExpression="timeStamp" />
                                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                <asp:HyperLinkField DataNavigateUrlFields="postID" DataNavigateUrlFormatString="forumReplies.aspx?postID={0}" HeaderText="Replies/Responses" Text="Replies/Responses" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataForumMain" TypeName="DataSetTableAdapters.ForumsMainTableAdapter"></asp:ObjectDataSource>
                    </td>
                </tr>
            </table>
          




        </section>


    </article>

</asp:Content>

