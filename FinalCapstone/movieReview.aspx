<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="movieReview.aspx.vb" Inherits="movieReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
Movie Reviews </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 254px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
        <h1>
            <asp:Label ID="lblMName" runat="server" Text=""></asp:Label>

             &nbsp;Review 
        </h1>
        <section>


            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ReviewID" DataSourceID="ObjectDataSource1" ForeColor="Black" Height="50px" Width="100%">
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                    <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatabyRev" TypeName="DataSetTableAdapters.ReviewPageTableAdapter">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MovieID" QueryStringField="MovieID" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>

        </section>

        <h1>Review
            <asp:Label ID="lblMName2" runat="server" Text=""></asp:Label>
        </h1>

        <section>


            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Review : 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtReview" ErrorMessage="ReviewRequired"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtReview" runat="server" Height="16px" Width="548px" MaxLength="50" AccessKey="r"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Rating :<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRating" ErrorMessage="Rating Required"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtRating" ErrorMessage="Value 1-5" MaximumValue="5" MinimumValue="1"></asp:RangeValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRating" runat="server" Width="59px" MaxLength="1" AccessKey="t"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnSub" runat="server" Text="Submit" AccessKey="s" />
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" AccessKey="c" />
                    </td>
                </tr>
            </table>


        </section>

    </article>
</asp:Content>

