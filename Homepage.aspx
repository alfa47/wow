<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="RZASolution.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title>RZA Bookings</title>
</head>
<body>
    <div class="header">
        <h2>RZA</h2>
    </div>
    <form id="form1" runat="server">
        <nav>
            <ul>
            <asp:Button ID="Activities" CssClass="btn" runat="server" Text="Login/Register" OnClick="Loginbtn_Click"  />
            <asp:Button ID="Button2" CssClass="btn" runat="server" Text="Login/Register" OnClick="Loginbtn_Click"  />
            <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Login/Register" OnClick="Loginbtn_Click"  />
            <asp:Button ID="LoginBtn" CssClass="btn" runat="server" Text="Login/Register" OnClick="Loginbtn_Click"  /> 
            </ul>     
        </nav>
        <div class="parallax"></div>
        <div style="height:1000px;background-color:navajowhite;font-size:36px" class="content">
            Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.
            Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.
            Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.
            Lorem ipsum dolor sit amet, illum definitiones no quo, maluisset concludaturque et eum, altera fabulas ut quo. Atqui causae gloriatur ius te, id agam omnis evertitur eum. Affert laboramus repudiandae nec et. Inciderint efficiantur his ad. Eum no molestiae voluptatibus.
        </div>
    </form>
</body>
</html>
