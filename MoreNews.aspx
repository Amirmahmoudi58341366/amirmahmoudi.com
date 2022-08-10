<%@ Page Title="جزییات خبر" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MoreNews.aspx.cs" Inherits="MoreNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
       <asp:DataList ID="DataList2" runat="server" DataKeyField="news_id" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("news_title") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("news_postedby") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("news_datetime") %>'></asp:Label>
            <asp:Image ID="Image1" runat="server" Height="150px" ImageAlign="Right" 
                ImageUrl='<%# Eval("news_img","~/Upload/{0}") %>' Width="150px" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("news_details") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [news_postedby], [news_details], [news_img], [news_datetime], [cat_id], [news_description], [news_title], [news_id] FROM [news_master] WHERE ([news_id] = @news_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="news_id" QueryStringField="id" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class="smart-wrap">
        <div class="smart-forms smart-container wrap-3">
            <div class="form-header header-blue">
                <h4><i class="fa fa-comments"></i> Please comment </h4>
            </div><!-- end .form-header section -->
            <div class="form-body theme-blue">
                <div class="section">
                        <label class="field prepend-icon">
                            <asp:TextBox ID="txtTitle" runat="server" class="gui-input" placeholder="Enter Title..."></asp:TextBox>
                            <span class="field-icon"><i class="fa fa-title"></i></span>
                        </label>
                </div><!-- end section -->
                <div class="section">
                        <label class="field prepend-icon">
                            <asp:TextBox ID="txtName" runat="server" class="gui-input" placeholder="Enter name..."></asp:TextBox>
                            <span class="field-icon"><i class="fa fa-user"></i></span>
                        </label>
                </div><!-- end section -->
                <div class="section">
                        <label class="field prepend-icon">
                            <asp:TextBox ID="txtEmail" runat="server" class="gui-input" placeholder="Enter Email..."></asp:TextBox>
                            <span class="field-icon"><i class="fa fa-envelope"></i></span>
                        </label>
                    </div><!-- end section -->
                <div class="section">
                        <label class="field prepend-icon">
                            <asp:TextBox ID="txtWebsite" runat="server" CssClass="gui-input" placeholder="Website url (optional)..."></asp:TextBox>
                            <span class="field-icon"><i class="fa fa-globe"></i></span>
                        </label>
                    </div><!-- end section -->
                <div class="section">
                        <label class="field prepend-icon">
                            <asp:TextBox id="txtComment" runat="server" class="gui-textarea" placeholder="Enter message..." TextMode="MultiLine"></asp:TextBox>
                            <span class="field-icon"><i class="fa fa-comments"></i></span>
                            <span class="input-hint">
                                <strong>USE HTML TAGS:</strong>
                                &lt;blockquote&gt;, &lt;strong&gt;&lt;a&gt;, &lt;b&gt;, &lt;ul&gt;, &lt;li&gt;, &lt;code&gt;
                            </span>
                        </label>
                    </div><!-- end section -->
                <div class="form-footer">
                    <asp:Button ID="btn_submit" Text="Post Comment" runat="server" CssClass="button btn-blue" OnClick="btn_submit_Click" />
                </div>
                <br />
                <!-- end .form-footer section -->
                <br />
            <div style="overflow: hidden;">
            </div>
            </div>
</div>
    </div>
</asp:Content>