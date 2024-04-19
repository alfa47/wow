<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestDashBoard.aspx.cs" Inherits="RZASolution.GuestDashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="BookingsBtn" runat="server" Text="Bookings" Onclick="BookingsBtn_Click"/>
            <asp:Button ID="LogoutBtn" runat="server" Text="Logout" OnClick="LogoutBtn_Click" />
        </div>
    </form>
</body>
</html>
