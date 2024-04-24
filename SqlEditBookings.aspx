<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SqlEditBookings.aspx.cs" Inherits="RZASolution.SqlEditBookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CRUD Operations</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>BookingID</th>
                        <th>User ID</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Literal ID="litDataRows" runat="server"></asp:Literal>
                </tbody>
            </table>
            <h2>Insert data</h2>
            <div>
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <div>
                <label>Date:</label>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div>
                <label>User ID:</label>
                <asp:TextBox ID="txtUserID" runat="server" ></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
            </div>
            <h2>Insert data</h2>
            <div>
                <label>BookingID:</label>
                <asp:TextBox ID="txtBookingIDEdit" runat="server" ></asp:TextBox>
            </div>
            <div>
                <label>Date:</label>
                <asp:TextBox ID="txtDateEdit" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div>
                <label>User ID:</label>
                <asp:TextBox ID="txtUserIDEdit" runat="server" ></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="InsertEdit" runat="server" Text="Insert" OnClick="InsertEdit_Click" />
            </div>

            <h2>Remove data</h2>
            <div>
                <label>BookingID:</label>
            <asp:TextBox ID="txtBookingID" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            </div>
        </div>
    </form>
</body>
</html>
