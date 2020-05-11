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
    public partial class rcmdBoardlist : System.Web.UI.Page
    {
        string strst = "SELECT [num], [name], [title], [writedate],[fileurl], [likeit], [readcount], [depth], [refer], [pos] FROM rcmdBoard ORDER BY[refer] DESC, [pos]";

        private void ListDisplay()
        {
            SqlDataSource1.SelectCommand = strst;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Write_btn(object sender, EventArgs e)
        {
            string userId = Page.User.Identity.Name;
            int auth = 3;
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

            if (auth == 0 || auth == 1)
            {
                Response.Redirect("~/rcmdBoardWrite.aspx");
            }
            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('로그인이 필요합니다.'); window.location='" + Request.ApplicationPath + "Login.aspx';", true);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            strst = "SELECT [num], [name], [title], [writedate],[fileurl],[likeit],  [readcount] FROM rcmdBoard WHERE " + drdwSearch.SelectedValue + " LIKE N'%" + txtSearch.Text + "%' ORDER BY [num] DESC";
            ListDisplay();

        }
        protected void recent_btn_Click(object sender, EventArgs e)
        {
            strst = "SELECT [num], [name], [title], [writedate],[fileurl],[likeit],  [readcount] FROM rcmdBoard ORDER BY [writedate] DESC";
            ListDisplay();
        }

        protected void pop_btn_Click(object sender, EventArgs e)
        {
            strst = "SELECT [num], [name], [title], [writedate],[fileurl],[likeit],  [readcount] FROM rcmdBoard ORDER BY [likeit] DESC";
            ListDisplay();
        }

        protected void view_btn_Click(object sender, EventArgs e)
        {
            strst = "SELECT [num], [name], [title], [writedate],[fileurl],[likeit],  [readcount] FROM rcmdBoard ORDER BY [readcount] DESC";
            ListDisplay();
        }
    }
}