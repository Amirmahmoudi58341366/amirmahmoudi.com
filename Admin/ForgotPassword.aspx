<%@ Page Title="بازیابی رمز عبور" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="Admin_ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default" style="margin-top:30px">
                    <div class="panel-heading" style="background-color:cornflowerblue;margin-top:5px">
                        <h3 class="panel-title" style="color:white;font-weight:bold"><img src="images/key.jpg"/><span style="margin-left:5px">Retrieve Password</span></h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="EmailField">Enter Email Id</label>
                            <div class="input-group">
                                <span class="input-group-addon">@</span>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </div>
                        <div>
                            <asp:Button ID="Submitbtn" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="Submitbtn_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

