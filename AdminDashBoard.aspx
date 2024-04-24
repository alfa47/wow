<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashBoard.aspx.cs" Inherits="RZATest.AdminDashBoard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Zoo Map</title>
    <link rel="stylesheet" type="text/css" href="~/CSS/Dashboard.css" />
</head>
<body>
    <div class="header">
        <h1>Admin Dashboard</h1>
        <div class="nav">
            <ul>
                <li><a href="Home.aspx" class="btn">Home</a></li>
                <li><a href="Animals.aspx" class="btn">Animals</a></li>
                <li><a href="Map.aspx" class="btn">Map</a></li>
                <!-- Add more navigation links as needed -->
            </ul>
        </div>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="AccountControlBtn" runat="server" Text="Account control" OnClick="AccountControlBtn_Click" CssClass="btn"/>
            <br />
            <asp:Button ID="BookingControlBtn" runat="server" Text="Account control" OnClick="BookingControlBtn_Click" CssClass="btn"/>
            <br />
            <asp:Button ID="LogoutBtn" runat="server" Text="Logout" OnClick="LogoutBtn_Click" CssClass="btn" />
        </div>
    </form>
    <footer>
        <ul class="footer-links">
            <li><a href="About.aspx">About Us</a></li>
            <li><a href="Contact.aspx">Contact</a></li>
            <!-- Add more footer links as needed -->
        </ul>
        <p>&copy; 2024 Zoo Name. All rights reserved.</p>
    </footer>
</body>
</html>

