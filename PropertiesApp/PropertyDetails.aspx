<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PropertyDetails.aspx.cs" Inherits="PropertiesApp.PropertyDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Property details</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;"><b>Property details</b></h3>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-link" NavigateUrl="/AdministratorPanel">&lt; Home</asp:HyperLink>
            <asp:FormView ID="FormView1" CssClass="table" runat="server" DataKeyNames="Id" DataSourceID="PropertyDataSource">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" CssClass="form-control" Text='<%# Eval("Id") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("name") %>' />
                    <br />
                    address:
                    <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control" Text='<%# Bind("address") %>' />
                    <br />
                    zipCode:
                    <asp:TextBox ID="zipCodeTextBox" runat="server" CssClass="form-control" Text='<%# Bind("zipCode") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" CssClass="form-control" Text='<%# Bind("phone") %>' />
                    <br />
                    isLocal:
                    <asp:TextBox ID="isLocalTextBox" runat="server" CssClass="form-control" Text='<%# Bind("isLocal") %>' />
                    <br />
                    isApartment:
                    <asp:TextBox ID="isApartmentTextBox" runat="server" CssClass="form-control" Text='<%# Bind("isApartment") %>' />
                    <br />
                    isBuilding:
                    <asp:TextBox ID="isBuildingTextBox" runat="server" CssClass="form-control" Text='<%# Bind("isBuilding") %>' />
                    <br />
                    floor:
                    <asp:TextBox ID="floorTextBox" runat="server" CssClass="form-control" Text='<%# Bind("floor") %>' />
                    <br />
                    number:
                    <asp:TextBox ID="numberTextBox" runat="server" CssClass="form-control" Text='<%# Bind("number") %>' />
                    <br />
                    additionalInfo:
                    <asp:TextBox ID="additionalInfoTextBox" runat="server" CssClass="form-control" Text='<%# Bind("additionalInfo") %>' />
                    <br />
                    tenantId:
                    <asp:TextBox ID="tenantIdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("tenantId") %>' />
                    <br />
                    propertyParentId:
                    <asp:TextBox ID="propertyParentIdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("propertyParentId") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    <br />
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    address:
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                    <br />
                    zipCode:
                    <asp:TextBox ID="zipCodeTextBox" runat="server" Text='<%# Bind("zipCode") %>' />
                    <br />
                    phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    isLocal:
                    <asp:TextBox ID="isLocalTextBox" runat="server" Text='<%# Bind("isLocal") %>' />
                    <br />
                    isApartment:
                    <asp:TextBox ID="isApartmentTextBox" runat="server" Text='<%# Bind("isApartment") %>' />
                    <br />
                    isBuilding:
                    <asp:TextBox ID="isBuildingTextBox" runat="server" Text='<%# Bind("isBuilding") %>' />
                    <br />
                    floor:
                    <asp:TextBox ID="floorTextBox" runat="server" Text='<%# Bind("floor") %>' />
                    <br />
                    number:
                    <asp:TextBox ID="numberTextBox" runat="server" Text='<%# Bind("number") %>' />
                    <br />
                    additionalInfo:
                    <asp:TextBox ID="additionalInfoTextBox" runat="server" Text='<%# Bind("additionalInfo") %>' />
                    <br />
                    tenantId:
                    <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                    <br />
                    propertyParentId:
                    <asp:TextBox ID="propertyParentIdTextBox" runat="server" Text='<%# Bind("propertyParentId") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    address:
                    <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                    <br />
                    zipCode:
                    <asp:Label ID="zipCodeLabel" runat="server" Text='<%# Bind("zipCode") %>' />
                    <br />
                    phone:
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                    <br />
                    isLocal:
                    <asp:Label ID="isLocalLabel" runat="server" Text='<%# Bind("isLocal") %>' />
                    <br />
                    isApartment:
                    <asp:Label ID="isApartmentLabel" runat="server" Text='<%# Bind("isApartment") %>' />
                    <br />
                    isBuilding:
                    <asp:Label ID="isBuildingLabel" runat="server" Text='<%# Bind("isBuilding") %>' />
                    <br />
                    floor:
                    <asp:Label ID="floorLabel" runat="server" Text='<%# Bind("floor") %>' />
                    <br />
                    number:
                    <asp:Label ID="numberLabel" runat="server" Text='<%# Bind("number") %>' />
                    <br />
                    additionalInfo:
                    <asp:Label ID="additionalInfoLabel" runat="server" Text='<%# Bind("additionalInfo") %>' />
                    <br />
                    tenantId:
                    <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Bind("tenantId") %>' />
                    <br />
                    propertyParentId:
                    <asp:Label ID="propertyParentIdLabel" runat="server" Text='<%# Bind("propertyParentId") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Edit" Text="Edit property" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="PropertyDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [Property] WHERE [Id] = @original_Id AND [name] = @original_name AND [address] = @original_address AND [zipCode] = @original_zipCode AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [isLocal] = @original_isLocal AND [isApartment] = @original_isApartment AND [isBuilding] = @original_isBuilding AND (([floor] = @original_floor) OR ([floor] IS NULL AND @original_floor IS NULL)) AND [number] = @original_number AND (([additionalInfo] = @original_additionalInfo) OR ([additionalInfo] IS NULL AND @original_additionalInfo IS NULL)) AND (([tenantId] = @original_tenantId) OR ([tenantId] IS NULL AND @original_tenantId IS NULL)) AND (([propertyParentId] = @original_propertyParentId) OR ([propertyParentId] IS NULL AND @original_propertyParentId IS NULL))" InsertCommand="INSERT INTO [Property] ([Id], [name], [address], [zipCode], [phone], [isLocal], [isApartment], [isBuilding], [floor], [number], [additionalInfo], [tenantId], [propertyParentId]) VALUES (@Id, @name, @address, @zipCode, @phone, @isLocal, @isApartment, @isBuilding, @floor, @number, @additionalInfo, @tenantId, @propertyParentId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Property]" UpdateCommand="UPDATE [Property] SET [name] = @name, [address] = @address, [zipCode] = @zipCode, [phone] = @phone, [isLocal] = @isLocal, [isApartment] = @isApartment, [isBuilding] = @isBuilding, [floor] = @floor, [number] = @number, [additionalInfo] = @additionalInfo, [tenantId] = @tenantId, [propertyParentId] = @propertyParentId WHERE [Id] = @original_Id AND [name] = @original_name AND [address] = @original_address AND [zipCode] = @original_zipCode AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [isLocal] = @original_isLocal AND [isApartment] = @original_isApartment AND [isBuilding] = @original_isBuilding AND (([floor] = @original_floor) OR ([floor] IS NULL AND @original_floor IS NULL)) AND [number] = @original_number AND (([additionalInfo] = @original_additionalInfo) OR ([additionalInfo] IS NULL AND @original_additionalInfo IS NULL)) AND (([tenantId] = @original_tenantId) OR ([tenantId] IS NULL AND @original_tenantId IS NULL)) AND (([propertyParentId] = @original_propertyParentId) OR ([propertyParentId] IS NULL AND @original_propertyParentId IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_zipCode" Type="Int32" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_isLocal" Type="String" />
                    <asp:Parameter Name="original_isApartment" Type="String" />
                    <asp:Parameter Name="original_isBuilding" Type="String" />
                    <asp:Parameter Name="original_floor" Type="String" />
                    <asp:Parameter Name="original_number" Type="Int32" />
                    <asp:Parameter Name="original_additionalInfo" Type="String" />
                    <asp:Parameter Name="original_tenantId" Type="Int32" />
                    <asp:Parameter Name="original_propertyParentId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="zipCode" Type="Int32" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="isLocal" Type="String" />
                    <asp:Parameter Name="isApartment" Type="String" />
                    <asp:Parameter Name="isBuilding" Type="String" />
                    <asp:Parameter Name="floor" Type="String" />
                    <asp:Parameter Name="number" Type="Int32" />
                    <asp:Parameter Name="additionalInfo" Type="String" />
                    <asp:Parameter Name="tenantId" Type="Int32" />
                    <asp:Parameter Name="propertyParentId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="zipCode" Type="Int32" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="isLocal" Type="String" />
                    <asp:Parameter Name="isApartment" Type="String" />
                    <asp:Parameter Name="isBuilding" Type="String" />
                    <asp:Parameter Name="floor" Type="String" />
                    <asp:Parameter Name="number" Type="Int32" />
                    <asp:Parameter Name="additionalInfo" Type="String" />
                    <asp:Parameter Name="tenantId" Type="Int32" />
                    <asp:Parameter Name="propertyParentId" Type="Int32" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_zipCode" Type="Int32" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_isLocal" Type="String" />
                    <asp:Parameter Name="original_isApartment" Type="String" />
                    <asp:Parameter Name="original_isBuilding" Type="String" />
                    <asp:Parameter Name="original_floor" Type="String" />
                    <asp:Parameter Name="original_number" Type="Int32" />
                    <asp:Parameter Name="original_additionalInfo" Type="String" />
                    <asp:Parameter Name="original_tenantId" Type="Int32" />
                    <asp:Parameter Name="original_propertyParentId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
            <br /><br />

            <asp:FormView ID="FormView2" runat="server" DataKeyNames="Id" DataSourceID="BillDataSource">
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
                    <asp:TextBox ID="isPaidTextBox" runat="server" CssClass="form-control" Text='<%# Bind("isPaid") %>' val />
                    <br />
                    propertyId:
                    <asp:TextBox ID="propertyIdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("propertyId") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="New" Text="New bill" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="BillDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [Bill] WHERE [Id] = @original_Id AND [date] = @original_date AND [rentValue] = @original_rentValue AND [waterServiceValue] = @original_waterServiceValue AND [energyServiceValue] = @original_energyServiceValue AND [internetServiceValue] = @original_internetServiceValue AND [gatehouseValue] = @original_gatehouseValue AND [isPaid] = @original_isPaid AND [propertyId] = @original_propertyId AND (([bankingMovementId] = @original_bankingMovementId) OR ([bankingMovementId] IS NULL AND @original_bankingMovementId IS NULL))" InsertCommand="INSERT INTO [Bill] ([Id], [date], [rentValue], [waterServiceValue], [energyServiceValue], [internetServiceValue], [gatehouseValue], [isPaid], [propertyId], [bankingMovementId]) VALUES (@Id, @date, @rentValue, @waterServiceValue, @energyServiceValue, @internetServiceValue, @gatehouseValue, @isPaid, @propertyId, @bankingMovementId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Bill]" UpdateCommand="UPDATE [Bill] SET [date] = @date, [rentValue] = @rentValue, [waterServiceValue] = @waterServiceValue, [energyServiceValue] = @energyServiceValue, [internetServiceValue] = @internetServiceValue, [gatehouseValue] = @gatehouseValue, [isPaid] = @isPaid, [propertyId] = @propertyId, [bankingMovementId] = @bankingMovementId WHERE [Id] = @original_Id AND [date] = @original_date AND [rentValue] = @original_rentValue AND [waterServiceValue] = @original_waterServiceValue AND [energyServiceValue] = @original_energyServiceValue AND [internetServiceValue] = @original_internetServiceValue AND [gatehouseValue] = @original_gatehouseValue AND [isPaid] = @original_isPaid AND [propertyId] = @original_propertyId AND (([bankingMovementId] = @original_bankingMovementId) OR ([bankingMovementId] IS NULL AND @original_bankingMovementId IS NULL))">
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

            <br /><br />

            <h4><b>Property bills</b></h4>
            <asp:GridView ID="GridView1" CssClass="table" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="BillDataSource">
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
        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
