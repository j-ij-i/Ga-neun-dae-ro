using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fproject
{
    public partial class Exp_result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void aboard_Click(object sender, EventArgs e)
        {
            string exp = Request["quest"];
            string nums = "";

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * From rcmdBoard WHERE contents LIKE N'%" + exp + "%' OR title LIKE N'%" + exp + "%'";
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                nums = dr["num"].ToString();
            }
            dr.Close();
            con.Close();

            if (nums != "")
                Response.Redirect("~/aboutboard.aspx?quest=" + exp);
            else
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "findposterror();", true);
        }
    }
}