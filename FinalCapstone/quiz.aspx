<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="quiz.aspx.vb" Inherits="quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Quiz </title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            height: 33px;
            width: 895px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
     <h1>Quiz
         <asp:Label ID="Label1" runat="server"></asp:Label>
        </h1>
       <section>
    <h3>Who will you be watching with?</h3><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rdBtnL1" ErrorMessage="Answer Required"></asp:RequiredFieldValidator>
           <br />
    <asp:RadioButtonList ID="rdBtnL1" runat="server" AccessKey="a">
        <asp:ListItem Value="15">My Pup</asp:ListItem>
        <asp:ListItem Value="0">Entire Family</asp:ListItem>
        <asp:ListItem Value="10">Me, Myself, and I</asp:ListItem>
        <asp:ListItem Value="20">Mi Amor &lt;3</asp:ListItem>
    </asp:RadioButtonList>
    <br />
 <br />
       </section>
    <br />
            <br />
       <section>

    <h3>How was your day?</h3><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdBtnL2" ErrorMessage="Answer Required"></asp:RequiredFieldValidator>
   <br />
            <asp:RadioButtonList ID="rdBtnL2" runat="server" AccessKey="s">  
        <asp:ListItem Value="0">Same stuff different day</asp:ListItem>
        <asp:ListItem Value="15">Best Day Ever!</asp:ListItem>
        <asp:ListItem Value="10">Looking for a bridge</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
         </section>
    <br />
            <br />
       <section>
        <h3>How Romantic are you?</h3> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rdBtnL3" ErrorMessage="Answer Required"></asp:RequiredFieldValidator>
     <asp:RadioButtonList ID="rdBtnL3" runat="server" AccessKey="d">  
        <asp:ListItem Value="0">LOL thats funny</asp:ListItem>
        <asp:ListItem Value="20">Lady and the tramp</asp:ListItem>
        <asp:ListItem Value="10">Not sure</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
         </section>
    <br />
            <br />
       <section>
           <h3>How resilient are you?</h3> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rdBtnL4" ErrorMessage="Answer Required"></asp:RequiredFieldValidator>
    <asp:RadioButtonList ID="rdBtnL4" runat="server" AccessKey="f">  
        <asp:ListItem Value="15">Bring it on!</asp:ListItem>
        <asp:ListItem Value="15">I cry from a light breeze</asp:ListItem>
        <asp:ListItem Value="0">Not in the mood for emotional challenges</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
         </section>
    <br />
            <br />
       <section>
    <h3>How up to speed are you on movies?</h3> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rdBtnL5" ErrorMessage="Answer Required"></asp:RequiredFieldValidator>
     <asp:RadioButtonList ID="rdBtnL5" runat="server" AccessKey="g">  
        <asp:ListItem Value="0">Still havent watched Star Wars</asp:ListItem>
        <asp:ListItem Value="0">I've seen everything</asp:ListItem>
        <asp:ListItem Value="200">I like classics</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
             </section>
    <br />
            <br />
       <section>
      <h3>Are you an outgoing person?</h3> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="rdBtnL6" ErrorMessage="Answer Required"></asp:RequiredFieldValidator>
    <asp:RadioButtonList ID="rdBtnL6" runat="server" AccessKey="h">  
        <asp:ListItem Value="15">I Love People</asp:ListItem>
        <asp:ListItem Value="0">I Hate Humans</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
             </section>
    <br />
            <br />
       <section>
      <h3>Whats important in life?</h3> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="rdBtnL7" ErrorMessage="Answer Required"></asp:RequiredFieldValidator>
  <asp:RadioButtonList ID="rdBtnL7" runat="server" AccessKey="i">  
        <asp:ListItem Value="20">Love</asp:ListItem>
        <asp:ListItem Value="15">Laughter</asp:ListItem>
      <asp:ListItem Value="15">Excitement!</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
    <br />
    <br />
             </section>
    <br />
            <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
              
            </td>
            <td class="auto-style3">
                <asp:Button ID="btnSub" runat="server" Text="Submit" AccessKey="s" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="btnClear" runat="server" Text="Clear" AccessKey="c" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
              
                <asp:Label ID="lblCustID" runat="server" Text=""></asp:Label>
              
                <asp:Label ID="lblQuizID" runat="server" Text=""></asp:Label>
              
                <asp:Label ID="lblQuizNum" runat="server" Text=""></asp:Label>
              <asp:Label ID="lblNewQuizID" runat="server" Text=""></asp:Label>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
    </table>
    <br />
 
    <br />
    <br />
    </article>
</asp:Content>


