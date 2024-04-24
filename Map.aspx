<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="RZATest.Map" %>

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
                <li><a href="Home.aspx" class="btn">Home</a></li>
                <li><a href="Animals.aspx" class="btn">Animals</a></li>
                <li><a href="Map.aspx" class="btn">Map</a></li>
                <!-- Add more navigation links as needed -->
            </ul>
        </div>
    </div>
    
    <div class="content">
        <!-- Content for the map page goes here -->
        <div class="map-placeholder">
            <!-- Placeholder for the map image -->
            <img src="Assets/TempMapHolder.jpg" alt="Zoo Map" />
        </div>
  
                <h2>Zoo Sections</h2>
            <ul>
                <li><strong>Safari Zone:</strong> Experience wildlife up close in our expansive safari zone.</li>
                <li><strong>Aquatic Pavilion:</strong> Discover marine life from around the world in our aquatic pavilion.</li>
                <li><strong>Jungle Trail:</strong> Navigate through dense foliage and encounter tropical creatures on the jungle trail.</li>
                <li><strong>Aviary:</strong> Immerse yourself in the world of birds in our aviary.</li>
                <!-- Add more descriptors for other zoo sections -->
            </ul>
        </div>

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
