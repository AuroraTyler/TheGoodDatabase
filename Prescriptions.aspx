<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prescriptions.aspx.cs" Inherits="Prescriptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif">
        <p style="font-size: 34px">
            Prescriptions</p>
        <p>
            View all of your current prescriptions. Please consult your doctor with any questions you may have.
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="PrescriptionsDataSource">
                <Columns>
                    <asp:BoundField DataField="MedicationName" HeaderText="MedicationName" SortExpression="MedicationName" />
                    <asp:BoundField DataField="Dosage" HeaderText="Dosage" SortExpression="Dosage" />
                    <asp:BoundField DataField="RenewalDate" HeaderText="RenewalDate" SortExpression="RenewalDate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="PrescriptionsDataSource" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TheGoodDatabse.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MedicationName], [Dosage], [RenewalDate] FROM [PrescriptionTable]"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
