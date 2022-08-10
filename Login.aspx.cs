using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string strSelect = "Select COUNT(*) From Registration Where Email=@Email And Password=@Password";
        SqlConnection con = new SqlConnection(strCon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strSelect;
        SqlParameter username = new SqlParameter("@Email", SqlDbType.NVarChar, 100);
        username.Value = txtEmail.Text.Trim().ToString();
        cmd.Parameters.Add(username);
        SqlParameter password = new SqlParameter("Password", SqlDbType.NVarChar, 100);
        password.Value = txtPassword.Text.Trim().ToString();
        cmd.Parameters.Add(password);
        con.Open();
        int result = (Int32)cmd.ExecuteScalar();
        con.Close();
        if (result >= 1)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Login Successfully.');window.location='default.aspx';", true);
        }
    }
}