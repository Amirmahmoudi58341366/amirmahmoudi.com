using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MoreNews : System.Web.UI.Page
{
    private string Connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Comment(news_title,Name,Email,Website,Comment) values(@news_title,@Name,@Email,@Website,@Comment)", con);
        cmd.Parameters.AddWithValue("@news_title", txtTitle.Text);
        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Website", txtWebsite.Text);
        cmd.Parameters.AddWithValue("@Comment", txtComment.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        //Displaying Javascript alert Comment Posted Successfully
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Comment Posted Successfully.');window.location='default.aspx';", true);
    }
}