<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestResults.aspx.cs" Inherits="TestResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif">
    <div style="font-size: 36px">
    
        Test Results</div>
        <p>
            View the results to any tests you&#39;ve had run. Please consult your doctor with any questions you may have.</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TestDataSourcs" Width="345px">
            <Columns>
                <asp:BoundField DataField="TestDate" HeaderText="TestDate" SortExpression="TestDate" />
                <asp:BoundField DataField="TestTime" HeaderText="TestTime" SortExpression="TestTime" />
                <asp:BoundField DataField="Conclusion" HeaderText="Conclusion" SortExpression="Conclusion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="TestDataSourcs" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TheGoodDatabse.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [TestDate], [TestTime], [Conclusion] FROM [TestTable]"></asp:SqlDataSource>
    </form>
</body>
</html>
