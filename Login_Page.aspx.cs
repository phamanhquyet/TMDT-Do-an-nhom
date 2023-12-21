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
    public partial class Login_Page : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tendn = txtTenTaiKhoan.Text;
            string pass = TextBox2.Text;
            string sql = "select * from account where Username='" + tendn + "' and Password='" + pass + "'";
            DataTable dt = kn.getData(sql);
            if (dt.Rows.Count > 0)
            {
                Session["tendn"] = tendn;
                Response.Redirect("home_content.aspx");
            }
            else
            {
                lblogin.Text = "Sai tài khoản hoặc mật khẩu. Vui lòng đăng nhập lại!";
            }

        }
    }
}