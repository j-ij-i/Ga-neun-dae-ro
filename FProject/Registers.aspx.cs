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
    public partial class Registers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            string ident = "";
            if (CheckBoxOverride.Checked == false)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "erroralert();", true);
            }

            if (Page.IsValid && (CheckBoxOverride.Checked == true))
            {
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = ConfigurationManager.ConnectionStrings[
                        "ConnectionString"].ConnectionString;
                    con.Open();

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "SELECT UserId FROM Users WHERE UserId=N'" + txtID.Text + "'";
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();

                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        ident = dr["UserId"].ToString();
                    }
                    dr.Close();

                    if (ident != txtID.Text)
                    {
                        cmd.CommandText = "INSERT INTO Users(UserId, Password, Email, Name, Postcode, Address) VALUES(N'" + txtID.Text + "', N'" + txtPassword.Text + "', N'"
                          + txtEmail.Text + "', N'" + txtName.Text + "', '" + postcode.Text + "', N'" + address.Text + "')"; 
                        cmd.CommandType = CommandType.Text;
                        cmd.ExecuteNonQuery();
                        con.Close();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('가입성공'); window.location='" + Request.ApplicationPath + "Login.aspx';", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('이미 가입된 아이디입니다.');", true);
                        con.Close();
                    }

                  /*  ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alreadysignuperror();", true);
                        dr.Close();
                        con.Close();*/
                    
                 
                    /*  cmd.CommandText = "INSERT INTO Users(UserId, Password, Email, Name, Postcode, Address) VALUES("
                          + "N'" + txtID.Text + "', N'" + txtPassword.Text + "', N'"
                          + txtEmail.Text + "', N'" + txtName.Text + "', '" + postcode.Text + "', N'" + address.Text + "')"; ;
                      cmd.CommandType = CommandType.Text;
                      cmd.ExecuteNonQuery();*/

                    //class Fproject.Registers        
                    //      string strst = "<script>location.herf='Default.aspx'; </script>";
                    //     Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "goDefault", strst);  
                }
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "successalert(); window.location='" + Request.ApplicationPath + "Login.aspx';", true);
              
                //Fproject.Registers
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/");
        }
    }
}