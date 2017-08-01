<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="logout.aspx.vb" Inherits="logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Log Out Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
        <h2>You have now logged out</h2>
        <section>
            <asp:Button ID="btnLogin" runat="server" Text="Login" AccessKey="l" />
        </section>

    </article>

</asp:Content>

