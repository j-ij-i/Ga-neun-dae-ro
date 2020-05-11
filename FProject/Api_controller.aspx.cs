using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Fproject
{
    public partial class Api_controller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ArrayList foodlist = new ArrayList();

            string url = "http://data.ex.co.kr/exopenapi/business/representFoodServiceArea?serviceKey=VnZcXs2mmQGm3pgtzTsqnupGPO2EsiE8NNV3MMEblCv7BRg1T3%2BnqhNBDC0sjShiZLuJTWtx1Ay%2BYmlu1WT7mg%3D%3D&type=xml&numOfRows=99&pageNo=3";
            try
            {
                //먼저 XmlDocument로 새로운 xml개채를 만들고 Load 함수로 불러옵니다. 
                XmlDocument xml = new XmlDocument();
                xml.Load(url);

                //xml문서안의 모든 속성을 가져올수 있는 XmlElement입니다. (끝까지 가져옵니다.)
                XmlElement KeyList = xml.DocumentElement;

                //XmlNodeList를 쓰게 되면 해당 노드를 선택합니다. 
                XmlNodeList xnList = xml.SelectNodes("/data/list");
                foreach (XmlNode node1 in xnList)
                {
                    Label1.Text = node1.ChildNodes.Count.ToString();
                    if (node1.ChildNodes.Count == 7)
                    {
                        foodInfo food = new foodInfo();
                        food.menu = node1["batchMenu"].InnerText;
                        food.price = Int32.Parse(Regex.Replace((node1["salePrice"].InnerText), @"\D", ""));
                        food.route = node1["routeName"].InnerText;
                        food.routecode = node1["routeCode"].InnerText;
                        food.serviecename = node1["serviceAreaName"].InnerText;
                        food.servicecode = node1["serviceAreaCode"].InnerText;
                        foodlist.Add(food);
                    }
                    else continue;
                }
            }
            catch (Exception ex)
            {

            }
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            foreach (foodInfo i in foodlist)
            {
                cmd.CommandText = "Downfood";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@batchMenu", i.menu);
                cmd.Parameters.AddWithValue("@routeCode", i.routecode);
                cmd.Parameters.AddWithValue("@routeName", i.route);
                cmd.Parameters.AddWithValue("@salePrice", i.price);
                cmd.Parameters.AddWithValue("@serviceAreaCode", i.servicecode);
                cmd.Parameters.AddWithValue("@serviceAreaName", i.serviecename);
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ArrayList foodinfos = new ArrayList();

            string url = "http://data.ex.co.kr/exopenapi/restinfo/restBestfoodList?type=xml&numOfRows=99&pageNo=3&ServiceKey=VnZcXs2mmQGm3pgtzTsqnupGPO2EsiE8NNV3MMEblCv7BRg1T3%2BnqhNBDC0sjShiZLuJTWtx1Ay%2BYmlu1WT7mg%3D%3D";
            try
            {
                //먼저 XmlDocument로 새로운 xml개채를 만들고 Load 함수로 불러옵니다. 
                XmlDocument xml = new XmlDocument();
                xml.Load(url);

                //xml문서안의 모든 속성을 가져올수 있는 XmlElement입니다. (끝까지 가져옵니다.)
                XmlElement KeyList = xml.DocumentElement;

                //XmlNodeList를 쓰게 되면 해당 노드를 선택합니다. 
                XmlNodeList xnList = xml.SelectNodes("/data/list");
                foreach (XmlNode node1 in xnList)
                {
                    Label1.Text = node1.ChildNodes.Count.ToString();
                    if (node1.ChildNodes.Count == 17)
                    {
                        Expfood food = new Expfood();
                        food.stdRestNm = node1["stdRestNm"].InnerText;
                        food.menu = node1["foodNm"].InnerText;
                        food.price = node1["foodCost"].InnerText;
                        food.foodMaterial = node1["foodMaterial"].InnerText;
                        food.etc = node1["etc"].InnerText;
                        foodinfos.Add(food);
                    }
                    else continue;
                }
            }

            catch (Exception ex)
            {

            }

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            foreach (Expfood i in foodinfos)
            {
                cmd.CommandText = "Downinfos";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@stdRestNm", i.stdRestNm);
                cmd.Parameters.AddWithValue("@foodNm", i.menu);
                cmd.Parameters.AddWithValue("@foodMaterial", i.foodMaterial);
                cmd.Parameters.AddWithValue("@foodCost", i.price);
                cmd.Parameters.AddWithValue("@etc", i.etc);
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
            }
            con.Close();

        }
    }
    internal class Expfood
    {
        public string price = "";
        public string menu = "";
        public string stdRestNm = "";
        public string foodMaterial = "";
        public string etc = "";
    }

    internal class foodInfo
    {
        public int price = 0;
        public string menu = "";
        public string route = "";
        public string routecode = "";
        public string serviecename = "";
        public string servicecode = "";
    }

}