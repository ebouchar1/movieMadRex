<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forumsPost.aspx.vb" Inherits="forumsPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Forums Post </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


   <article>
        <h1>New Post</h1>
        <section>



            <table class="auto-style1">
                <tr>
                    <td>Post Title :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPT" ErrorMessage="Post TItle Required"></asp:RequiredFieldValidator>
&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtPT" runat="server" Width="500px" MaxLength="50" AccessKey="t"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Post :<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPost" ErrorMessage="Post Message Required"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPost" runat="server" Width="500px" MaxLength="50" AccessKey="m"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnPost" runat="server" Text="Post" AccessKey="p" />
                    </td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" Text="Clear" AccessKey="c" />
                    </td>
                </tr>
            </table>



        </section>
    </article>


</asp:Content>

