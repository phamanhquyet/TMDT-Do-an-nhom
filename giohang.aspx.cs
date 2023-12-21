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
    public partial class giohang : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        private void DocDL()
        {
            string tendn = Session["tendn"] + "";

            string sql = "select sanpham.Masanpham,sanpham.Tensanpham,sanpham.gia,sanpham.Hinhchinh,giohang.Soluong,giohang.Soluong* sanpham.gia as thanhtien " +
                "from sanpham, giohang where sanpham.Masanpham = giohang.Masanpham AND Username = '" + tendn + "'";
            //string sql = "select Masanpham from giohang where Username = '" + tendn + "'";
            DataTable dt = kn.getData(sql);
            //Label1.Text = tendn;
            grvgiohang.DataSource = dt;
            grvgiohang.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Session["tendn"] == null) return;

            DocDL();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["tendn"] == null) return;
            string tendn = Session["tendn"] + "";
            string masp = ((LinkButton)sender).CommandArgument;
            string sql = "delete from giohang where Username = '" + tendn + "' AND Masanpham = '" + masp + "'";
            int row = kn.UpdateData(sql);
            if (row > 0) { Label1.Text = "Xóa thành công"; }
            else
            {
                Label1.Text = "Xóa không thành công";
            }
            DocDL();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("home_content.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (Session["tendn"] == null) return;
            string tendn = Session["tendn"] + "";
            LinkButton btnsua = ((LinkButton)sender);
            string msp = btnsua.CommandArgument;
            GridViewRow item = (GridViewRow)btnsua.Parent.Parent;
            string soluong = ((TextBox)item.FindControl("txtsl")).Text;
            string sql = "update giohang set Soluong = " + soluong + " where Username = '" + tendn + "' AND Masanpham = '" + msp + "'";
            int row = kn.UpdateData(sql);
            if (row > 0) Label1.Text = "*Chỉnh sửa đơn hàng thành công!";
            else
            {
                Label1.Text = "*Chỉnh sửa đơn hàng thất bại!";
            }
            DocDL();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("ThongTinThanhToan.aspx");
        }
    }
}