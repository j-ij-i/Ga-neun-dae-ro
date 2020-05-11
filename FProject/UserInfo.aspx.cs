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
    public partial class UserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string uids = "";
            string userId = Page.User.Identity.Name;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings[
                "connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * From Users Where UserId = @userId ";
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (!IsPostBack)
                {
                    uids = dr["UID"].ToString();
                    lblId.Text = dr["UserID"].ToString();
                    txtPassword.Text = dr["Password"].ToString();
                    txtEmail.Text = dr["Email"].ToString();
                    txtName.Text = dr["Name"].ToString();
                }
            }
            dr.Close();
            con.Close();
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string useid = Page.User.Identity.Name;
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "connectionString"].ConnectionString;
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                cmd.CommandText = "UPDATE Users SET UserID=N'" + lblId.Text + "', Password= N'" + txtPassword.Text +
                    "', Email= N'" + txtEmail.Text + "', Name=N'" + txtName.Text + "' WHERE UserID=N'" + useid + "'";
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                con.Close();

                string strRt = "<script>alert('수정완료');location.herf='Default.aspx'; </script>";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "goDefault", strRt);
            }
        }
    }
}