using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace IS_385_E_DoAnNhom_Nhom1
{
    public partial class Lienhe : System.Web.UI.Page
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            string name = txt_Ten.Text;
            string email = txt_Email.Text;
            string ghichu = txt_Noidung.Text;
            string sql = "select * from Lienhe where Name = N'" + name + "' AND Email = '" + email + "' AND Ghichu = N'" + ghichu + "'";
            DataTable dt = new DataTable();
            dt = kn.getData(sql);
            if (dt.Rows.Count > 0)
            {
                tbthongbao.Text = "Nhận xét của bạn đã tồn tại, vui lòng thay đổi nhận xét";
            }
            else
            {
                sql = "insert into Lienhe values(N'" + name + "','" + email + "',N'" + ghichu + "')";
                int row = kn.UpdateData(sql);
                if (row > 0)
                {
                    tbthongbao.Text = "Gửi nhận xét thành công";
                }
                else
                {
                    tbthongbao.Text = "Gửi nhận xét thất bại!";
                }
            }


        }
    }
}