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
    public partial class QnaWrite : System.Web.UI.Page
    {
     /*   protected void Page_Load(object sender, EventArgs e)
        {

       
        }*/
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings[
                    "connectionString"].ConnectionString;
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                if (Request["Action"].CompareTo("Reply") != 0)
                {
                    cmd.CommandText = "INSERT INTO QnaBoards(name, pass, title, contents, writedate, readcount,refer, depth, pos) VALUES("
                     + "N'" + TextBox1.Text + "', N'" + TextBox2.Text + "', N'" + TextBox4.Text + "', N'"
                     + TextBox5.Text + "', '" + DateTime.Now.ToShortDateString() + "', 0, 0, 0, 0)";
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                    cmd.CommandText= "UPDATE QnaBoards SET refer = num WHERE refer = 0";
                    cmd.CommandType = CommandType.Text;
                    cmd.ExecuteNonQuery();
                    
                }
                else {
                    
                    int iRefer = int.Parse(Request["refer"]);
                    int iDepth = int.Parse(Request["depth"]);
                    int iPos = int.Parse(Request["pos"]);
                    cmd.CommandText = "UPDATE QnaBoards SET pos=pos+1 WHERE refer=" + iRefer + " and pos>" + iPos;
                    cmd.ExecuteNonQuery();
                    iDepth++;
                    iPos++;
                    cmd.CommandText = "INSERT INTO QnaBoards(name, pass,  title, contents, writedate, readcount, refer, depth, pos) VALUES (N'" + TextBox1.Text + "', N'" + TextBox2.Text
                    + "', N'&nbsp&nbsp&nbsp;->" + TextBox4.Text + "', N'" + TextBox5.Text
                    + "', '" + DateTime.Now.ToShortDateString() + "', 0," + iRefer + ", " + iDepth + ", " + iPos + ")";
                    

                }
                /*
                cmd.CommandText = "WriteBoard";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                cmd.Parameters.AddWithValue("@title", TextBox4.Text);
                cmd.Parameters.AddWithValue("@contents", TextBox5.Text);
                cmd.Parameters.AddWithValue("@writedate", DateTime.Now.ToShortDateString());
                cmd.Parameters.AddWithValue("@readcount", 0);
                */
                cmd.ExecuteNonQuery();


                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('작성완료'); window.location='" + Request.ApplicationPath + "Qnalist.aspx';", true);
            }
            }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Qnalist.aspx");
        }
    }
}