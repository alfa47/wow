<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test123.aspx.cs" Inherits="RZATest.test123" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CRUD Operations</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>User ID</th>
                        <th>Booking</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Literal ID="litDataRows" runat="server"></asp:Literal>
                </tbody>
            </table>
            <div>
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <div>
                <label>Date:</label>
                <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
            </div>
            <div>
                <label>User ID:</label>
                <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            </div>
            <div>
                <label>Booking:</label>
                <asp:TextBox ID="txtBooking" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
            </div>
        </div>
    </form>
</body>
</html>
