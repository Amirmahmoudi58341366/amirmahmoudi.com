using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        var from = "youremail@gmail.com";
        var to = "amir.mahmoudi5834@gmail.com";
        const string Password = "rmjupeklmturpjih";
        string mail_subject = txt_subject.Text.ToString();
        string mail_message = "From: " + txt_name.Text + "\n";
        mail_message += "Email: " + txt_email.Text + "\n";
        mail_message += "Phone: " + txt_phone.Text + "\n";
        mail_message += "Subject: " + txt_subject.Text + "\n";
        mail_message += "Message: " + txt_message.Text + "\n";
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.Credentials = new NetworkCredential(to, Password);
        smtp.Timeout = 20000;
        smtp.Send(from, to, mail_subject, mail_message);
        confirm.Text = "Thank you for your email";
        txt_name.Text = "";
        txt_email.Text = "";
        txt_phone.Text = "";
        txt_subject.Text = "";
        txt_message.Text = "";
    }
}