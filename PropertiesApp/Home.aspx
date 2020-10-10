<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PropertiesApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Properties App - Home</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 3em;">
            <h2 style="text-align: center;">Welcome to Properties App!</h2>
            <p style="margin-top: 4em;">Please, select your site:</p>
            <div style="width: 100%;">
                <div style="text-align: center;">
                    <a class="btn btn-light" href="/AdministratorLogin">Administrator login</a>
                    <a class="btn btn-light" href="/TenantSignup">Tenant signup</a>
                    <a class="btn btn-light" href="/TenantLogin">Payments portal for tenants</a>
                    <a class="btn btn-light" href="/AssistantLogin">Accounting assistant login</a>
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
