using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS_385_E_DoAnNhom_Nhom1
{
    public partial class ThongTinThanhToan : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tendn = Session["tendn"] + "";

            if (tendn == "")
            {
                lbthongbao.Text = "Bạn chưa đăng nhập!";
            }
            else
            {
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Bạn đã đặt hàng thành công');", true);
                //Response.Redirect("home_content.aspx");
                string tengoi = txt_TenGoi.Text;
                string sdt = txt_sodienthoai.Text;
                string email = txtEmail.Text;
                string tinh = DropDownList1.Text;
                string quanhuyen = DropDownList3.Text;
                string xaphuong = DropDownList2.Text;
                string diachi = txtDiaChi.Text;
                string ghichu = txtGhiChu.Text;

                string sql = "insert into Thanhtoan (tendn, tengoi, email, tinh, xaphuong, quanhuyen, diachi, ghichu, sdt) values('" + tendn + "',N'" + tengoi + "','"
                   + email + "',N'" + tinh + "',N'" + xaphuong + "',N'" + quanhuyen + "',N'"
                   + diachi + "',N'" + ghichu + "','" + sdt + "')";
                int row = kn.UpdateData(sql);
                if (row > 0)
                {
                    string deleteGioHangSql = "DELETE FROM giohang WHERE Username = '" + tendn + "'";
                    kn.UpdateData(deleteGioHangSql);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Bạn đã đặt hàng thành công');", true);
                    Response.Redirect("home_content.aspx");
                }
                else
                {
                    lbthongbao2.Text = "Mua hàng thất bại";
                }

            }
        }
    }
}