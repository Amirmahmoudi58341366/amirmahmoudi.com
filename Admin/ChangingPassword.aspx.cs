using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ChangingPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnChange_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("Select Password From Login where Password='" + OldPassword.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count.ToString() == "1")
        {
            if (NewPassword.Text == ConPassword.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Update Login Set Password='" + ConPassword.Text + "' where Password='" + OldPassword.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Successfully Updated.');window.location='Login.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('New Password and Confrim Password should be same!');window.location='ChangingPassword.aspx';", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please Check your old Password!.');window.location='ChangingPassword.aspx';", true);
        }
    }
}