<%@ Page Title="گالری" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
.main{
float:left;
padding:0px;
margin:0px;
width:100%;
}
.imges{
float:left;
padding:0px;
margin:0px;
width:100%;
}
.numbers{
float:left;
margin:0px;
padding:0px;
margin-left:60px;
}
.ProductList Li
{
display :inline;
float:left;
margin-left:25px;
margin-bottom:25px;
}
    </style>
<div class="main">

<div class="imges">

<center><h3 style="font-size: xx-large">گالری</h3></center>

<asp:ListView ID="ListView1" runat="server">
<LayoutTemplate>
<ul class="ProductList">

<asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>

</ul>
</LayoutTemplate>
<ItemTemplate>

<center><li><asp:Image ID="Img1" ImageUrl='<%#Eval("Picpath")%>' runat="server"

Height="400px" Width="350px" /><br /><%#Eval("imagename")%></li></center>
</ItemTemplate>
<EmptyItemTemplate>
<div>
Sorry! No Item found found.

</div>
</EmptyItemTemplate>

</asp:ListView>

</div>

<div class="numbers">
<asp:DataPager ID="DataPager1" PageSize="6" PagedControlID="ListView1"
runat="server" onprerender="DataPager1_PreRender">
<Fields>
<asp:NumericPagerField />
</Fields>
</asp:DataPager>
</div>  
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

