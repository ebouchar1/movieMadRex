<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Login </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 144px;
        }
        .auto-style3 {
            width: 144px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>
   

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <article>
        <section>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Username:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtUN" runat="server" MaxLength="50" AccessKey="u"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUN" ErrorMessage="Username is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td>
                <asp:TextBox ID="txtPW" runat="server" MaxLength="50" TextMode ="Password" AccessKey="p" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPW" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="btnLogin" runat="server" Text="Login" AccessKey="l" />
            </td>
            <td>
                <asp:Button ID="btnClear" runat="server" Text="Clear" AccessKey="c" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblMessage2" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
      </section>
    </article>

</asp:Content>
