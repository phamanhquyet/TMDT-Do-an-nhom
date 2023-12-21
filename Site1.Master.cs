using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS_385_E_DoAnNhom_Nhom1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        lopketnoi kn = new lopketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            if (Session["tendn"] != null)
            {
                lbusername.Text = Session["tendn"].ToString();
                logoutbtn.Style.Add("display", "block");
            }
        }

        protected void searchbtn_Click(object sender, ImageClickEventArgs e)
        {
            string tenhang = txtsearch.Text;
            Response.Redirect("home_content.aspx?tenhang=" + tenhang);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session.Clear();
            lbusername.Text = "";
            logoutbtn.Style.Add("display", "none");
        }
    }
}