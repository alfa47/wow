<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="RZASolution.Map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/CSS/GeneralCSS.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="header">
        <h1>Zoo Map</h1>
        <div class="nav">
            <ul>
                <li><a href="Homepage.aspx" class="btn">Home</a></li>
                <li><a href="Educational.aspx" class="btn">Educational visits</a></li>
                <li><a href="Map.aspx" class="btn">Zoo Map</a></li>
                <li><a href="Login.aspx" class="btn">Login</a></li>
                <li><a href="Map.aspx" class="btn">Register</a></li>
                <!-- Add more navigation links as needed -->
            </ul>
        </div>
    </div>
    
    <div class="content">
        <!-- Content for the map page goes here -->
        <div class="map-placeholder">
            <!-- Placeholder for the map image -->
            <img src="Assets/TempMapHolder.jpg" alt="Zoo Map Goes Here" />
        </div>
  
                <h2>Zoo Sections</h2>
            <ul>
                <li><strong>Enclosure name:</strong> Enclorsure contains what animal.</li>
                <li><strong>Enclosure name:</strong> Enclorsure contains what animal.</li>
                <li><strong>Enclosure name:</strong> Enclorsure contains what animal.</li>
                <li><strong>Enclosure name:</strong> Enclorsure contains what animal.</li>
                <li><strong>Enclosure name:</strong> Enclorsure contains what animal.</li>

                <!-- Add more descriptors for other zoo sections -->
            </ul>
        </div>

    <footer>
        <ul class="footer-links">
            <li><a href="About.aspx">About Us</a></li>
            <li><a href="Contact.aspx">Contact</a></li>
            <!-- Add more footer links as needed -->
        </ul>
    </footer>
</body>
</html>