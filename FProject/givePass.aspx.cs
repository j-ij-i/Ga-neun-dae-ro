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
    public partial class givePass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void changepass_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "connectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "UPDATE Users SET Password= @pwd Where UserId = @userId ";
                cmd.Parameters.AddWithValue("@userId", Request["ids"]);
                cmd.Parameters.AddWithValue("@pwd", txtpass1.Text);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                con.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('변경을 성공했습니다.'); window.location='" + Request.ApplicationPath + "Login.aspx';", true);
            }
        }
    }
}