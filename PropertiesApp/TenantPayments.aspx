<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TenantPayments.aspx.cs" Inherits="PropertiesApp.TenantPayments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tenant payments</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;"><b>Tenant payments</b></h3>
            <br /><br />
            <h4><b>Bills to pay</b></h4>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="BillsToPayDataSource">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="rentValueLabel" runat="server" Text='<%# Eval("rentValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="waterServiceValueLabel" runat="server" Text='<%# Eval("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="energyServiceValueLabel" runat="server" Text='<%# Eval("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="internetServiceValueLabel" runat="server" Text='<%# Eval("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gatehouseValueLabel" runat="server" Text='<%# Eval("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isPaidLabel" runat="server" Text='<%# Eval("isPaid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="propertyIdLabel" runat="server" Text='<%# Eval("propertyId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankingMovementIdLabel" runat="server" Text='<%# Eval("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="rentValueTextBox" runat="server" Text='<%# Bind("rentValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="waterServiceValueTextBox" runat="server" Text='<%# Bind("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="energyServiceValueTextBox" runat="server" Text='<%# Bind("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="internetServiceValueTextBox" runat="server" Text='<%# Bind("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="gatehouseValueTextBox" runat="server" Text='<%# Bind("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isPaidTextBox" runat="server" Text='<%# Bind("isPaid") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="propertyIdTextBox" runat="server" Text='<%# Bind("propertyId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="bankingMovementIdTextBox" runat="server" Text='<%# Bind("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="rentValueTextBox" runat="server" Text='<%# Bind("rentValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="waterServiceValueTextBox" runat="server" Text='<%# Bind("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="energyServiceValueTextBox" runat="server" Text='<%# Bind("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="internetServiceValueTextBox" runat="server" Text='<%# Bind("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="gatehouseValueTextBox" runat="server" Text='<%# Bind("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isPaidTextBox" runat="server" Text='<%# Bind("isPaid") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="propertyIdTextBox" runat="server" Text='<%# Bind("propertyId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="bankingMovementIdTextBox" runat="server" Text='<%# Bind("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="rentValueLabel" runat="server" Text='<%# Eval("rentValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="waterServiceValueLabel" runat="server" Text='<%# Eval("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="energyServiceValueLabel" runat="server" Text='<%# Eval("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="internetServiceValueLabel" runat="server" Text='<%# Eval("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gatehouseValueLabel" runat="server" Text='<%# Eval("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isPaidLabel" runat="server" Text='<%# Eval("isPaid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="propertyIdLabel" runat="server" Text='<%# Eval("propertyId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankingMovementIdLabel" runat="server" Text='<%# Eval("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" class="table" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">Id</th>
                                        <th runat="server">date</th>
                                        <th runat="server">rentValue</th>
                                        <th runat="server">waterServiceValue</th>
                                        <th runat="server">energyServiceValue</th>
                                        <th runat="server">internetServiceValue</th>
                                        <th runat="server">gatehouseValue</th>
                                        <th runat="server">isPaid</th>
                                        <th runat="server">propertyId</th>
                                        <th runat="server">bankingMovementId</th>
                                        <th runat="server">tenantId</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="rentValueLabel" runat="server" Text='<%# Eval("rentValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="waterServiceValueLabel" runat="server" Text='<%# Eval("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="energyServiceValueLabel" runat="server" Text='<%# Eval("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="internetServiceValueLabel" runat="server" Text='<%# Eval("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gatehouseValueLabel" runat="server" Text='<%# Eval("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isPaidLabel" runat="server" Text='<%# Eval("isPaid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="propertyIdLabel" runat="server" Text='<%# Eval("propertyId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankingMovementIdLabel" runat="server" Text='<%# Eval("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="BillsToPayDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" SelectCommand="SELECT * FROM [Bill]"></asp:SqlDataSource>
            <br /><br />

            <h4><b>Paid bills</b></h4>
            <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="PaidBillsDataSource">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="rentValueLabel" runat="server" Text='<%# Eval("rentValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="waterServiceValueLabel" runat="server" Text='<%# Eval("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="energyServiceValueLabel" runat="server" Text='<%# Eval("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="internetServiceValueLabel" runat="server" Text='<%# Eval("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gatehouseValueLabel" runat="server" Text='<%# Eval("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isPaidLabel" runat="server" Text='<%# Eval("isPaid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="propertyIdLabel" runat="server" Text='<%# Eval("propertyId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankingMovementIdLabel" runat="server" Text='<%# Eval("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="rentValueTextBox" runat="server" Text='<%# Bind("rentValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="waterServiceValueTextBox" runat="server" Text='<%# Bind("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="energyServiceValueTextBox" runat="server" Text='<%# Bind("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="internetServiceValueTextBox" runat="server" Text='<%# Bind("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="gatehouseValueTextBox" runat="server" Text='<%# Bind("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isPaidTextBox" runat="server" Text='<%# Bind("isPaid") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="propertyIdTextBox" runat="server" Text='<%# Bind("propertyId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="bankingMovementIdTextBox" runat="server" Text='<%# Bind("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="rentValueTextBox" runat="server" Text='<%# Bind("rentValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="waterServiceValueTextBox" runat="server" Text='<%# Bind("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="energyServiceValueTextBox" runat="server" Text='<%# Bind("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="internetServiceValueTextBox" runat="server" Text='<%# Bind("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="gatehouseValueTextBox" runat="server" Text='<%# Bind("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isPaidTextBox" runat="server" Text='<%# Bind("isPaid") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="propertyIdTextBox" runat="server" Text='<%# Bind("propertyId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="bankingMovementIdTextBox" runat="server" Text='<%# Bind("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="rentValueLabel" runat="server" Text='<%# Eval("rentValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="waterServiceValueLabel" runat="server" Text='<%# Eval("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="energyServiceValueLabel" runat="server" Text='<%# Eval("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="internetServiceValueLabel" runat="server" Text='<%# Eval("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gatehouseValueLabel" runat="server" Text='<%# Eval("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isPaidLabel" runat="server" Text='<%# Eval("isPaid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="propertyIdLabel" runat="server" Text='<%# Eval("propertyId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankingMovementIdLabel" runat="server" Text='<%# Eval("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" class="table" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">Id</th>
                                        <th runat="server">date</th>
                                        <th runat="server">rentValue</th>
                                        <th runat="server">waterServiceValue</th>
                                        <th runat="server">energyServiceValue</th>
                                        <th runat="server">internetServiceValue</th>
                                        <th runat="server">gatehouseValue</th>
                                        <th runat="server">isPaid</th>
                                        <th runat="server">propertyId</th>
                                        <th runat="server">bankingMovementId</th>
                                        <th runat="server">tenantId</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="rentValueLabel" runat="server" Text='<%# Eval("rentValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="waterServiceValueLabel" runat="server" Text='<%# Eval("waterServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="energyServiceValueLabel" runat="server" Text='<%# Eval("energyServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="internetServiceValueLabel" runat="server" Text='<%# Eval("internetServiceValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="gatehouseValueLabel" runat="server" Text='<%# Eval("gatehouseValue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isPaidLabel" runat="server" Text='<%# Eval("isPaid") %>' />
                        </td>
                        <td>
                            <asp:Label ID="propertyIdLabel" runat="server" Text='<%# Eval("propertyId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankingMovementIdLabel" runat="server" Text='<%# Eval("bankingMovementId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="PaidBillsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" SelectCommand="SELECT * FROM [Bill]"></asp:SqlDataSource>
            <br /><br />
            <h4><b>Bank accounts</b></h4>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Manage bank accounts" OnClick="Button1_Click" />
            <br /><br />
            <asp:ListView ID="ListView3" runat="server" DataKeyNames="Id" DataSourceID="BankAccountsDataSource">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankIdLabel" runat="server" Text='<%# Eval("bankId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="balanceLabel" runat="server" Text='<%# Eval("balance") %>' />
                        </td>
                        <td>
                            <a href="/TenantBankAccountDetails?bankAccountId=<%# Eval("Id") %>">Details</a>
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="bankIdTextBox" runat="server" Text='<%# Bind("bankId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="balanceTextBox" runat="server" Text='<%# Bind("balance") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="bankIdTextBox" runat="server" Text='<%# Bind("bankId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="balanceTextBox" runat="server" Text='<%# Bind("balance") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankIdLabel" runat="server" Text='<%# Eval("bankId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="balanceLabel" runat="server" Text='<%# Eval("balance") %>' />
                        </td>
                        <td>
                            <a href="/TenantBankAccountDetails?bankAccountId=<%# Eval("Id") %>">Details</a>
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" class="table" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">Id</th>
                                        <th runat="server">tenantId</th>
                                        <th runat="server">bankId</th>
                                        <th runat="server">balance</th>
                                        <th runat="server">Details</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankIdLabel" runat="server" Text='<%# Eval("bankId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="balanceLabel" runat="server" Text='<%# Eval("balance") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="BankAccountsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" SelectCommand="SELECT * FROM [BankAccount]"></asp:SqlDataSource>
        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
