<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="test123.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtUsername" runat="server" />
            <asp:TextBox ID="txtPassword" runat="server" />
            <asp:Button ID="Addrowbtn" runat="server" text="add" OnClick="Addrowbtn_Click" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ID" ShowFooter="true"  OnRowEditing="GridView1_RowEditing" 
                OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting"  >
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="true" />
                    <asp:BoundField DataField="Username" HeaderText="Name" />
                    <asp:BoundField DataField="Password" HeaderText="Password" />
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="lnkUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            <asp:LinkButton ID="lnkCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this record?');"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
