using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_SaveImage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submitbtn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True");
        Picupload.SaveAs(Server.MapPath("~/Upload/" + imagename.Text + "_" + imagedescription.Text + ".jpg"));
        string picpath = "Upload/" + imagename.Text + "_" + imagedescription.Text + ".jpg";
        string query = "insert into imagesave values('" + picpath.ToString() + "','" + imagename.Text + "','" + imagedescription.Text + "')";
        SqlCommand cmd = new SqlCommand(query, con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Message.Text = "Record insert successfully";
        }
        catch (Exception ex)
        {
            Message.Text = "Getting error :" + ex.ToString() + "";
        }
    }

    protected void Linkbtndelete_Click(object sender, EventArgs e)
    {
        int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        int picid = Convert.ToInt32(GridView1.Rows[rowindex].Cells[1].Text);
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete imagesave where picid='" + picid + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
    }
}