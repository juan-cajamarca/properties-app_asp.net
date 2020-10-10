<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministratorPanel.aspx.cs" Inherits="PropertiesApp.AdministratorPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator Panel</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Administrator Panel</h3>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="/ManageStaff">Manage staff</asp:HyperLink>
            <br /><br />
            <h5>Properties</h5>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/ManageProperties">Manage properties</asp:HyperLink>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="PropertiesListDataSource">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="zipCodeLabel" runat="server" Text='<%# Eval("zipCode") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isLocalLabel" runat="server" Text='<%# Eval("isLocal") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isApartmentLabel" runat="server" Text='<%# Eval("isApartment") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isBuildingLabel" runat="server" Text='<%# Eval("isBuilding") %>' />
                        </td>
                        <td>
                            <asp:Label ID="floorLabel" runat="server" Text='<%# Eval("floor") %>' />
                        </td>
                        <td>
                            <asp:Label ID="numberLabel" runat="server" Text='<%# Eval("number") %>' />
                        </td>
                        <td>
                            <asp:Label ID="additionalInfoLabel" runat="server" Text='<%# Eval("additionalInfo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="propertyParentIdLabel" runat="server" Text='<%# Eval("propertyParentId") %>' />
                        </td>
                        <td>
                            <a href="/PropertyDetails?propertyId=<%# Eval("Id")%>">Details</a>
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
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="zipCodeTextBox" runat="server" Text='<%# Bind("zipCode") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isLocalTextBox" runat="server" Text='<%# Bind("isLocal") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isApartmentTextBox" runat="server" Text='<%# Bind("isApartment") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isBuildingTextBox" runat="server" Text='<%# Bind("isBuilding") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="floorTextBox" runat="server" Text='<%# Bind("floor") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="numberTextBox" runat="server" Text='<%# Bind("number") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="additionalInfoTextBox" runat="server" Text='<%# Bind("additionalInfo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="propertyParentIdTextBox" runat="server" Text='<%# Bind("propertyParentId") %>' />
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
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="zipCodeTextBox" runat="server" Text='<%# Bind("zipCode") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isLocalTextBox" runat="server" Text='<%# Bind("isLocal") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isApartmentTextBox" runat="server" Text='<%# Bind("isApartment") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="isBuildingTextBox" runat="server" Text='<%# Bind("isBuilding") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="floorTextBox" runat="server" Text='<%# Bind("floor") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="numberTextBox" runat="server" Text='<%# Bind("number") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="additionalInfoTextBox" runat="server" Text='<%# Bind("additionalInfo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="tenantIdTextBox" runat="server" Text='<%# Bind("tenantId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="propertyParentIdTextBox" runat="server" Text='<%# Bind("propertyParentId") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="zipCodeLabel" runat="server" Text='<%# Eval("zipCode") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isLocalLabel" runat="server" Text='<%# Eval("isLocal") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isApartmentLabel" runat="server" Text='<%# Eval("isApartment") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isBuildingLabel" runat="server" Text='<%# Eval("isBuilding") %>' />
                        </td>
                        <td>
                            <asp:Label ID="floorLabel" runat="server" Text='<%# Eval("floor") %>' />
                        </td>
                        <td>
                            <asp:Label ID="numberLabel" runat="server" Text='<%# Eval("number") %>' />
                        </td>
                        <td>
                            <asp:Label ID="additionalInfoLabel" runat="server" Text='<%# Eval("additionalInfo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="propertyParentIdLabel" runat="server" Text='<%# Eval("propertyParentId") %>' />
                        </td>
                        <td>
                            <a href="/PropertyDetails?propertyId=<%# Eval("Id") %>">Details</a>
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">Id</th>
                                        <th runat="server">name</th>
                                        <th runat="server">address</th>
                                        <th runat="server">zipCode</th>
                                        <th runat="server">phone</th>
                                        <th runat="server">isLocal</th>
                                        <th runat="server">isApartment</th>
                                        <th runat="server">isBuilding</th>
                                        <th runat="server">floor</th>
                                        <th runat="server">number</th>
                                        <th runat="server">additionalInfo</th>
                                        <th runat="server">tenantId</th>
                                        <th runat="server">propertyParentId</th>
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
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="zipCodeLabel" runat="server" Text='<%# Eval("zipCode") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isLocalLabel" runat="server" Text='<%# Eval("isLocal") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isApartmentLabel" runat="server" Text='<%# Eval("isApartment") %>' />
                        </td>
                        <td>
                            <asp:Label ID="isBuildingLabel" runat="server" Text='<%# Eval("isBuilding") %>' />
                        </td>
                        <td>
                            <asp:Label ID="floorLabel" runat="server" Text='<%# Eval("floor") %>' />
                        </td>
                        <td>
                            <asp:Label ID="numberLabel" runat="server" Text='<%# Eval("number") %>' />
                        </td>
                        <td>
                            <asp:Label ID="additionalInfoLabel" runat="server" Text='<%# Eval("additionalInfo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="tenantIdLabel" runat="server" Text='<%# Eval("tenantId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="propertyParentIdLabel" runat="server" Text='<%# Eval("propertyParentId") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="PropertiesListDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" SelectCommand="SELECT * FROM [Property]"></asp:SqlDataSource>
            <br />
            <br />
            <h5>Tenants</h5>
            <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="TenantsDataSource">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dniLabel" runat="server" Text='<%# Eval("dni") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="sexLabel" runat="server" Text='<%# Eval("sex") %>' />
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="jobDescriptionLabel" runat="server" Text='<%# Eval("jobDescription") %>' />
                        </td>
                        <td>
                            <a href="/TenantDetails?tenantId=<%# Eval("Id") %>">Details</a>
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
                            <asp:TextBox ID="dniTextBox" runat="server" Text='<%# Bind("dni") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="sexTextBox" runat="server" Text='<%# Bind("sex") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="jobDescriptionTextBox" runat="server" Text='<%# Bind("jobDescription") %>' />
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
                            <asp:TextBox ID="dniTextBox" runat="server" Text='<%# Bind("dni") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="sexTextBox" runat="server" Text='<%# Bind("sex") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="jobDescriptionTextBox" runat="server" Text='<%# Bind("jobDescription") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dniLabel" runat="server" Text='<%# Eval("dni") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="sexLabel" runat="server" Text='<%# Eval("sex") %>' />
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="jobDescriptionLabel" runat="server" Text='<%# Eval("jobDescription") %>' />
                        </td>
                        <td>
                            <a href="/TenantDetails?tenantId=<%# Eval("Id") %>">Details</a>
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server">Id</th>
                                        <th runat="server">dni</th>
                                        <th runat="server">name</th>
                                        <th runat="server">lastName</th>
                                        <th runat="server">age</th>
                                        <th runat="server">sex</th>
                                        <th runat="server">address</th>
                                        <th runat="server">phone</th>
                                        <th runat="server">email</th>
                                        <th runat="server">jobDescription</th>
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
                            <asp:Label ID="dniLabel" runat="server" Text='<%# Eval("dni") %>' />
                        </td>
                        <td>
                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="sexLabel" runat="server" Text='<%# Eval("sex") %>' />
                        </td>
                        <td>
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="jobDescriptionLabel" runat="server" Text='<%# Eval("jobDescription") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="TenantsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" SelectCommand="SELECT * FROM [Tenant]"></asp:SqlDataSource>
            <br /><br />

            <h5>Bills</h5>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="/ManageBills">ManageBills</asp:HyperLink>
            <asp:ListView ID="ListView3" runat="server" DataKeyNames="Id" DataSourceID="BillsDataSource">
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
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
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
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="BillsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" SelectCommand="SELECT * FROM [Bill]"></asp:SqlDataSource>
            <br /><br />
            <h5>Banking movements</h5>
            <asp:ListView ID="ListView4" runat="server" DataKeyNames="Id" DataSourceID="BankingMovementsDataSource">
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
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
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
        </div>
    </form>
</body>
</html>
