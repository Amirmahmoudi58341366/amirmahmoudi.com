<%@ Page Title="فرم ورود" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
        <div align="center" class="container jumbotron bg-light boxshadow" style="width:49%; height: 411px;">
            <form>
                <div class="card-header-pills bg-dark text-white">
                    <h2>Login Page</h2>
                </div>
                <div class="form-group" style="width:80%">
                    <label class="text-dark" for="emailLabel">Email Address</label>
                          <div class="form-group">
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-envelope"></i>
                               </div>
                               <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                           </div>
                       </div>
                </div>
                <div class="form-group">
                    <label class="text-dark" for="passLabel">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" Width="80%"></asp:TextBox>
                </div>
                <div class="form-group form-check">
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="passLabel">Remember me?</label>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Button1_Click" />
                <div>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-link" PostBackUrl="~/ForgotPassword.aspx">Forget Password</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-link" PostBackUrl="~/Admin/ChangingPassword.aspx">ChangingPassword</asp:LinkButton>
                </div>
            </form>
        </div>
</asp:Content>

