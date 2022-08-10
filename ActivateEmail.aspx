<%@ Page Title="کد تایید فعال سازی" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ActivateEmail.aspx.cs" Inherits="ActivateEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class="container">
       <div class="row">
           <div class="col-md-4">
           </div>
           <div class="col-md-4">
               <div class="well" style="box-shadow:3px 2px 5px #555; margin-top:50px">
                   <div class="page-header text-center">
                       <h3><i class="glyphicon glyphicon-user"></i>
                          Your Activation Code</h3>
                                          <div class="form-group">
                           <div class="input-group">
                               <div class="input-group-addon">
                                   <i class="glyphicon glyphicon-envelope"></i>
                               </div>
                               <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"></asp:TextBox>
                           </div>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                       <br />
                       <br />
                                              <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Verify Email" OnClick="Button1_Click" />
                       </div>
                       </div>
                   </div>
               </div>
           </div>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

