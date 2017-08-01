<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Home
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article> 
        &nbsp;<h2>Our Movie Recommendations&nbsp;
            </h2>
                <section>
                    <h3>Top Rated Movies</h3>
                    <p>
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" AllowPaging="True" AllowSorting="True" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                <asp:BoundField DataField="Oscar" HeaderText="Oscar" SortExpression="Oscar" />
                                <asp:BoundField DataField="Emmys" HeaderText="Emmys" SortExpression="Emmys" />
                                <asp:BoundField DataField="IMDBRating" HeaderText="IMDBRating" SortExpression="IMDBRating" />
                                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
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
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatabyHighRating" TypeName="DataSetTableAdapters.HighRatingTableAdapter"></asp:ObjectDataSource>
                    </p>

                </section>
        <br />
             

            </article>
</asp:Content>
