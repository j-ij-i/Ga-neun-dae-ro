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
    public partial class rcmdBoardWrite : System.Web.UI.Page
    {
        string userId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            userId = Page.User.Identity.Name;
            if (userId == "")
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        protected void btnWrite_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string strfn = FileUpload.FileName;
                string strfs = Server.MapPath("~/Photo/" + strfn);
                FileUpload.SaveAs(strfs);

                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "connectionString"].ConnectionString;
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                cmd.CommandText = "INSERT INTO rcmdBoard(name, title, pass, contents, writedate, readcount, fileurl, likeit, useId) VALUES("
                        + "N'" + txtName.Text + "', N'" + txtTitle.Text + "', N'" + ckpassword.Text + "', N'"
                        + txtContents.Text + "', '" + DateTime.Now.ToShortDateString() + "', 0, N'" + strfn + "',0, N'" + userId + "')";
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('작성완료'); window.location='" + Request.ApplicationPath + "rcmdBoardlist.aspx';", true);
            }
        }
        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/rcmdBoardlist.aspx");
        }
    }
}