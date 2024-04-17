<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RZASolution.Register" %>

<!DOCTYPE html>
<link href="StyleSheet.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            
            <div class="login-label">Username</div>

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
            <div>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="login-label" placeholder="Username"></asp:TextBox>
                
            </div>
            <div>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="login-label" placeholder="Password"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            </div>
        </div>
    </form>
</body>
</html>
