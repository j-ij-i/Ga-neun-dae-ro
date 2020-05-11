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
    public partial class NoticeView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Update Notice SET readcount = readcount+1 Where num = " + Request["No"];
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            cmd.CommandText = "Select * from Notice Where num = " + Request["No"];
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr["name"].ToString();
                Label2.Text = dr["writedate"].ToString();
                Label3.Text = dr["readcount"].ToString();
                Label4.Text = dr["title"].ToString();
                TextBox1.Text = dr["contents"].ToString();
            }
            dr.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Noticelist.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
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

            if (auth == 1)
            {
                SqlConnection con2 = new SqlConnection();
                con2.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                con2.Open();
                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = con2;
                cmd2.CommandText = "Delete  From Notice where num= " + Request["No"];
                cmd2.ExecuteNonQuery();
                con2.Close();
                Response.Redirect("~/Noticelist.aspx");
            }
            else
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "adminerroralert();", true);

        }

        protected void Button3_Click(object sender, EventArgs e)
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

            if (auth == 1)
            {
                SqlConnection con2 = new SqlConnection();
                con2.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                con2.Open();
                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = con;
                cmd2.CommandText = "Select * From Notice where num=" + Request["No"];

                Response.Redirect("~/ModifyNotice.aspx?No=" + Request["No"]);
                }
            else
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "adminerroralert();", true);
        }
                

            
    }
}