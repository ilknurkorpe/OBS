using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace obs
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strcon);
            string query = "SELECT * from Kimlik WHERE Student_Number='" + TextBox1.Text.Trim() + "' and Password='" + TextBox2.Text.Trim() + "'";
            SqlDataAdapter sda = new SqlDataAdapter(query,conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            if (dt.Rows.Count > 0)
            {
                Server.Transfer("Ders.aspx");
            }
            else
            {
                TextBox4.Text = "Username or password is incorrect";
            }

            conn.Close();
        }
    }
}