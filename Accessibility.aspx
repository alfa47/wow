<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accessibility.aspx.cs" Inherits="RZASolution.Accessibility" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="~/CSS/GeneralCSS.css" rel="stylesheet" type="text/css"/>
    <title>Accessibility Options</title>
</head>
<body>
    <div class="content">
        <form id="form1" runat="server">
            <div class="descriptors">
                <label for="chkHighContrast" class="form-label">High Contrast:</label>
                <asp:CheckBox ID="chkHighContrast" runat="server" CssClass="checkbox-style" />
                <label for="chkLargeText" class="form-label">Large Text:</label>
                <asp:CheckBox ID="chkLargeText" runat="server" CssClass="checkbox-style" />
                <asp:Button ID="btnSave" runat="server" Text="Save Preferences" CssClass="btn" OnClick="SavePreferences" />
            </div>
        </form>
    </div>
</body>
</html>
