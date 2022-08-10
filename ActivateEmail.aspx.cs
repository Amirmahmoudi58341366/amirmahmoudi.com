using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ActivateEmail : System.Web.UI.Page
{
    static string activationcode;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "Your Email is" + Request.QueryString["emailadd"].ToString() + ", Kindly Check Your Mail Inbox For Activation Code";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String myquery = "Select * from EmailDetails where emailaddress='" + Request.QueryString["emailadd"] + "'";
        String mycon = "Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
            if (activationcode == txtEmail.Text)
            {
                changestatus();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Your Email Has Been Verified Successfully.');window.location='Login.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('You Have Entered Invalid Activation Code,Check Your Mail Inbox');window.location='ActivateEmail.aspx';", true);
            }
        }
    }
    private void changestatus()
    {
        String mycon = "Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True";
        String updatedata = "Update EmailDetails set status='Verified' where emailaddress='" + Request.QueryString["emailadd"] + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
}