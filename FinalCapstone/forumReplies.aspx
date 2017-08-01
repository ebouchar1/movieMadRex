<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forumReplies.aspx.vb" Inherits="forumMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Forum Replies </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
        <h1><asp:Label ID="lblPostTitle" runat="server" Text=""></asp:Label></h1>
        <section>



            <table class="auto-style1">
                <tr>
                    <td style="font-weight: 700">Message</td>
                    <td><b>Date</b></td>
                    <td><b>User</b></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblMess" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblTime" runat="server" Text=""></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </section>

     
        <br />
        <br />
        <br />

        <section>
            <h2>Replys</h2>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" Width="100%" AccessKey="a">
                    <Columns>
                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                        <asp:BoundField DataField="timeStamp" HeaderText="timeStamp" SortExpression="timeStamp" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatabyRep" TypeName="DataSetTableAdapters.replys2TableAdapter">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="postID" QueryStringField="postID" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </p>
            <p>
                &nbsp;</p>
            <table class="auto-style1">
                <tr>
                    <td>Reply/Message :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtReply" ErrorMessage="Please enter reply"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtReply" runat="server" Height="28px" MaxLength="50" Width="232px" AccessKey="r"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnReply" runat="server" Text="Reply" AccessKey="t" />
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" AccessKey="c" />
                    </td>
                </tr>
            </table>



        </section>

    </article>


</asp:Content>

