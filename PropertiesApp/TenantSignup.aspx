<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TenantSignup.aspx.cs" Inherits="PropertiesApp.TenantSignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tenant signup</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Tenant signup</h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/Home">&lt; Home</asp:HyperLink>
            <br /><br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="TenantsDataSource">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Signup" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Signup" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="TenantsDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PropertiesConnection %>" DeleteCommand="DELETE FROM [Tenant] WHERE [Id] = @original_Id AND [dni] = @original_dni AND [name] = @original_name AND [lastName] = @original_lastName AND [age] = @original_age AND [sex] = @original_sex AND [address] = @original_address AND [phone] = @original_phone AND [email] = @original_email AND [jobDescription] = @original_jobDescription" InsertCommand="INSERT INTO [Tenant] ([dni], [name], [lastName], [age], [sex], [address], [phone], [email], [jobDescription]) VALUES (@dni, @name, @lastName, @age, @sex, @address, @phone, @email, @jobDescription)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tenant]" UpdateCommand="UPDATE [Tenant] SET [dni] = @dni, [name] = @name, [lastName] = @lastName, [age] = @age, [sex] = @sex, [address] = @address, [phone] = @phone, [email] = @email, [jobDescription] = @jobDescription WHERE [Id] = @original_Id AND [dni] = @original_dni AND [name] = @original_name AND [lastName] = @original_lastName AND [age] = @original_age AND [sex] = @original_sex AND [address] = @original_address AND [phone] = @original_phone AND [email] = @original_email AND [jobDescription] = @original_jobDescription">
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
            <br />

        </div>
    </form>
</body>
</html>
