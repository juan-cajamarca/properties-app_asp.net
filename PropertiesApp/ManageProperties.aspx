<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProperties.aspx.cs" Inherits="PropertiesApp.ManageProperties" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage properties</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5em;">
            <h3 style="text-align: center;"><b>Manage properties</b></h3>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-link" NavigateUrl="/AdministratorPanel">&lt; Home</asp:HyperLink>
            <br /><br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="PropertiesDataSource">
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Id") %>' />
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
                    <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-success" CausesValidation="False" CommandName="New" Text="New property" />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="table" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="PropertiesDataSource">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="zipCode" HeaderText="zipCode" SortExpression="zipCode" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="isLocal" HeaderText="Is a local" SortExpression="isLocal" />
                    <asp:BoundField DataField="isApartment" HeaderText="Is an apartment" SortExpression="isApartment" />
                    <asp:BoundField DataField="isBuilding" HeaderText="Is a building" SortExpression="isBuilding" />
                    <asp:BoundField DataField="floor" HeaderText="floor" SortExpression="floor" />
                    <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
                    <asp:BoundField DataField="additionalInfo" HeaderText="additionalInfo" SortExpression="additionalInfo" />
                    <asp:BoundField DataField="tenantId" HeaderText="tenantId" SortExpression="tenantId" />
                    <asp:BoundField DataField="propertyParentId" HeaderText="propertyParentId" SortExpression="propertyParentId" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="PropertiesDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [Property] WHERE [Id] = @original_Id AND [name] = @original_name AND [address] = @original_address AND [zipCode] = @original_zipCode AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [isLocal] = @original_isLocal AND [isApartment] = @original_isApartment AND [isBuilding] = @original_isBuilding AND (([floor] = @original_floor) OR ([floor] IS NULL AND @original_floor IS NULL)) AND [number] = @original_number AND (([additionalInfo] = @original_additionalInfo) OR ([additionalInfo] IS NULL AND @original_additionalInfo IS NULL)) AND (([tenantId] = @original_tenantId) OR ([tenantId] IS NULL AND @original_tenantId IS NULL)) AND (([propertyParentId] = @original_propertyParentId) OR ([propertyParentId] IS NULL AND @original_propertyParentId IS NULL))" InsertCommand="INSERT INTO [Property] ([Id], [name], [address], [zipCode], [phone], [isLocal], [isApartment], [isBuilding], [floor], [number], [additionalInfo], [tenantId], [propertyParentId]) VALUES (@Id, @name, @address, @zipCode, @phone, @isLocal, @isApartment, @isBuilding, @floor, @number, @additionalInfo, @tenantId, @propertyParentId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Property]" UpdateCommand="UPDATE [Property] SET [name] = @name, [address] = @address, [zipCode] = @zipCode, [phone] = @phone, [isLocal] = @isLocal, [isApartment] = @isApartment, [isBuilding] = @isBuilding, [floor] = @floor, [number] = @number, [additionalInfo] = @additionalInfo, [tenantId] = @tenantId, [propertyParentId] = @propertyParentId WHERE [Id] = @original_Id AND [name] = @original_name AND [address] = @original_address AND [zipCode] = @original_zipCode AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [isLocal] = @original_isLocal AND [isApartment] = @original_isApartment AND [isBuilding] = @original_isBuilding AND (([floor] = @original_floor) OR ([floor] IS NULL AND @original_floor IS NULL)) AND [number] = @original_number AND (([additionalInfo] = @original_additionalInfo) OR ([additionalInfo] IS NULL AND @original_additionalInfo IS NULL)) AND (([tenantId] = @original_tenantId) OR ([tenantId] IS NULL AND @original_tenantId IS NULL)) AND (([propertyParentId] = @original_propertyParentId) OR ([propertyParentId] IS NULL AND @original_propertyParentId IS NULL))">
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
        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
