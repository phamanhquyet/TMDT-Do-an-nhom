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
    public partial class detailProduct : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("/App_Data/Product.mdf") + ";Integrated Security=True";
            conn.Open();
            string masp = Request.QueryString["masp"] + "";
            string sql = "select * from sanpham where Masanpham = '" + masp + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            dldetail.DataSource = dt;
            dldetail.DataBind();
            conn.Close();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if (Session["tendn"] == null) lbthongbao.Text = "*Bạn phải đăng nhập!";
            else
            {
                LinkButton lbt = (LinkButton)sender;
                string masp = lbt.CommandArgument;
                DataListItem item = (DataListItem)lbt.Parent;
                string strsoluong = ((TextBox)item.FindControl("quantities")).Text;
                int soluong = int.Parse(strsoluong);
                string tendn = Session["tendn"].ToString();
                string sql_dh = "select * from giohang where Masanpham='" + masp + "' AND Username='" + tendn + "'";
                DataTable dt = kn.getData(sql_dh);
                string sql = "";
                if (dt.Rows.Count > 0)
                {
                    //update don hang
                    sql = "update giohang set Soluong=Soluong + " + soluong + " where Masanpham='" + masp + "' and Username='" + tendn + "'";

                }
                else
                {
                    //insert san pham vao hoa don 
                    sql = "insert into giohang values('" + masp + "','" + tendn + "'," + soluong + ")";

                }
                int row = kn.UpdateData(sql);
                if (row > 0)
                {
                    lbthongbao.Text = "*Bạn đã đặt hàng thành công";
                }
                else
                {
                    lbthongbao.Text = "*Mua hàng không thành công";
                }
            }
        }
    }
}