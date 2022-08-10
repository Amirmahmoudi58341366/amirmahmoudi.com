<%@ Page Title="تغییر رمز عبور" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangingPassword.aspx.cs" Inherits="ChangingPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
       <div class="row">
           <div class="col-md-4"></div>
           <div class="col-md-4">
               <div class="well" style="box-shadow:3px 2px 5px #555; margin-top:50px">
                   <div class="page-header text-center">
                       <h3><i class="glyphicon glyphicon-user"></i>
                           Changing Password</h3>
                       <div class="form-group">
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-lock"></i>
                               </div>
                               <asp:TextBox  ID="OldPassword" runat="server" CssClass="form-control"  TextMode="Password" placeholder="Enter Old Password"></asp:TextBox>
                           </div>
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-lock"></i>
                               </div>
                               <asp:TextBox  ID="NewPassword" runat="server" CssClass="form-control"  TextMode="Password" placeholder="Enter New Password"></asp:TextBox>
                           </div>
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-lock"></i>
                               </div>
                               <asp:TextBox ID="ConPassword" runat="server" CssClass="form-control"  TextMode="Password" placeholder="Enter Confrim Password"></asp:TextBox>
                           </div>
                           <br />
                           <br />
                           <asp:Button ID="btnChange" CssClass="btn btn-success" runat="server" OnClick="btnChange_Click" Text="Update" /> 
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

