<%@ Page Title="آپلود فیلم آموزشی" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UploadVideo.aspx.cs" Inherits="Admin_UploadVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 187px;
        }
        .auto-style4 {
            width: 225px;
        }
        .auto-style5 {
            width: 187px;
            height: 38px;
        }
        .auto-style6 {
            width: 225px;
            height: 38px;
        }
        .auto-style7 {
            width: 187px;
            height: 41px;
        }
        .auto-style8 {
            width: 225px;
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Didgahe Rayaneh Sama" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Upload Video and Save into Database for Video Gallery in Asp.Net" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <table>
        <tr>
            <td class="auto-style5">Your Video Title</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Upload Video (mp4 Format)</td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" Height="25px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Height="34px" Text="Upload Video" Width="88px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
    <br />
    <br />
    <center><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="videoid" HeaderText="videoid" SortExpression="videoid" />
            <asp:BoundField DataField="videoname" HeaderText="videoname" SortExpression="videoname" />
            <asp:TemplateField HeaderText="videolink" SortExpression="videolink">
                <ItemTemplate>
                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("videolink") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView></center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [videodetails]"></asp:SqlDataSource>
</asp:Content>