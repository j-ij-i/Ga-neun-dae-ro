using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fproject
{
    public partial class find_result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void find_btn_Click(object sender, EventArgs e)
        {
            int mprice = 0;
            string code = "";
            string nstart = startn.SelectedValue.ToString();
            string nend = endn.SelectedValue.ToString();
            string max_price = price_box.Text.ToString();
            if (max_price != "")
            {
                mprice = Int32.Parse(Regex.Replace(max_price, @"\D", ""));
            }
            else mprice = 100000;

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "SELECT * FROM route WHERE start= N'" + nstart + "'";
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                code = dr["routecode"].ToString();
            }
            dr.Close();
            con.Close();
            Label1.Text = code;
            
            Response.Redirect("~/rt_result.aspx?code=" + code + "&price=" + mprice);
        }

    }
}