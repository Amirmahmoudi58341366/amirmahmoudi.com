using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void FunClear()
    {
        txtFullname.Text = "";
        txtMobile.Text = "";
        txtHome.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";
        txtPassword.Text = "";
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        con.Open();
        SqlCommand cmd = new SqlCommand("CheckUserAvailability", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        cmd.ExecuteNonQuery();
        sda.Fill(dt);
        if (dt.Rows.Count >= 1)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Record is already exist.');window.location='Registration.aspx';", true);
            con.Close();
            FunClear();
        }
        else
        {
            //SqlCommand cmd = new SqlCommand("SP_InsertRecored", con);
            cmd.Parameters.Clear();
            cmd.CommandText = "SP_InsertRecored";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Fullname", txtFullname.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
            cmd.Parameters.AddWithValue("@Home", txtHome.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            int res = cmd.ExecuteNonQuery();
            if (res != 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Recored inserted successfully');window.location='ActivationCode.aspx';", true);
                FunClear();
            }
            con.Close();
        }
    }
}