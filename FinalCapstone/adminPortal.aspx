<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="adminPortal.aspx.vb" Inherits="adminPortal" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   Admin Portal</title>

        <script type="text/JavaScript">
alert('Admins, please press refresh on reports with error "Object reference not set to an instance of an object".');
</script>

    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <article>
        <h2>View Users</h2>


        <section>
        

              <asp:ScriptManager ID="ScriptManager1" runat="server">
              </asp:ScriptManager>
              <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
                  <LocalReport ReportPath="Report1.rdlc">
                      <DataSources>
                          <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                      </DataSources>
                  </LocalReport>
              </rsweb:ReportViewer>
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="DataSetTableAdapters.CustomerListTableAdapter"></asp:ObjectDataSource>
              <br />
        

              </section>


          <h2>View Movies</h2>
        <section>
            <rsweb:ReportViewer ID="ReportViewer2" runat="server" Width="100%" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
                <LocalReport ReportPath="Report2.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="DataSetTableAdapters.MoviesAdminPortalTableAdapter"></asp:ObjectDataSource>
        </section>

      

        <h2>View Reviews</h2>
            <section>
                <rsweb:ReportViewer ID="ReportViewer3" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
                    <LocalReport ReportPath="Report3.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="DataSetTableAdapters.reviewsAdminPortTableAdapter"></asp:ObjectDataSource>
            </section>

     
          <h2>&nbsp;</h2>
        <section>
        </section>

     

      
    </article>

</asp:Content>
