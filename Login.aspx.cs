using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Registration_form
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=TRI03L-6LW2R93; Initial Catalog=Balaji; Integrated Security=true;");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Register1 where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count==1)
            {
                Label1.Text = "Login Successfull!";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "Login Unsuccessfull!";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}