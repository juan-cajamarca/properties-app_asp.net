<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PropertiesApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Properties App - Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Welcome to Properties App!</h2>
            <p>Please, select your site</p>
            <a href="/AdministratorLogin">Administrator login</a>
            <a href="/TenantSignup">Tenant signup</a>
            <a href="#">Payments portal for tenants</a>
            <a href="#">Accounting assistant login</a>
        </div>
    </form>
</body>
</html>
