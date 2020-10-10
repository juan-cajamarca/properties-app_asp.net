<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageBills.aspx.cs" Inherits="PropertiesApp.ManageBills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage bills</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;"><b>Manage bills</b></h3>
            <asp:HyperLink ID="HyperLink1" CssClass="btn btn-link" runat="server" NavigateUrl="/AdministratorPanel">&lt; Home</asp:HyperLink>
            <br /><br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="BillsDataSource">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    date:
                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                    <br />
                    rentValue:
                    <asp:TextBox ID="rentValueTextBox" runat="server" Text='<%# Bind("rentValue") %>' />
                    <br />
                    waterServiceValue:
                    <asp:TextBox ID="waterServiceValueTextBox" runat="server" Text='<%# Bind("waterServiceValue") %>' />
                    <br />
                    energyServiceValue:
                    <asp:TextBox ID="energyServiceValueTextBox" runat="server" Text='<%# Bind("energyServiceValue") %>' />
                    <br />
                    internetServiceValue:
                    <asp:TextBox ID="internetServiceValueTextBox" runat="server" Text='<%# Bind("internetServiceValue") %>' />
                    <br />
                    gatehouseValue:
                    <asp:TextBox ID="gatehouseValueTextBox" runat="server" Text='<%# Bind("gatehouseValue") %>' />
                    <br />
                    isPaid:
                    <asp:TextBox ID="isPaidTextBox" runat="server" Text='<%# Bind("isPaid") %>' />
                    <br />
                    propertyId:
                    <asp:TextBox ID="propertyIdTextBox" runat="server" Text='<%# Bind("propertyId") %>' />
                    <br />
                    bankingMovementId:
                    <asp:TextBox ID="bankingMovementIdTextBox" runat="server" Text='<%# Bind("bankingMovementId") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Id") %>' />
                    <br />
                    date:
                    <asp:TextBox ID="dateTextBox" runat="server" CssClass="form-control" Text='<%# Bind("date") %>' />
                    <br />
                    rentValue:
                    <asp:TextBox ID="rentValueTextBox" runat="server" CssClass="form-control" Text='<%# Bind("rentValue") %>' />
                    <br />
                    waterServiceValue:
                    <asp:TextBox ID="waterServiceValueTextBox" runat="server" CssClass="form-control" Text='<%# Bind("waterServiceValue") %>' />
                    <br />
                    energyServiceValue:
                    <asp:TextBox ID="energyServiceValueTextBox" runat="server" CssClass="form-control" Text='<%# Bind("energyServiceValue") %>' />
                    <br />
                    internetServiceValue:
                    <asp:TextBox ID="internetServiceValueTextBox" runat="server" CssClass="form-control" Text='<%# Bind("internetServiceValue") %>' />
                    <br />
                    gatehouseValue:
                    <asp:TextBox ID="gatehouseValueTextBox" runat="server" CssClass="form-control" Text='<%# Bind("gatehouseValue") %>' />
                    <br />
                    isPaid:
                    <asp:TextBox ID="isPaidTextBox" runat="server" CssClass="form-control" Text='<%# Bind("isPaid") %>' />
                    <br />
                    propertyId:
                    <asp:TextBox ID="propertyIdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("propertyId") %>' />
                    <br />
                    bankingMovementId:
                    <asp:TextBox ID="bankingMovementIdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("bankingMovementId") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="New" Text="New bill" />
                </ItemTemplate>
            </asp:FormView>
            <br /><br />
            <asp:SqlDataSource ID="BillsDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [Bill] WHERE [Id] = @original_Id AND [date] = @original_date AND [rentValue] = @original_rentValue AND [waterServiceValue] = @original_waterServiceValue AND [energyServiceValue] = @original_energyServiceValue AND [internetServiceValue] = @original_internetServiceValue AND [gatehouseValue] = @original_gatehouseValue AND [isPaid] = @original_isPaid AND [propertyId] = @original_propertyId AND (([bankingMovementId] = @original_bankingMovementId) OR ([bankingMovementId] IS NULL AND @original_bankingMovementId IS NULL))" InsertCommand="INSERT INTO [Bill] ([Id], [date], [rentValue], [waterServiceValue], [energyServiceValue], [internetServiceValue], [gatehouseValue], [isPaid], [propertyId], [bankingMovementId]) VALUES (@Id, @date, @rentValue, @waterServiceValue, @energyServiceValue, @internetServiceValue, @gatehouseValue, @isPaid, @propertyId, @bankingMovementId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bill]" UpdateCommand="UPDATE [Bill] SET [date] = @date, [rentValue] = @rentValue, [waterServiceValue] = @waterServiceValue, [energyServiceValue] = @energyServiceValue, [internetServiceValue] = @internetServiceValue, [gatehouseValue] = @gatehouseValue, [isPaid] = @isPaid, [propertyId] = @propertyId, [bankingMovementId] = @bankingMovementId WHERE [Id] = @original_Id AND [date] = @original_date AND [rentValue] = @original_rentValue AND [waterServiceValue] = @original_waterServiceValue AND [energyServiceValue] = @original_energyServiceValue AND [internetServiceValue] = @original_internetServiceValue AND [gatehouseValue] = @original_gatehouseValue AND [isPaid] = @original_isPaid AND [propertyId] = @original_propertyId AND (([bankingMovementId] = @original_bankingMovementId) OR ([bankingMovementId] IS NULL AND @original_bankingMovementId IS NULL))">
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
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" CssClass="table" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="BillsDataSource">
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
