<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministratorLogin.aspx.cs" Inherits="PropertiesApp.AdministratorLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Administrator Login</h3>
            <a href="/Home">&lt; Home</a>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
