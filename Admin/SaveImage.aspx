<%@ Page Title="آپلود گالری" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SaveImage.aspx.cs" Inherits="Admin_SaveImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:FileUpload ID="Picupload" runat="server" />
        <br />
        ImageName :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="imagename" runat="server"></asp:TextBox>
        <br />
        ImageDescription :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="imagedescription" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Submitbtn" runat="server" Text="Submit" OnClick="Submitbtn_Click" />
        <br />
        <asp:Label ID="Message" runat="server" style="color:red;"></asp:Label>
        <br />
        <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="picid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="Linkbtndelete" runat="server" OnClick="Linkbtndelete_Click">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="picid" HeaderText="picid" SortExpression="picid" />
                <asp:BoundField DataField="picpath" HeaderText="picpath" SortExpression="picpath" />
                <asp:BoundField DataField="imagename" HeaderText="imagename" SortExpression="imagename" />
                <asp:BoundField DataField="imagedescription" HeaderText="imagedescription" SortExpression="imagedescription" />
                <asp:CommandField />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [picid], [picpath], [imagename], [imagedescription] FROM [imagesave]"></asp:SqlDataSource>
        </center>
    </div>
</asp:Content>

