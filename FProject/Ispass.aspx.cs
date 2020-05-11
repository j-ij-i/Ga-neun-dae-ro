using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fproject
{
    public partial class Ispass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPass_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * From rcmdBoard where num=" + Request["No"];
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            string strPass;
            dr.Read();
            strPass = dr["pass"].ToString();
            dr.Close();

            if (strPass.CompareTo(txtPass1.Text) == 0 && Request["Action"].CompareTo("Modify") == 0)
            {
                Response.Redirect("~/Modify.aspx?No=" + Request["No"]);
            }

            else if (strPass.CompareTo(txtPass1.Text) == 0 && Request["Action"].CompareTo("Delete") == 0)
            {
                SqlConnection con2 = new SqlConnection();
                con2.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                con2.Open();
                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = con2;
                cmd2.CommandText = "Delete  From rcmdBoard where num= " + Request["No"];
                cmd2.ExecuteNonQuery();
                con2.Close();

                Response.Redirect("~/rcmdBoardlist.aspx");
            }
            else {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "wrongpw();", true);
            }
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/rcmdBoardlist.aspx");
        }
    }
}