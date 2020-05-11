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
    public partial class Qnalist : System.Web.UI.Page
    {

        string strst = "SELECT [num], [name], [title], [writedate], [readcount], [depth], [refer], [pos] FROM QnaBoards ORDER BY[refer] DESC, [pos]";
        private void ListDisplay()
        {
            SqlDataSource1.SelectCommand = strst;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //
        }
        public string SetSpace(int depth)
        {
            if (depth == 0) return "";

            string strSpace = "";

            for (int i = 0; i < depth; i++)
                strSpace += "&nbsp;->&nbsp;";
            return strSpace;
        }

        protected void Button1_Click(object sender, EventArgs e)
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
                Response.Redirect("~/QnaWrite.aspx?Action=Write");
            }
            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('로그인이 필요합니다.'); window.location='" + Request.ApplicationPath + "Login.aspx';", true);
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            strst = "SELECT [num], [name], [title], [writedate], [readcount] FROM QnaBoards WHERE " + drdwSearch.SelectedValue + " LIKE N'%" + txtSearch.Text + "%' ORDER BY [num] DESC";
            ListDisplay();

        }

    }
}