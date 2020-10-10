<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TenantLogin.aspx.cs" Inherits="PropertiesApp.TenantLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tenant login</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;"><b>Tenant login</b></h3>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Type your identification:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Login" OnClick="Button1_Click" />
            <br /><br />
            <asp:Label ID="Label2" runat="server" CssClass="alert alert-danger"></asp:Label>
        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
