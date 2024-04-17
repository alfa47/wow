<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RZASolution.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="navbar">
            <a class="homepage" href="#home">Homepage</a>
            <a href="#news">Activities</a>
            <a href="#contact">Contact Us</a>
            <a class="right" href="f">Login/Register</a>
        </div>
        <div class="parallax"></div>
        <div style="height:1000px;background-color:navajowhite;font-size:36px" class="content">
            <h2>Login</h2>
            <asp:Label ID="lb1Message" runat="server" ForeColor="Red" Text=""></asp:Label>
                <div>
                    <asp:TextBox ID="txtUsername" runat="server" TextMode="Password" CssClass="Box" placeholder="Username">
                            
                    </asp:TextBox>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="Box" placeholder="Password">
                            
                    </asp:TextBox>
                    <div>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    </div>
                </div>
       </div>

    </form>
</body>
</html>
