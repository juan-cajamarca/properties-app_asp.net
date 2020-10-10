<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssistantLogin.aspx.cs" Inherits="PropertiesApp.AssistantLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assistant login</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;"><b>Assistant login</b></h3>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Button1_Click" />
            <br /><br />
            <asp:Label ID="Label3" CssClass="alert alert-danger" runat="server"></asp:Label>
        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
