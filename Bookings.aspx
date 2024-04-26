<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="RZASolution.Bookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/CSS/BookingCSS.css" />
</head>
<body>
    <div class="header">
        <h1>Ticket Booking</h1>
        <div class="nav">
            <ul>
                <li><a href="Educational.aspx" class="btn">Educational visits</a></li>
                <li><a href="Map.aspx" class="btn">Zoo Map</a></li>
                <li><a href="Login.aspx" class="btn">Login</a></li>
                <li><a href="Register.aspx" class="btn">Register</a></li>
                <!-- Add more navigation links as needed -->
            </ul>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Book a Date</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
            <div class="calendar-container">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" CssClass="calendar"></asp:Calendar>
            </div>
            <asp:Button ID="btnBook" runat="server" Text="Book" CssClass="btn-book" OnClick="btnBook_Click" />
        </div>

    </form>
        <footer>
        <ul class="footer-links">
            <li><a href="AboutUS.aspx">About Us</a></li>
            <li><a href="ContactUs.aspx">Contact Us</a></li>
            <li><a href="#">Terms and Conditions</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="FAQ.aspx">FAQ</a></li>
        </ul>
    </footer>
</body>

</html>
