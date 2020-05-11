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
    public partial class rcmdBoardView : System.Web.UI.Page
    {
        string recomtitle = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "UPDATE rcmdBoard SET readcount=readcount+1 WHERE num =" + Request["No"];
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            cmd.CommandText = "SELECT * FROM rcmdBoard WHERE num = " + Request["No"];
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblName.Text = dr["name"].ToString();
                lblDate.Text = dr["writedate"].ToString();
                lblTitle.Text = dr["title"].ToString();
                recomtitle = dr["title"].ToString(); 
                like.Text = dr["likeit"].ToString();
                lblCount.Text = dr["readCount"].ToString();
                lblFileName.Text = dr["fileurl"].ToString();
                txtContents.Text = dr["contents"].ToString();
                Image.ImageUrl = "/Photo/" + lblFileName.Text;

            }
            dr.Close();
            con.Close();

            SqlDataSource1.SelectCommand = "SELECT [name], [contents], [writedate] FROM [rcmdComment] WHERE[id] =" + Request["No"];
        }
        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/rcmdBoardlist.aspx");
        }

        protected void btnComment_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "connectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "INSERT INTO rcmdComment(id, name, contents, writedate) VALUES("
                + "'" + Int32.Parse(Request["No"]) + "', N'" + txtReName.Text + "', N'"
                + txtComment.Text + "', '" + DateTime.Now.ToShortDateString() + "')";
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("rcmdBoardView.aspx?No=" + Request["No"]);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string userId = Page.User.Identity.Name;
            string ident = "";
            int likerecomm = Int32.Parse(Request["No"]);

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "SELECT userId FROM favrecomes WHERE likerecom = " + Request["No"] +
                  "And userId=N'" + userId + "'";
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                ident = dr["userId"].ToString();
            }
            dr.Close();

            if (userId != "")
            {
                if (userId != ident)
                {
                    cmd.CommandText = "UPDATE rcmdBoard SET likeit=likeit+1 WHERE num =" + Request["No"];
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();

                    cmd.CommandText = "INSERT INTO favrecomes(userId,likerecom,liketitle) VALUES(N'" + userId + "'," + likerecomm + ", N'" + recomtitle + "')";
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                    
                    con.Close();
                    //알람창
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "likesuccessalert();", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alreadylikealert();", true);
                    con.Close();
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('로그인이 필요합니다.'); window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Ispass.aspx?Action=Modify&No=" + Request["No"]);
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

            if (auth == 1)
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
            else
                Response.Redirect("~/Ispass.aspx?Action=Delete&No=" + Request["No"]);
        }

    }
}