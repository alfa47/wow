<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="RZASolution.Test" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 265px">
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtUsername" runat="server" />
        <asp:Button ID="DeleteUserbtn" runat="server" Text="Using Username to delete" onclick="UsernameDelete"/>
        <asp:Button ID="DeleteIDbtn" runat="server" Text="Using ID to delete" onclick="DeleteIDbtn_Click"/>
        <asp:Button ID="Updatebtn" runat="server" Text="Update database" onclick="Updatebtn_Click"/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" />

        <br />
        <asp:Label ID="Successlbl" runat="server" ForeColor="Green"/>
        <br />
        <asp:Label ID="Errorlbl" runat="server" ForeColor="Red"/>
    </div>
    </form>
</body>
</html>
    