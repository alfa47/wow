<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RZATest.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link href="~/CSS/GeneralCSS.css" rel="stylesheet" />
</head>
<body>
    <div class="header">
        <h1>Contact Us</h1>
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
        <!-- Content for the contact us page goes here -->
        <div class="contact-info">
            <h2>Contact Information</h2>
            <p><strong>Address:</strong> 123 Zoo Street, City, Country</p>
            <p><strong>Email:</strong> info@zoo.com</p>
            <p><strong>Phone:</strong> +1234567890</p>
        </div>
        <div class="contact-form">
            <h2>Send Us a Message</h2>
            <form>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" required></textarea>
                <button type="submit" class="btn">Send Message</button>
            </form>
        </div>
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
