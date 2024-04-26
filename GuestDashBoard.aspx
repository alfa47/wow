<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GuestDashBoard.aspx.cs" Inherits="RZASolution.GuestDashBoard" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Zoo Guest Dashboard</title>
 <link rel="stylesheet" href="~/CSS/GuestDashBoardCSS.css" />
</head>
<body>
    <form id="form1" runat="server">
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
        <div id="container">
            <header>
                <h1 style="text-align: center;">Welcome!</h1>
            </header>
            <div class="guest-container">
                <asp:Button CssClass="aspbtn" ID="BookingsBtn" runat="server" Text="Bookings" OnClick="BookingsBtn_Click"/>
                <asp:Button CssClass="aspbtn" ID="LogoutBtn" runat="server" Text="Logout" OnClick="LogoutBtn_Click" />
            </div>
            <main>
                <div class="dashboard-section">
                    <h2>Upcoming Events</h2>
                    <p>Join us for our next Safari Adventure on May 1st, 2024! Get up close and personal with some of our wildest animals.</p>
                    <p>Don't miss our Animal Feeding Show on May 5th, 2024. Watch our expert zookeepers interact with our furry and feathered friends!</p>
                </div>
                <div class="dashboard-section">
                    <h2>Featured Animals</h2>
                    <p>Meet our new lion cubs in the African Savannah exhibit! Witness their playful antics and learn about conservation efforts to protect their species.</p>
                    <p>Discover the fascinating world of our otters in the Aquatic Zone. Watch them swim, play, and feast on their favorite treats!</p>
                </div>
                <div class="dashboard-section">
                    <h2>Quick Links</h2>
                    <ul>
                        <li><a href="#">Buy Tickets</a> - Purchase your tickets online and skip the lines at the entrance!</li>
                        <li><a href="#">Zoo Map</a> - Navigate through our zoo's exhibits and attractions with our interactive map.</li>
                        <li><a href="#">Education Programs</a> - Explore our educational programs for visitors of all ages, from guided tours to wildlife workshops.</li>
                    </ul>
                </div>
                <div class="dashboard-section">
                    <h2>Zoo Map</h2>
                    <p>Plan your visit with our interactive zoo map. Explore our exhibits, find amenities, and discover where your favorite animals are located.</p>
                    <img src="/Assets/temp.jpg" alt="Zoo Map" style="max-width: 100%;"/>
                </div>
            </main>
        <footer>
        <ul class="footer-links">
            <li><a href="AboutUS.aspx">About Us</a></li>
            <li><a href="ContactUs.aspx">Contact Us</a></li>
            <li><a href="#">Terms and Conditions</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="FAQ.aspx">FAQ</a></li>
        </ul>
    </footer>
        </div>
    </form>
</body>
</html>
