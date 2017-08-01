<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="profile.aspx.vb" Inherits="profile" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Profile </title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
        }
        .auto-style2 {
            height: 23px;
        }
    .auto-style3 {
        height: 20px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
        <h2>User: <asp:Label ID="lblUN" runat="server" Text=""></asp:Label></h2>
        <section>
            

            
            

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">First Name:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblFName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:Label ID="lblLName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        </td>
                    <td class="auto-style2">
                        CustomerID :
                        <asp:Label ID="lblCustID" runat="server" Text=""></asp:Label>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style2">
                      <h3>Select Quiz</h3></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        <asp:DropDownList ID="ddTS" runat="server" DataSourceID="ObjectDataSource1" DataTextField="timeStamp" DataValueField="timeStamp" AutoPostBack="True" AccessKey="a">
                        </asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatatimeStamp" TypeName="DataSetTableAdapters.timeStamperTableAdapter">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblCustID" DefaultValue="" Name="CustomerID" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        <h3>View Results</h3></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MovieID" DataSourceID="ObjectDataSource4" AllowPaging="True" Width="100%">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
                                <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Oscar" HeaderText="Oscar" SortExpression="Oscar" />
                                <asp:BoundField DataField="Emmys" HeaderText="Emmys" SortExpression="Emmys" />
                                <asp:BoundField DataField="DirectorID" HeaderText="DirectorID" SortExpression="DirectorID" />
                                <asp:BoundField DataField="IMDBRating" HeaderText="IMDBRating" SortExpression="IMDBRating" />
                                <asp:HyperLinkField DataNavigateUrlFields="MovieID" DataNavigateUrlFormatString="movieReview.aspx?MovieID={0}" HeaderText="Reviews" Text="Reviews" />
                                <asp:HyperLinkField DataNavigateUrlFields="MovieID" DataNavigateUrlFormatString="movieDetails.aspx?MovieID={0}" HeaderText="Directors" Text="Directors" />
                                <asp:HyperLinkField DataNavigateUrlFields="MovieID" DataNavigateUrlFormatString="actorDetails.aspx?MovieID={0}" HeaderText="Actors" Text="Actors" />
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
                        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatatS" TypeName="DataSetTableAdapters.tsTableAdapter">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddTS" Name="timeStamp" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataProfileData" TypeName="DataSetTableAdapters.timeStampFilterTableAdapter">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblCustID" Name="customerID" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="ddTS" DefaultValue="4/14/2017 12:56:31 PM" Name="timeStamp" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server"></asp:ObjectDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                       <h2> View Forum Posts</h2></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="postID" DataSourceID="ObjectDataSource5" ForeColor="#333333" GridLines="None" Height="50px" Width="100%">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                                <asp:BoundField DataField="timeStamp" HeaderText="timeStamp" SortExpression="timeStamp" />
                                <asp:HyperLinkField DataNavigateUrlFields="postID" DataNavigateUrlFormatString="forumReplies.aspx?postID={0}" HeaderText="View Responses" Text="View Responses" />
                            </Fields>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:DetailsView>
                        <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatabyCust" TypeName="DataSetTableAdapters.forumMessagesTableAdapter" UpdateMethod="Update">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_postID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Title" Type="String" />
                                <asp:Parameter Name="Message" Type="String" />
                                <asp:Parameter Name="timeStamp" Type="String" />
                                <asp:Parameter Name="CustomerID" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="custID" SessionField="customerID" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Title" Type="String" />
                                <asp:Parameter Name="Message" Type="String" />
                                <asp:Parameter Name="timeStamp" Type="String" />
                                <asp:Parameter Name="CustomerID" Type="String" />
                                <asp:Parameter Name="Original_postID" Type="Int32" />
                            </UpdateParameters>
                        </asp:ObjectDataSource>
                    </td>
                </tr>
            </table>
            

            
            

        </section>
    </article>
</asp:Content>

