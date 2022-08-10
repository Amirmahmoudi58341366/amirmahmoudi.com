<%@ Page Title="گروه خبری" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="cat_id"
            DataSourceID="SqlDataSourceCategory_Master" CellPadding="4" ForeColor="#333333" HeaderText="Category Master">
            <EditItemTemplate>
            <table>
            <tr>
            <td>Category Id:</td>
            <td><asp:Label ID="cat_idLabel1" runat="server" Text='<%# Eval("cat_id") %>'></asp:Label></td>
            </tr>
            <tr>
            <td>Category Title:</td>
            <td><asp:TextBox ID="cat_titleTextBox" runat="server" Text='<%# Bind("cat_title") %>'></asp:TextBox></td>
            </tr>
            <tr>
            <td>Category Description:</td>
            <td><asp:TextBox ID="cat_descriptionTextBox" runat="server" Text='<%# Bind("cat_description") %>'></asp:TextBox></td>
            </tr>
            <tr>
            <td colspan="2">
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update"></asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton>
            </td>
            </tr>
            </table>
            </EditItemTemplate>
            <InsertItemTemplate>
            <table>
            <tr>
            <td>Category Title:</td>
            <td><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cat_title") %>'></asp:TextBox></td>
            </tr>
            <tr>
            <td>Category Description:</td>
            <td><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("cat_description") %>'></asp:TextBox></td>
            </tr>
            <tr>
            <td colspan="2">                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert"></asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel"></asp:LinkButton></td>
            </tr>
            </table>
            </InsertItemTemplate>
            <ItemTemplate>
            <table>
            <tr>
            <td>Category Id:</td>
            <td><asp:Label ID="cat_idLabel" runat="server" Text='<%# Eval("cat_id") %>'></asp:Label></td>
            </tr>
            <tr>
            <td>Category Title:</td>
            <td><asp:Label ID="cat_titleLabel" runat="server" Text='<%# Bind("cat_title") %>'></asp:Label></td>
            </tr>
            <tr>
            <td>Category Description:</td>
            <td><asp:Label ID="cat_descriptionLabel" runat="server" Text='<%# Bind("cat_description") %>'></asp:Label></td>
            </tr>
            <tr>
            <td colspan="2">
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                    Text="Edit"></asp:LinkButton>
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                    Text="Delete"></asp:LinkButton>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                    Text="New"></asp:LinkButton>
            </td>
            </tr>
            </table>
            </ItemTemplate>
            <EmptyDataTemplate>
                Sorry!! No Category Exists..<br />
                You may add
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New"
                    Text="New"></asp:LinkButton>
                Category.
            </EmptyDataTemplate>
            <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NextPreviousFirstLast"
                NextPageText="Next" PreviousPageText="Previous" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSourceCategory_Master" runat="server" ConflictDetection="CompareAllValues"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [category_master] WHERE [cat_id] = @original_cat_id AND [cat_title] = @original_cat_title AND [cat_description] = @original_cat_description"
            InsertCommand="INSERT INTO [category_master] ([cat_title], [cat_description]) VALUES (@cat_title, @cat_description)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [category_master]"
            UpdateCommand="UPDATE [category_master] SET [cat_title] = @cat_title, [cat_description] = @cat_description WHERE [cat_id] = @original_cat_id AND [cat_title] = @original_cat_title AND [cat_description] = @original_cat_description">
            <DeleteParameters>
                <asp:Parameter Name="original_cat_id" Type="Decimal" />
                <asp:Parameter Name="original_cat_title" Type="String" />
                <asp:Parameter Name="original_cat_description" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="cat_title" Type="String" />
                <asp:Parameter Name="cat_description" Type="String" />
                <asp:Parameter Name="original_cat_id" Type="Decimal" />
                <asp:Parameter Name="original_cat_title" Type="String" />
                <asp:Parameter Name="original_cat_description" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="cat_title" Type="String" />
                <asp:Parameter Name="cat_description" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

