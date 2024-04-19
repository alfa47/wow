<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashBoard.aspx.cs" Inherits="RZASolution.AdminDashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="AccountControlBtn" runat="server" Text="Account control" Onclick="AccountControlBtn_Click"/>
            <asp:Button ID="BookingControlBtn" runat="server" Text="Account control" Onclick="BookingControlBtn_Click"/>
            <asp:Button ID="LogoutBtn" runat="server" Text="Logout" OnClick="LogoutBtn_Click" />

        </div>
    </form>
</body>
</html>
