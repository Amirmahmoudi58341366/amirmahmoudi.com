<%@ Page Title="آپلود خبر" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="Admin_AddNews" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:scriptmanager id="ScriptManager1" runat="server"></asp:scriptmanager>
        <table>
        <tr>
            <td align="center" colspan="2" style="background-color: black">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="White" Text="News Master"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server"></asp:Label></td>
        </tr>
    <tr>
    <td>
        <asp:Label ID="lblCategory" runat="server" Text="Category"></asp:Label></td>
    <td>
        <asp:DropDownList ID="drpdwnlstCategoryMaster" runat="server" DataSourceID="SqlDataSourceCategoryMaster" DataTextField="cat_title" DataValueField="cat_id">
        </asp:DropDownList><asp:SqlDataSource ID="SqlDataSourceCategoryMaster" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cat_id], [cat_title] FROM [category_master]">
        </asp:SqlDataSource>
    </td>
    </tr>
        <tr>
    <td>
        <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtNewsTitle" runat="server" Width="450px" Font-Names="B Nazanin"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Title can not be Empty" ControlToValidate="txtNewsTitle"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblPostedBy" runat="server" Text="Posted By"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtPostedBy" runat="server" Width="450px" Font-Names="B Nazanin"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Posted By can not be Empty" ControlToValidate="txtPostedBy"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label4" runat="server" Text="Date Time"></asp:Label></td>
    <td>
        <asp:Label ID="lblNewsDateTime" runat="server"></asp:Label></td>
    </tr>
    <tr>
    <td style="height: 21px" valign="top">
        <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label></td>
    <td style="height: 21px">
        <FTB:FreeTextBox ID="txtDescription" runat="server" Width="450px"></FTB:FreeTextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Description can not be Empty" ControlToValidate="txtDescription"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td valign="top">
        <asp:Label ID="Label6" runat="server" Text="Details"></asp:Label></td>
    <td>
        <FTB:FreeTextBox ID="txtDetails" runat="server" Width="450PX"></FTB:FreeTextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Details can not be Empty" ControlToValidate="txtDetails"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td style="height: 21px">
        <asp:Label ID="Label7" runat="server" Text="Image"></asp:Label></td>
    <td style="height: 21px">
        <asp:FileUpload ID="fuNewsImage" runat="server" /></td>
    </tr>
    <tr>
    <td colspan="2">
        <asp:Button ID="btnAddNews" runat="server" Text="Add News" OnClick="btnAddNews_Click" />
    </td>
    </tr>
    </table>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="news_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="Linkbtndelete" runat="server" OnClick="Linkbtndelete_Click">Delete</asp:LinkButton>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="news_id" HeaderText="news_id" InsertVisible="False" ReadOnly="True" SortExpression="news_id" />
                <asp:BoundField DataField="news_title" HeaderText="news_title" SortExpression="news_title" />
                <asp:BoundField DataField="news_description" HeaderText="news_description" SortExpression="news_description" />
                <asp:BoundField DataField="news_postedby" HeaderText="news_postedby" SortExpression="news_postedby" />
                <asp:BoundField DataField="news_details" HeaderText="news_details" SortExpression="news_details" />
                <asp:BoundField DataField="news_img" HeaderText="news_img" SortExpression="news_img" />
                <asp:BoundField DataField="news_datetime" HeaderText="news_datetime" SortExpression="news_datetime" />
                <asp:BoundField DataField="cat_id" HeaderText="cat_id" SortExpression="cat_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [news_id], [news_title], [news_description], [news_postedby], [news_details], [news_img], [news_datetime], [cat_id] FROM [news_master]"></asp:SqlDataSource>
    </div>
</asp:Content>