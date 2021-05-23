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
    public partial class Kimlik : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Show_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(strcon);
            string query = "SELECT Student_Number,TC_No,Name_Surname from Kimlik WHERE TC_No='" + TextBox1.Text.Trim() + "'";
            SqlCommand cmd = new SqlCommand(query,conn);
            SqlDataAdapter sda = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            if (dt.Rows.Count > 0)
            {
                SqlDataReader reader = cmd.ExecuteReader();

                GridView2.DataSource = reader;
                GridView2.DataBind();
                TextBox2.Text = "Correct T.C. and password";
            }
            else
            {
                TextBox2.Text = "Incorrect T.C. or password";
            }
            conn.Close();
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}