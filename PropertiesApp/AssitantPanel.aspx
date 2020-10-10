<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssitantPanel.aspx.cs" Inherits="PropertiesApp.AssitantPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assistant panel</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;"><b>Assistant panel</b></h3>
            <br />
            <br />
            <h4><b>Banking movements</b></h4>
            <asp:GridView ID="GridView1" runat="server" CssClass="table" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="BankingMovements">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="bankAccountId" HeaderText="bankAccountId" SortExpression="bankAccountId" />
                    <asp:BoundField DataField="billId" HeaderText="billId" SortExpression="billId" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="BankingMovements" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [BankingMovement] WHERE [Id] = @original_Id AND [amount] = @original_amount AND [date] = @original_date AND [type] = @original_type AND [description] = @original_description AND [bankAccountId] = @original_bankAccountId AND [billId] = @original_billId" InsertCommand="INSERT INTO [BankingMovement] ([Id], [amount], [date], [type], [description], [bankAccountId], [billId]) VALUES (@Id, @amount, @date, @type, @description, @bankAccountId, @billId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BankingMovement]" UpdateCommand="UPDATE [BankingMovement] SET [amount] = @amount, [date] = @date, [type] = @type, [description] = @description, [bankAccountId] = @bankAccountId, [billId] = @billId WHERE [Id] = @original_Id AND [amount] = @original_amount AND [date] = @original_date AND [type] = @original_type AND [description] = @original_description AND [bankAccountId] = @original_bankAccountId AND [billId] = @original_billId">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_amount" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_date" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_description" Type="String" />
                    <asp:Parameter Name="original_bankAccountId" Type="Int32" />
                    <asp:Parameter Name="original_billId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="amount" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="bankAccountId" Type="Int32" />
                    <asp:Parameter Name="billId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="amount" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="bankAccountId" Type="Int32" />
                    <asp:Parameter Name="billId" Type="Int32" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_amount" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_date" />
                    <asp:Parameter Name="original_type" Type="String" />
                    <asp:Parameter Name="original_description" Type="String" />
                    <asp:Parameter Name="original_bankAccountId" Type="Int32" />
                    <asp:Parameter Name="original_billId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <h4><b>Bills</b></h4>
            <asp:GridView ID="GridView2" runat="server" CssClass="table" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="BillsDataSource">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="rentValue" HeaderText="rentValue" SortExpression="rentValue" />
                    <asp:BoundField DataField="waterServiceValue" HeaderText="waterServiceValue" SortExpression="waterServiceValue" />
                    <asp:BoundField DataField="energyServiceValue" HeaderText="energyServiceValue" SortExpression="energyServiceValue" />
                    <asp:BoundField DataField="internetServiceValue" HeaderText="internetServiceValue" SortExpression="internetServiceValue" />
                    <asp:BoundField DataField="gatehouseValue" HeaderText="gatehouseValue" SortExpression="gatehouseValue" />
                    <asp:BoundField DataField="isPaid" HeaderText="isPaid" SortExpression="isPaid" />
                    <asp:BoundField DataField="propertyId" HeaderText="propertyId" SortExpression="propertyId" />
                    <asp:BoundField DataField="bankingMovementId" HeaderText="bankingMovementId" SortExpression="bankingMovementId" />
                    <asp:BoundField DataField="tenantId" HeaderText="tenantId" SortExpression="tenantId" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="BillsDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [Bill] WHERE [Id] = @original_Id AND [date] = @original_date AND [rentValue] = @original_rentValue AND [waterServiceValue] = @original_waterServiceValue AND [energyServiceValue] = @original_energyServiceValue AND [internetServiceValue] = @original_internetServiceValue AND [gatehouseValue] = @original_gatehouseValue AND [isPaid] = @original_isPaid AND [propertyId] = @original_propertyId AND (([bankingMovementId] = @original_bankingMovementId) OR ([bankingMovementId] IS NULL AND @original_bankingMovementId IS NULL)) AND [tenantId] = @original_tenantId" InsertCommand="INSERT INTO [Bill] ([Id], [date], [rentValue], [waterServiceValue], [energyServiceValue], [internetServiceValue], [gatehouseValue], [isPaid], [propertyId], [bankingMovementId], [tenantId]) VALUES (@Id, @date, @rentValue, @waterServiceValue, @energyServiceValue, @internetServiceValue, @gatehouseValue, @isPaid, @propertyId, @bankingMovementId, @tenantId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bill]" UpdateCommand="UPDATE [Bill] SET [date] = @date, [rentValue] = @rentValue, [waterServiceValue] = @waterServiceValue, [energyServiceValue] = @energyServiceValue, [internetServiceValue] = @internetServiceValue, [gatehouseValue] = @gatehouseValue, [isPaid] = @isPaid, [propertyId] = @propertyId, [bankingMovementId] = @bankingMovementId, [tenantId] = @tenantId WHERE [Id] = @original_Id AND [date] = @original_date AND [rentValue] = @original_rentValue AND [waterServiceValue] = @original_waterServiceValue AND [energyServiceValue] = @original_energyServiceValue AND [internetServiceValue] = @original_internetServiceValue AND [gatehouseValue] = @original_gatehouseValue AND [isPaid] = @original_isPaid AND [propertyId] = @original_propertyId AND (([bankingMovementId] = @original_bankingMovementId) OR ([bankingMovementId] IS NULL AND @original_bankingMovementId IS NULL)) AND [tenantId] = @original_tenantId">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_date" />
                    <asp:Parameter Name="original_rentValue" Type="Int32" />
                    <asp:Parameter Name="original_waterServiceValue" Type="Int32" />
                    <asp:Parameter Name="original_energyServiceValue" Type="Int32" />
                    <asp:Parameter Name="original_internetServiceValue" Type="Int32" />
                    <asp:Parameter Name="original_gatehouseValue" Type="Int32" />
                    <asp:Parameter Name="original_isPaid" Type="String" />
                    <asp:Parameter Name="original_propertyId" Type="Int32" />
                    <asp:Parameter Name="original_bankingMovementId" Type="Int32" />
                    <asp:Parameter Name="original_tenantId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="rentValue" Type="Int32" />
                    <asp:Parameter Name="waterServiceValue" Type="Int32" />
                    <asp:Parameter Name="energyServiceValue" Type="Int32" />
                    <asp:Parameter Name="internetServiceValue" Type="Int32" />
                    <asp:Parameter Name="gatehouseValue" Type="Int32" />
                    <asp:Parameter Name="isPaid" Type="String" />
                    <asp:Parameter Name="propertyId" Type="Int32" />
                    <asp:Parameter Name="bankingMovementId" Type="Int32" />
                    <asp:Parameter Name="tenantId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="rentValue" Type="Int32" />
                    <asp:Parameter Name="waterServiceValue" Type="Int32" />
                    <asp:Parameter Name="energyServiceValue" Type="Int32" />
                    <asp:Parameter Name="internetServiceValue" Type="Int32" />
                    <asp:Parameter Name="gatehouseValue" Type="Int32" />
                    <asp:Parameter Name="isPaid" Type="String" />
                    <asp:Parameter Name="propertyId" Type="Int32" />
                    <asp:Parameter Name="bankingMovementId" Type="Int32" />
                    <asp:Parameter Name="tenantId" Type="Int32" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_date" />
                    <asp:Parameter Name="original_rentValue" Type="Int32" />
                    <asp:Parameter Name="original_waterServiceValue" Type="Int32" />
                    <asp:Parameter Name="original_energyServiceValue" Type="Int32" />
                    <asp:Parameter Name="original_internetServiceValue" Type="Int32" />
                    <asp:Parameter Name="original_gatehouseValue" Type="Int32" />
                    <asp:Parameter Name="original_isPaid" Type="String" />
                    <asp:Parameter Name="original_propertyId" Type="Int32" />
                    <asp:Parameter Name="original_bankingMovementId" Type="Int32" />
                    <asp:Parameter Name="original_tenantId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
