<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="RZASolution.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/CSS/GeneralCSS.css" rel="stylesheet" />
    <title>RZA Bookings</title>
    <asp:PlaceHolder ID="phCss" runat="server"></asp:PlaceHolder>
</head>
<body>
<div class="header">
    <h1>RZA</h1>
    <div class="nav">
        <ul>
            <li><a href="Educational.aspx" class="btn">Educational visits</a></li>
            <li><a href="Map.aspx" class="btn">Zoo Map</a></li>
            <li><a href="Login.aspx" class="btn">Login</a></li>
            <li><a href="Register.aspx" class="btn">Register</a></li>
            <li style="float: right;">
             <a href="Accessibility.aspx">
                     <img src="Assets/settings.jpg" alt="Settings" style="width: 24px; height: 24px;" />
                </a>
            </li>
        </ul>
    </div>
</div>

        <div class="parallax"></div>
        <div class="content">
            <p>temp</p>
            <p>temp</p>
            <p>temp</p>
            <p>temp</p>
        </div>
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
