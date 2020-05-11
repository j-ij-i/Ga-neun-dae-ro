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
    public partial class ModifyQnA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandText = "SELECT * FROM QnaBoard WHERE num = " + Request["No"];
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                if (!IsPostBack)
                {
                    lblname.Text = dr["name"].ToString();
                    txtTitle.Text = dr["title"].ToString();
                    txtContent.Text = dr["contents"].ToString();
                }
            }
            dr.Close();
            con.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Qnalist.aspx");
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                cmd.CommandText = "UPDATE QnaBoard SET title =N'" + txtTitle.Text + "', contents =N'"
               + txtContent.Text + "' WHERE num =" + Request["No"];
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                con.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('수정완료'); window.location='" + Request.ApplicationPath + "Qnalist.aspx';", true);
            }
        }
    }
}