<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTenantBankAccounts.aspx.cs" Inherits="PropertiesApp.ManageTenantBankAccounts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage tenant bank accounts</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;"><b>Manage tenant bank accounts</b></h3>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="BankAccountsDataSource">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Id") %>' />
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
                    <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="New" Text="New bank account" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="BankAccountsDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [BankAccount] WHERE [Id] = @original_Id AND [tenantId] = @original_tenantId AND [bankId] = @original_bankId AND [balance] = @original_balance" InsertCommand="INSERT INTO [BankAccount] ([Id], [tenantId], [bankId], [balance]) VALUES (@Id, @tenantId, @bankId, @balance)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BankAccount]" UpdateCommand="UPDATE [BankAccount] SET [tenantId] = @tenantId, [bankId] = @bankId, [balance] = @balance WHERE [Id] = @original_Id AND [tenantId] = @original_tenantId AND [bankId] = @original_bankId AND [balance] = @original_balance">
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
            <asp:GridView ID="GridView1" runat="server" CssClass="table" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="BankAccountsDataSource">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="tenantId" HeaderText="tenantId" SortExpression="tenantId" />
                    <asp:BoundField DataField="bankId" HeaderText="bankId" SortExpression="bankId" />
                    <asp:BoundField DataField="balance" HeaderText="balance" SortExpression="balance" />
                </Columns>
            </asp:GridView>
            <br />
        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
