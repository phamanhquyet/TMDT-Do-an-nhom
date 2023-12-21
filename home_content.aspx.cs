using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace IS_385_E_DoAnNhom_Nhom1
{
    public partial class home_content : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + HttpContext.Current.Server.MapPath("/App_Data/Product.mdf") + ";Integrated Security=True");

        protected void binddata(string sql)
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            dlhomeproduct.DataSource = dt;
            dlhomeproduct.DataBind();
            conn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string tenhang = Request.QueryString["tenhang"] + "";
            string sql = "";
            string ml = Request.QueryString["ml"] + "";
            if (tenhang != "")
            {
                sql = "select * from sanpham where Tensanpham Like N'%" + tenhang + "%' OR  Tensanpham  LIKE '" + tenhang + "%'";
            }
            else if (ml != "")
            {
                sql = "select * from sanpham where Maloai = '" + ml + "'";
            }
            else
            {
                //string msp = Request.QueryString["msp"] + "";
                sql = "select * from sanpham";

            }
            binddata(sql);

        }
        protected void itemclick(object sender, EventArgs e)
        {
            string masp = ((LinkButton)sender).CommandArgument;

            Response.Redirect("detailProduct.aspx?masp=" + masp);
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            string ml = ((LinkButton)sender).CommandArgument;
            Response.Redirect("home_content.aspx?ml=" + ml);
            //string sql = "select * from sanpham where Maloai = '" + ml + "'";
            //binddata(sql);
        }
    }
}