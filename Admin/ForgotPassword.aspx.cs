using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;

public partial class Admin_ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submitbtn_Click(object sender, EventArgs e)
    {
        try
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Login where Email='" + txtEmail.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                dr.Read();
                string email = dr["Email"].ToString();
                string pw = dr["Password"].ToString();
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("Email:-" + email);
                sb.AppendLine("Password:-" + pw);
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("amir.mahmoudi5834@gmail.com", "rmjupeklmturpjih");
                MailMessage msg = new MailMessage();
                msg.To.Add(txtEmail.Text);
                msg.From = new MailAddress("UserName..<amir.mahmoudi5834@gmail.com>");
                msg.Subject = "Your Password";
                msg.Body = sb.ToString();
                client.Send(msg);
                lblmsg.Text = "Your Password has been sent to Registration Email";
            }
            else
            {
                lblmsg.Text = "Invalid Email";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Error:" + ex.Message.ToString();
        }
    }
}