<%@ Page Title="مدیریت پیام های کاربران" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Comment.aspx.cs" Inherits="Admin_Comment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="news_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="Linkbtndelete" runat="server" OnClick="Linkbtndelete_Click">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="news_id" HeaderText="news_id" InsertVisible="False" ReadOnly="True" SortExpression="news_id" />
                <asp:BoundField DataField="news_title" HeaderText="news_title" SortExpression="news_title" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Website" HeaderText="Website" SortExpression="Website" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [news_id], [news_title], [Name], [Email], [Website], [Comment] FROM [Comment]"></asp:SqlDataSource>
        </div>
</asp:Content>