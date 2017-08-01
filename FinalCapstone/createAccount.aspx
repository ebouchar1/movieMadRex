<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="createAccount.aspx.vb" Inherits="createAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Create Account </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 386px;
        }
        .auto-style4 {
            width: 386px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <article>
          <h1>Create User Account</h1>
        <section>
            

            

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">First Name :<asp:RequiredFieldValidator ID="reqValFirst" runat="server" ControlToValidate="txtFirst" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFirst" runat="server" Width="180px" MaxLength="50" AccessKey="a" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Last Name :<asp:RequiredFieldValidator ID="reqValLast" runat="server" ControlToValidate="txtLast" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLast" runat="server" style="margin-right: 0px" Width="180px" MaxLength="50" AccessKey="s"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">User Name :<asp:RequiredFieldValidator ID="reqValUN" runat="server" ControlToValidate="txtUN" ErrorMessage="User Name Required"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUN" runat="server" Width="180px" MaxLength="50" AccessKey="d"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPW1" ErrorMessage="Password required"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPW1" runat="server" Width="180px" MaxLength="50"  TextMode ="Password" AccessKey="f" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Re-write Password :<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPW2" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                    </td>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtPW2" runat="server" Width="180px" MaxLength="50"  TextMode ="Password" AccessKey="g" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td style="margin-left: 40px">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnCA" runat="server" Text="Create Account" AccessKey="c" />
                    </td>
                    <td style="margin-left: 40px">
                        <asp:Button ID="btnClear" runat="server" Text="Clear" style="margin-bottom: 0px" AccessKey="v" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td style="margin-left: 40px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                    <td style="margin-left: 40px">
                        &nbsp;</td>
                </tr>
            </table>
            

            

        </section>
    </article>
</asp:Content>

