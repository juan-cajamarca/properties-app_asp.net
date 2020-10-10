<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TenantBankAccountDetails.aspx.cs" Inherits="PropertiesApp.TenantBankAccountDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tenant bank account details</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;"><b>Tenant bank account details</b></h3>
            <br />
            <asp:FormView ID="FormView1" runat="server" CssClass="table" DataKeyNames="Id" DataSourceID="BankAccountDataSource">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" CssClass="form-control" Text='<%# Eval("Id") %>' />
                    <br />
                    tenantId:
                    <asp:TextBox ID="tenantIdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("tenantId") %>' />
                    <br />
                    bankId:
                    <asp:TextBox ID="bankIdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("bankId") %>' />
                    <br />
                    balance:
                    <asp:TextBox ID="balanceTextBox" runat="server" CssClass="form-control" Text='<%# Bind("balance") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    <br />
                    tenantId:
                    <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                    <br />
                    bankId:
                    <asp:TextBox ID="bankIdTextBox" runat="server" Text='<%# Bind("bankId") %>' />
                    <br />
                    balance:
                    <asp:TextBox ID="balanceTextBox" runat="server" Text='<%# Bind("balance") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    tenantId:
                    <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Bind("tenantId") %>' />
                    <br />
                    bankId:
                    <asp:Label ID="bankIdLabel" runat="server" Text='<%# Bind("bankId") %>' />
                    <br />
                    balance:
                    <asp:Label ID="balanceLabel" runat="server" Text='<%# Bind("balance") %>' />
                    <br /><br />
                    <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Delete" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="BankAccountDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [BankAccount] WHERE [Id] = @original_Id AND [tenantId] = @original_tenantId AND [bankId] = @original_bankId AND [balance] = @original_balance" InsertCommand="INSERT INTO [BankAccount] ([Id], [tenantId], [bankId], [balance]) VALUES (@Id, @tenantId, @bankId, @balance)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BankAccount]" UpdateCommand="UPDATE [BankAccount] SET [tenantId] = @tenantId, [bankId] = @bankId, [balance] = @balance WHERE [Id] = @original_Id AND [tenantId] = @original_tenantId AND [bankId] = @original_bankId AND [balance] = @original_balance">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_tenantId" Type="Int32" />
                    <asp:Parameter Name="original_bankId" Type="Int32" />
                    <asp:Parameter Name="original_balance" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="tenantId" Type="Int32" />
                    <asp:Parameter Name="bankId" Type="Int32" />
                    <asp:Parameter Name="balance" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tenantId" Type="Int32" />
                    <asp:Parameter Name="bankId" Type="Int32" />
                    <asp:Parameter Name="balance" Type="Int32" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_tenantId" Type="Int32" />
                    <asp:Parameter Name="original_bankId" Type="Int32" />
                    <asp:Parameter Name="original_balance" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <h4><b>Account movements</b></h4>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="BankingMovementsDataSource">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                        </td>
                        <td>
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankAccountIdLabel" runat="server" Text='<%# Eval("bankAccountId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="billIdLabel" runat="server" Text='<%# Eval("billId") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-primary" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CssClass="btn btn-danger" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="bankAccountIdTextBox" runat="server" Text='<%# Bind("bankAccountId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="billIdTextBox" runat="server" Text='<%# Bind("billId") %>' />
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
                            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="bankAccountIdTextBox" runat="server" Text='<%# Bind("bankAccountId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="billIdTextBox" runat="server" Text='<%# Bind("billId") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                        </td>
                        <td>
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankAccountIdLabel" runat="server" Text='<%# Eval("bankAccountId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="billIdLabel" runat="server" Text='<%# Eval("billId") %>' />
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
                                        <th runat="server">amount</th>
                                        <th runat="server">date</th>
                                        <th runat="server">type</th>
                                        <th runat="server">description</th>
                                        <th runat="server">bankAccountId</th>
                                        <th runat="server">billId</th>
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
                            <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                        </td>
                        <td>
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        </td>
                        <td>
                            <asp:Label ID="bankAccountIdLabel" runat="server" Text='<%# Eval("bankAccountId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="billIdLabel" runat="server" Text='<%# Eval("billId") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="BankingMovementsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" SelectCommand="SELECT * FROM [BankingMovement]"></asp:SqlDataSource>
            <br />

        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
