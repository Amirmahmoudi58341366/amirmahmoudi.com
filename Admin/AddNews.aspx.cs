using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_AddNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblNewsDateTime.Text = DateTime.Now.ToString();
    }

    protected void btnAddNews_Click(object sender, EventArgs e)
    {
        SqlConnection cn;
        SqlCommand cmd;
        string cnstr;
        string cmdstr;
        string newsimgpath;
        string newsfile;
        cnstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        cn = new SqlConnection(cnstr);
        cn.Open();
        if (fuNewsImage.HasFile)
        {
            newsimgpath = Server.MapPath("../Upload/") + fuNewsImage.FileName;
            fuNewsImage.SaveAs(newsimgpath);
            newsfile = fuNewsImage.FileName;
        }
        else
        {
            newsfile = "newsmaster.jpg";
        }
        cmdstr = "insert into news_master (news_title,news_description,news_postedby,news_details,news_img,news_datetime,cat_id) values ('" + txtNewsTitle.Text.Replace("'", "''") + "','" + txtDescription.Text.Replace("'", "''") + "','" + txtPostedBy.Text.Replace("'", "''") + "','" + txtDetails.Text.Replace("'", "''") + "','" + newsfile + "','" + lblNewsDateTime.Text + "'," + int.Parse(drpdwnlstCategoryMaster.SelectedValue) + ")";
        cmd = new SqlCommand(cmdstr, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        txtNewsTitle.Text = "";
        txtDescription.Text = "";
        txtDetails.Text = "";
        txtPostedBy.Text = "";
        lblMessage.Text = "Record Inserted Successfully...";
        txtNewsTitle.Focus();
    }
    protected void Linkbtndelete_Click(object sender, EventArgs e)
    {
        int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        int news_id = Convert.ToInt32(GridView1.Rows[rowindex].Cells[1].Text);
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete news_master where='" + news_id + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
    }
}