<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TenantDetails.aspx.cs" Inherits="PropertiesApp.TenantDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tenant details</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h3 style="text-align: center"><b>Tenant details</b></h3>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-link" NavigateUrl="/AdministratorPanel">&lt; Home</asp:HyperLink>
            <br />
            <br />
            <div id="tenantData">

                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View2" runat="server">
                        <asp:Label ID="Label1" runat="server" Text="Tenant identification:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click" Text="Verify" />
                        <asp:Label ID="Label2" runat="server" CssClass="alert alert-danger"></asp:Label>
                    </asp:View>
                    <asp:View ID="View1" runat="server">
                        <asp:FormView ID="FormView1" runat="server" CssClass="table" DataKeyNames="Id" DataSourceID="TenantDataSource">
                            <EditItemTemplate>
                                Id:
                                <asp:Label ID="IdLabel1" runat="server" CssClass="form-control" Text='<%# Eval("Id") %>' />
                                <br />
                                dni:
                                <asp:TextBox ID="dniTextBox" runat="server" CssClass="form-control" Text='<%# Bind("dni") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("name") %>' />
                                <br />
                                lastName:
                                <asp:TextBox ID="lastNameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("lastName") %>' />
                                <br />
                                age:
                                <asp:TextBox ID="ageTextBox" runat="server" CssClass="form-control" Text='<%# Bind("age") %>' />
                                <br />
                                sex:
                                <asp:TextBox ID="sexTextBox" runat="server" CssClass="form-control" Text='<%# Bind("sex") %>' />
                                <br />
                                address:
                                <asp:TextBox ID="addressTextBox" runat="server" CssClass="form-control" Text='<%# Bind("address") %>' />
                                <br />
                                phone:
                                <asp:TextBox ID="phoneTextBox" runat="server" CssClass="form-control" Text='<%# Bind("phone") %>' />
                                <br />
                                email:
                                <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" Text='<%# Bind("email") %>' />
                                <br />
                                jobDescription:
                                <asp:TextBox ID="jobDescriptionTextBox" runat="server" CssClass="form-control" Text='<%# Bind("jobDescription") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Id:
                                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                                <br />
                                dni:
                                <asp:TextBox ID="dniTextBox" runat="server" Text='<%# Bind("dni") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                lastName:
                                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                                <br />
                                age:
                                <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                                <br />
                                sex:
                                <asp:TextBox ID="sexTextBox" runat="server" Text='<%# Bind("sex") %>' />
                                <br />
                                address:
                                <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                                <br />
                                phone:
                                <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                                <br />
                                email:
                                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                <br />
                                jobDescription:
                                <asp:TextBox ID="jobDescriptionTextBox" runat="server" Text='<%# Bind("jobDescription") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                Id:
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                                <br />
                                dni:
                                <asp:Label ID="dniLabel" runat="server" Text='<%# Bind("dni") %>' />
                                <br />
                                name:
                                <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                lastName:
                                <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
                                <br />
                                age:
                                <asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
                                <br />
                                sex:
                                <asp:Label ID="sexLabel" runat="server" Text='<%# Bind("sex") %>' />
                                <br />
                                address:
                                <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                                <br />
                                phone:
                                <asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' />
                                <br />
                                email:
                                <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                <br />
                                jobDescription:
                                <asp:Label ID="jobDescriptionLabel" runat="server" Text='<%# Bind("jobDescription") %>' />
                                <br /><br />
                                <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="TenantDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [Tenant] WHERE [Id] = @original_Id AND [dni] = @original_dni AND [name] = @original_name AND [lastName] = @original_lastName AND [age] = @original_age AND [sex] = @original_sex AND [address] = @original_address AND [phone] = @original_phone AND [email] = @original_email AND [jobDescription] = @original_jobDescription" InsertCommand="INSERT INTO [Tenant] ([Id], [dni], [name], [lastName], [age], [sex], [address], [phone], [email], [jobDescription]) VALUES (@Id, @dni, @name, @lastName, @age, @sex, @address, @phone, @email, @jobDescription)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tenant]" UpdateCommand="UPDATE [Tenant] SET [dni] = @dni, [name] = @name, [lastName] = @lastName, [age] = @age, [sex] = @sex, [address] = @address, [phone] = @phone, [email] = @email, [jobDescription] = @jobDescription WHERE [Id] = @original_Id AND [dni] = @original_dni AND [name] = @original_name AND [lastName] = @original_lastName AND [age] = @original_age AND [sex] = @original_sex AND [address] = @original_address AND [phone] = @original_phone AND [email] = @original_email AND [jobDescription] = @original_jobDescription">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_dni" Type="Int32" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_lastName" Type="String" />
                                <asp:Parameter Name="original_age" Type="Int32" />
                                <asp:Parameter Name="original_sex" Type="String" />
                                <asp:Parameter Name="original_address" Type="String" />
                                <asp:Parameter Name="original_phone" Type="String" />
                                <asp:Parameter Name="original_email" Type="String" />
                                <asp:Parameter Name="original_jobDescription" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                                <asp:Parameter Name="dni" Type="Int32" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="lastName" Type="String" />
                                <asp:Parameter Name="age" Type="Int32" />
                                <asp:Parameter Name="sex" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="phone" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="jobDescription" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="dni" Type="Int32" />
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="lastName" Type="String" />
                                <asp:Parameter Name="age" Type="Int32" />
                                <asp:Parameter Name="sex" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="phone" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="jobDescription" Type="String" />
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_dni" Type="Int32" />
                                <asp:Parameter Name="original_name" Type="String" />
                                <asp:Parameter Name="original_lastName" Type="String" />
                                <asp:Parameter Name="original_age" Type="Int32" />
                                <asp:Parameter Name="original_sex" Type="String" />
                                <asp:Parameter Name="original_address" Type="String" />
                                <asp:Parameter Name="original_phone" Type="String" />
                                <asp:Parameter Name="original_email" Type="String" />
                                <asp:Parameter Name="original_jobDescription" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br /><br />
                        <h4><b>Tenant properties</b></h4>
                        <asp:GridView ID="GridView1" runat="server" CssClass="table" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="PropertiesDataSource">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="zipCode" HeaderText="zipCode" SortExpression="zipCode" />
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                <asp:BoundField DataField="isLocal" HeaderText="isLocal" SortExpression="isLocal" />
                                <asp:BoundField DataField="isApartment" HeaderText="isApartment" SortExpression="isApartment" />
                                <asp:BoundField DataField="isBuilding" HeaderText="isBuilding" SortExpression="isBuilding" />
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
                        <br />

                    </asp:View>
                </asp:MultiView>

            </div>
        </div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
