<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="actorDetails.aspx.vb" Inherits="actorDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Actor Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
        <h1>Actors in
            <asp:Label ID="lblMovieName" runat="server" Text=""></asp:Label>
        </h1>
        <section>


            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="ObjectDataSource1" Height="50px" Width="100%" AllowPaging="True">
                <Fields>
                    <asp:BoundField DataField="First" HeaderText="First" SortExpression="First" />
                    <asp:BoundField DataField="Last" HeaderText="Last" SortExpression="Last" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Emmys" HeaderText="Emmys" SortExpression="Emmys" />
                    <asp:BoundField DataField="Oscars" HeaderText="Oscars" SortExpression="Oscars" />
                    <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
                </Fields>
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAct" TypeName="DataSetTableAdapters.ActTableAdapter">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MovieID" QueryStringField="MovieID" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>


        </section>
    </article>

</asp:Content>

