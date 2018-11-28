<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="Appointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentId" DataSourceID="SqlDataSource1" Width="581px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="AppointmentDate" DataFormatString="{0:MM/dd/yyyy}" HeaderText="AppointmentDate" SortExpression="AppointmentDate" />
                <asp:BoundField DataField="AppointmentTime" HeaderText="AppointmentTime" SortExpression="AppointmentTime" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Cause" HeaderText="Cause" SortExpression="Cause" />
                <asp:BoundField DataField="Diagnosis" HeaderText="Diagnosis" SortExpression="Diagnosis" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AppointmentTable]"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
