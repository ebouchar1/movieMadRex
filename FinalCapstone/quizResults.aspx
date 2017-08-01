<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="quizResults.aspx.vb" Inherits="quizResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Quiz Results </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
        <section>
    <h1>Your Movie Recommendations</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MovieID" DataSourceID="ObjectDataSource1" AllowPaging="True" Width="100%">
            <Columns>
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
                <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Oscar" HeaderText="Oscar" SortExpression="Oscar" />
                <asp:BoundField DataField="Emmys" HeaderText="Emmys" SortExpression="Emmys" />
                <asp:BoundField DataField="QuizNumber" HeaderText="QuizNumber" SortExpression="QuizNumber" />
                <asp:BoundField DataField="DirectorID" HeaderText="DirectorID" SortExpression="DirectorID" />
                <asp:BoundField DataField="IMDBRating" HeaderText="IMDBRating" SortExpression="IMDBRating" />
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
                <asp:HyperLinkField DataNavigateUrlFields="MovieID" DataNavigateUrlFormatString="movieDetails.aspx?MovieID={0}" HeaderText="Director" Text="Director" />
                <asp:HyperLinkField DataNavigateUrlFields="MovieID" DataNavigateUrlFormatString="actorDetails.aspx?MovieID={0}" HeaderText="Actors" Text="Actors" />
                <asp:HyperLinkField DataNavigateUrlFields="MovieID" DataNavigateUrlFormatString="movieReview.aspx?MovieID={0}" HeaderText="Reviews" Text="Reviews" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.QuizResultsjustQNTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_MovieID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Oscar" Type="String" />
                <asp:Parameter Name="Emmys" Type="String" />
                <asp:Parameter Name="QuizNumber" Type="String" />
                <asp:Parameter Name="DirectorID" Type="Int32" />
                <asp:Parameter Name="IMDBRating" Type="String" />
                <asp:Parameter Name="Expr1" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="QuizNumber" SessionField="quizNum" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Oscar" Type="String" />
                <asp:Parameter Name="Emmys" Type="String" />
                <asp:Parameter Name="QuizNumber" Type="String" />
                <asp:Parameter Name="DirectorID" Type="Int32" />
                <asp:Parameter Name="IMDBRating" Type="String" />
                <asp:Parameter Name="Expr1" Type="String" />
                <asp:Parameter Name="Original_MovieID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
            </p>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Button ID="btnRetake" runat="server" Text="Retake Quiz" AccessKey="r" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

                  </section>
    </article>
</asp:Content>

