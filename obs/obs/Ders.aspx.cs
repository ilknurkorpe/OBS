using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Configuration;
namespace obs
{
    public partial class Yorumbul : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        { 
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void Listele_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("SELECT * from Ders WHERE Class='" + DropDownList1.SelectedValue.Trim() + "';", conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }
    }
}