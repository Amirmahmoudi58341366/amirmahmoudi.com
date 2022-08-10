using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_UploadVideo : System.Web.UI.Page
{
    static int videoid;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String videolink;
        getvideoid();
        //string path = Path.GetFileName(FileUpload1.FileName);
        //path = path.Replace(" ", "");
        FileUpload1.SaveAs(Server.MapPath("~/Videos/") + videoid + ".mp4");
        String link = "Videos/" + videoid + ".mp4";
        videolink = "<Video width=400 Controls><Source src=" + link + " type=video/mp4></video>";
        savevideodata(videoid, TextBox1.Text, videolink);
        Label3.Text = "Video Uploaded Successfully with Video ID " + videoid;
    }
    private void savevideodata(int videoid1, String videotitle1, String videolink1)
    {
        String query = "insert into videodetails(videoid,videoname,videolink) values(" + videoid1 + ",'" + videotitle1 + "','" + videolink1 + "')";
        String mycon = "Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
    }
    public void getvideoid()
    {
        String mycon = "Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select videoid from videodetails";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            videoid = 1001;
        }
        else
        {
            String mycon1 = "Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(videoid) from videodetails";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            videoid = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString()) + 1;
            scon1.Close();
        }
    }
}