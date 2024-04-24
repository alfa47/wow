<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RZASolution.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="~/CSS/GeneralCSS.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <h1>Login</h1>
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
        <div class="parallax"></div>
        <div style="height:1000px;background-color:navajowhite;font-size:36px" class="content">
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
