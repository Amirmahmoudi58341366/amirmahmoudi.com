using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillData();
    }

    protected void fillData()
    {
        using (SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=MyWebSite;Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand("Select picpath,imagename from imagesave", con))
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ListView1.DataSource = dt;
                    ListView1.DataBind();
                }
            }
        }
    }
    protected void DataPager1_PreRender(object sender, EventArgs e)
    {
        fillData();
    }
}