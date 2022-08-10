<%@ Page Title="اخبار" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsTitle.aspx.cs" Inherits="NewsTitle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Top" 
                ImageUrl='<%# Eval("news_img","~/Upload/{0}") %>' Width="150px" />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("news_title") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("news_description") %>'></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl='<%# Eval("news_id","MoreNews.aspx?id={0}") %>'>MORE.......</asp:HyperLink>
            <br />
            <br />
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [news_id],[news_img], [news_title], [news_description] FROM [news_master]"></asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>