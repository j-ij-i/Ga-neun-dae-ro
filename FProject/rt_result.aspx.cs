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
    public partial class rt_result : System.Web.UI.Page
    {
        string r_code = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            r_code= Request["code"];
        }

        protected void fav_btn_Click(object sender, EventArgs e)
        {
            string routename = "";
            string userid = "";
            string routecode = "";
            string userId = Page.User.Identity.Name;
            if (userId != "")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "connectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                cmd.CommandText = "SELECT routename FROM route WHERE routecode = " + Request["code"];
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    routename = dr["routename"].ToString();
                }

                dr.Close();

                cmd.CommandText = "SELECT * FROM likeroute WHERE routecode = " + Request["code"] + "And userId= N'" + userId + "'";
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

                SqlDataReader dr1 = cmd.ExecuteReader();

                if (dr1.Read())
                {
                    routecode = dr1["routecode"].ToString();
                    userid= dr1["userId"].ToString();
                }
                dr1.Close();

                if ((routecode == r_code) && (userid == userId))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alreadyalert();", true);
            //        string strst = "<script>alert('이미 저장되었습니다');location.herf='Login.aspx'; </script>";
                    con.Close();
                }
                else
                {
                    cmd.CommandText = "INSERT INTO likeroute(userId, favroute, routecode) VALUES("
                     + "N'" + userId + "', N'" + routename + "',N'" + r_code + "')";
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "savesuccessalert();", true);
                }
               
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('로그인이 필요합니다.'); window.location='" + Request.ApplicationPath + "Login.aspx';", true);

 //               Page.ClientScript.RegisterClientScriptBlock(GetType(), "goDefault", strst);
            }
        }
    }
}