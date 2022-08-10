<%@ Page Title="ثبت نام کاربر" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
                           Registration</h3>
                       <div class="form-group">
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-user"></i>
                               </div>
                               <asp:TextBox ID="txtFullname" runat="server" CssClass="form-control" placeholder="Enter Full Name"></asp:TextBox>
                           </div>
                       </div>
                       <div class="form-group">
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-phone"></i>
                               </div>
                               <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter Mobile"></asp:TextBox>
                           </div>
                       </div>
                   
                   <div class="form-group">
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-home"></i>
                               </div>
                               <asp:TextBox ID="txtHome" runat="server" CssClass="form-control" placeholder="Enter Address"></asp:TextBox>
                           </div>
                       </div>
                   <div class="form-group">
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-earphone"></i>
                               </div>
                               <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter Phone"></asp:TextBox>
                           </div>
                       </div>
                          <div class="form-group">
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-envelope"></i>
                               </div>
                               <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                           </div>
                       </div>
                       <div class="form-group">
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-lock"></i>
                               </div>
                               <asp:TextBox  ID="txtPassword" runat="server" CssClass="form-control"  TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                           </div>
                       </div>
               </div>
                   <div class="form-group text-right">
                       <a class="btn btn-danger" href="Login.aspx"><i class="glyphicon glyphicon-lock"></i>&nbsp;Login</a>
             <asp:Button ID="Submit" runat="server" CssClass="btn btn-success" OnClick="Submit_Click" Text="Submit" /><i class="glyphicon glyphicon-log-in"></i>&nbsp;</div>
           </div>
         </div>
           <div class="col-md-4"></div>
       </div>
       </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

