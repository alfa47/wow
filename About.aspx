<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RZATest.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/CSS/GeneralCSS.css" rel="stylesheet" />
    <title>About Us - RZA Bookings</title>
</head>
<body>
    <div class="header">
        <h2>RZA</h2>
    </div>
    <form id="form1" runat="server">
        <nav class="nav">
            <ul>
                <li><a href="Homepage.aspx" class="btn">Home</a></li>
                <li><a href="BookTickets.aspx" class="btn">Book Tickets</a></li>
                <!-- Add more navigation links here if needed -->
            </ul>
        </nav>
        <div class="content">
            <h2>About Us</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut tristique odio. Integer dapibus, ligula a sollicitudin scelerisque, ligula risus interdum lectus, non volutpat eros magna at dolor. In hac habitasse platea dictumst. Proin maximus justo non libero feugiat, ac elementum justo malesuada. Mauris eleifend dui sed tristique accumsan. Vivamus vehicula, est in ultrices fermentum, ligula libero fermentum lectus, vel molestie sapien elit a nibh. Phasellus ultrices est eget consequat congue. Morbi quis ipsum malesuada, luctus libero eu, gravida mauris.
            </p>
            <p>
                Aliquam scelerisque felis eu tellus facilisis, a scelerisque est placerat. Aliquam dictum sapien ac erat posuere, at venenatis mi condimentum. Nullam non ante eu lacus viverra malesuada in vel ligula. Sed venenatis, libero nec dapibus gravida, tortor elit ultrices est, id posuere dui eros eu dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
            </p>
            <!-- Add more content about your zoo or organization -->
        </div>
    </form>
    <footer>
        <ul class="footer-links">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact Us</a></li>
            <li><a href="#">Terms and Conditions</a></li>
            <li><a href="#">Privacy Policy</a></li>
        </ul>
    </footer>
</body>
</html>
