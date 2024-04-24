﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="RZATest.FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FAQ</title>
    <link href="~/CSS/GeneralCSS.css" rel="stylesheet" />
</head>
<body>
    <div class="header">
        <h1>FAQ</h1>
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
        <!-- Content for the FAQ page goes here -->
        <div class="faq-section">
            <h2>Frequently Asked Questions</h2>
            <ul>
                <li>
                    <strong>Question 1:</strong> What are the zoo's opening hours?
                    <p>Answer: The zoo is open from 9:00 AM to 6:00 PM every day.</p>
                </li>
                <li>
                    <strong>Question 2:</strong> Do you offer guided tours?
                    <p>Answer: Yes, guided tours are available. Please visit the information desk for more details.</p>
                </li>
                <li>
                    <strong>Question 3:</strong> Are pets allowed in the zoo?
                    <p>Answer: No, for the safety of our animals and visitors, pets are not allowed in the zoo.</p>
                </li>
                <!-- Add more FAQ items as needed -->
            </ul>
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