<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministratorLogin.aspx.cs" Inherits="PropertiesApp.AdministratorLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Login</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;">Administrator Login</h3>
            <a href="/Home" class="btn btn-link">&lt; Home</a><br />
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" CssClass="alert alert-danger"></asp:Label>
        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
