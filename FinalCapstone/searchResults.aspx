
<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="searchResults.aspx.vb" Inherits="searchResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Search Results 
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
        <h1>Search Results for
            <asp:Label ID="lblsearch" runat="server" Text=""></asp:Label>
        </h1>

        <section>


            <asp:Label ID="lblResults" runat="server" Text=""></asp:Label>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="777px" AccessKey="1">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Oscar" HeaderText="Oscar" SortExpression="Oscar" />
                    <asp:BoundField DataField="Emmys" HeaderText="Emmys" SortExpression="Emmys" />
                    <asp:BoundField DataField="IMDBRating" HeaderText="IMDBRating" SortExpression="IMDBRating" />
                    <asp:BoundField DataField="First" HeaderText="First" SortExpression="First" />
                    <asp:BoundField DataField="Last" HeaderText="Last" SortExpression="Last" />
                    <asp:BoundField DataField="Oscars" HeaderText="Oscars" SortExpression="Oscars" />
                    <asp:BoundField DataField="First1" HeaderText="First1" SortExpression="First1" />
                    <asp:BoundField DataField="Last1" HeaderText="Last1" SortExpression="Last1" />
                    <asp:BoundField DataField="Emmys1" HeaderText="Emmys1" SortExpression="Emmys1" />
                    <asp:BoundField DataField="Oscars1" HeaderText="Oscars1" SortExpression="Oscars1" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                </Fields>
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView>
            <br />



            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatasea" TypeName="DataSetTableAdapters.searchResultsTableAdapter">
                <SelectParameters>
                    <asp:SessionParameter Name="search" SessionField="search" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>



            <br />



            <br />
            <br />



        </section>

    </article>

</asp:Content>