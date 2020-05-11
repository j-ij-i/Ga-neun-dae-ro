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
    public partial class Noticelist : System.Web.UI.Page
    {
        string strst = "SELECT [num], [name], [title], [writedate], [readcount], [depth], [refer], [pos] FROM Notice ORDER BY[refer] DESC, [pos]";

        private void ListDisplay()
        {
            SqlDataSource1.SelectCommand = strst;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userId = Page.User.Identity.Name;
            int auth = 0;

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "SELECT [Isauth] FROM Users WHERE UserID= N'" + userId + "'";
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                auth = Int32.Parse(dr["Isauth"].ToString());
            }
            dr.Close();
            con.Close();

            if (auth != 1)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "adminerroralert();", true);
            }
            else
            Response.Redirect("~/NoticeWrite.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            strst = "SELECT [num], [name], [title], [writedate], [readcount] FROM Notice WHERE " + drdwSearch.SelectedValue + " LIKE N'%" + txtSearch.Text + "%' ORDER BY [num] DESC";
            ListDisplay();

        }
    }
}