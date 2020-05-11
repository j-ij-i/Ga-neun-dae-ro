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
    public partial class QnaView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Update QnaBoards SET readcount = readcount+1 Where num = " + Request["No"];
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            cmd.CommandText = "Select * from QnaBoards Where num = " + Request["No"];
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
                lblRefer.Text = dr["refer"].ToString();
                lblDepth.Text = dr["depth"].ToString();
                lblPos.Text = dr["pos"].ToString();

            }
            dr.Close();
            con.Close();

            SqlDataSource1.SelectCommand = "SELECT [name], [contents], [writedate] FROM [QnaComment] WHERE[id] =" + Request["No"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Qnalist.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/IspassQna.aspx?Action=ModifyQnA&No=" + Request["No"]);
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
                cmd2.CommandText = "Delete  From QnaBoards where num= " + Request["No"];
                cmd2.ExecuteNonQuery();
                con2.Close();
                Response.Redirect("~/Qnalist.aspx");
            }
            else
                Response.Redirect("~/IspassQna.aspx?Action=DeleteQnA&No=" + Request["No"]);
        }
        protected void Button4_Click(object sender, EventArgs e)
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
                 Response.Redirect("~/QnaWrite.aspx?Action=Reply&No=" + Request["No"] + "&refer=" + lblRefer.Text + "&depth=" + lblDepth.Text + "&pos=" + lblPos.Text);
        }
        protected void btnComment_Click(object sender, EventArgs e)
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

                if (auth != 1)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "adminerroralert();", true);
                }
                else
                {
                if (Page.IsValid)
                {
                    SqlConnection con2 = new SqlConnection();
                    con2.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "connectionString"].ConnectionString;
                    con2.Open();

                    SqlCommand cmd2 = new SqlCommand();
                    cmd2.Connection = con2;
                    cmd2.CommandText = "INSERT INTO QnaComment(id, name, contents, writedate) VALUES("
                    + "'" + Int32.Parse(Request["No"]) + "', N'" + txtReName.Text + "', N'"
                    + txtComment.Text + "', '" + DateTime.Now.ToShortDateString() + "')";
                    cmd2.CommandType = CommandType.Text;
                    cmd2.ExecuteNonQuery();

                    con2.Close();
                    Response.Redirect("QnaView.aspx?No=" + Request["No"]);
                }
                }
            
        }
    }
}