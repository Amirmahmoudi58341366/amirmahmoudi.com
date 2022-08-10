<%@ Page Title="تماس با ما" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
                <div class="contact-parent">
                    <div class="contact-child child1">
                        <p>
                            <i class="fas fa-map-marker-alt"></i> Address <br />
                            <span>Azimiyeh
                                <br />
                                Karaj,IR
                            </span>
                        </p>

                        <p>
                            <i class="fas fa-phone-alt"></i> Let's Talk <br />
                            <span>02632526362</span>
                        </p>

                        <p>
                            <i class="far fa-envelope"></i> General Support <br />
                            <span>amir.mahmoudi5834@gmail.com</span>
                        </p>
                    </div>

                    <div class="contact-child child2">
                        <div class="inside-contact">
                            <h2>Contact Us</h2>
                            <h3>
                                <asp:Label ID="confirm" runat="server" Text="Lable"></asp:Label>
                            </h3>

                            <p>Name *</p>
                            <asp:TextBox ID="txt_name" runat="server" Reqired="required"></asp:TextBox>

                            <p>Email *</p>
                            <asp:TextBox ID="txt_email" runat="server" Reqired="required"></asp:TextBox>

                            <p>Phone *</p>
                            <asp:TextBox ID="txt_phone" runat="server" Reqired="required"></asp:TextBox>

                            <p>Subject *</p>
                            <asp:TextBox ID="txt_subject" runat="server" Reqired="required"></asp:TextBox>

                            <p>Message *</p>
                            <asp:TextBox ID="txt_message" runat="server" Reqired="required" TextMode="MultiLine" Rows="4"></asp:TextBox>

                            <asp:Button ID="btn_send" runat="server" Text="SEND" OnClick="btn_send_Click" />
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

