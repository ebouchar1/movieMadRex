<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="movieDetails.aspx.vb" Inherits="movieDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Movie Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <article>
        <h1>Directors in
            <asp:Label ID="lblMName" runat="server" Text=""></asp:Label>
        </h1>
        <section>



            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MovieID" DataSourceID="ObjectDataSource1" Height="50px" Width="100%">
                <Fields>
                    <asp:BoundField DataField="First" HeaderText="First" SortExpression="First" />
                    <asp:BoundField DataField="Last" HeaderText="Last" SortExpression="Last" />
                    <asp:BoundField DataField="Emmys" HeaderText="Emmys" SortExpression="Emmys" />
                    <asp:BoundField DataField="Oscars" HeaderText="Oscars" SortExpression="Oscars" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                </Fields>
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatabyDirector" TypeName="DataSetTableAdapters.DirectorDetailsTableAdapter">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MovieID" QueryStringField="MovieID" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
          


        </section>
   
        
    </article>


</asp:Content>

