<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="RZASolution.Test" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 265px">
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                DataKeyNames="UserID">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="ID" ReadOnly="true" />
                    <asp:BoundField DataField="Username" HeaderText="Name" />
                    <asp:BoundField DataField="Password" HeaderText="Password" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
    