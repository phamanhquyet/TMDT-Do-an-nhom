using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace IS_385_E_DoAnNhom_Nhom1
{
    public class lopketnoi : System.Web.UI.Page
    {
        SqlConnection con;
        public lopketnoi()
        {
            string sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + Server.MapPath("/App_Data/Product.mdf") + ";Integrated Security=True";
            con = new SqlConnection(sqlCon);
        }

        public DataTable getData(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                da.Fill(dt);
            }
            catch { }
            return dt;
        }
        public int UpdateData(string sql)
        {
            int row = 0;
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                row = cmd.ExecuteNonQuery();
            }
            catch { }
            finally
            {
                con.Close();
            }
            return row;
        }
    }
}