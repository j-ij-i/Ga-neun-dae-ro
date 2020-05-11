using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fproject
{
    public partial class find_email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnfind_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string uids = "";
                string passs = "";
                string emails = "";
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "connectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "Select * From Users Where UserId = @userId ";
                cmd.Parameters.AddWithValue("@userId", txtUserID.Text);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    uids = dr["UserID"].ToString();
                    emails = dr["Email"].ToString();
                }
                dr.Close();
                con.Close();

                if ((uids == txtUserID.Text) && (emails == txtemail.Text))
                {
                    Response.Redirect("~/givePass.aspx?ids=" + uids);
                }
                else
                { //이메일 성공하지 못했을 경우
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "finderroralert();", true);
                }
            }
        }
    }
}