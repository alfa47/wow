<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Educational.aspx.cs" Inherits="RZASolution.Educational" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Animal Facts</title>
    <link href="~/CSS/EducationalCSS.css" rel="stylesheet" />
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
            </ul>
        </div>
    </div>
    <form id="form1" runat="server">
        <div>
            <div class="animal-buttons">
            <asp:Button ID="Button1" runat="server" Text="Lion" OnClick="AnimalButton_Click" CommandArgument="lion" CssClass="animal-button" Style="background-image: url('Assets/lion.jpg');" />
            <asp:Button ID="Button2" runat="server" Text="Elephant" OnClick="AnimalButton_Click" CommandArgument="elephant" CssClass="animal-button" Style="background-image: url('Assets/elephant.jpg');"/>
            <asp:Button ID="Button3" runat="server" Text="Temp" OnClick="AnimalButton_Click" CommandArgument="" CssClass="animal-button" Style="background-image: url('Assets/temp.jpg');" />
            <asp:Button ID="Button4" runat="server" Text="Temp" OnClick="AnimalButton_Click" CommandArgument="" CssClass="animal-button" Style="background-image: url('Assets/temp.jpg');"/>
            </div>
            <div class="divider"></div>
            <div class="animal-explanation-container">
                <h1><asp:Literal ID="AnimalNameLiteral" runat="server" /></h1>
                <asp:Image ID="AnimalImage" runat="server" />
                <p><asp:Literal ID="AnimalFactsLiteral" runat="server" /></p>
            </div>
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
