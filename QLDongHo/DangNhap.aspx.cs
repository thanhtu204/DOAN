using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLDongHo
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //string taiKhoan = txtTaiKhoan.Text.Trim();
            //string matKhau = txtMatKhau.Text.Trim();

            //string CS = ConfigurationManager.ConnectionStrings["DoAnDongHoConnectionString"].ConnectionString;

            //using (SqlConnection con = new SqlConnection(CS))
            //{
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand("SELECT * FROM KhachHang WHERE Email='" + taiKhoan + "' AND MK='" + matKhau + "'", con);
            //    SqlDataReader dr = cmd.ExecuteReader();

            //    if (dr.HasRows)
            //    {
            //        // Nếu có tài khoản và mật khẩu khớp, đưa người dùng về TrangChu.aspx
            //        Response.Redirect("TrangChu.aspx");
            //    }
            //    else
            //    {
            //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Tài khoản hoặc mật khẩu không đúng')", true);
            //    }
            //}
            string taiKhoan = txtTaiKhoan.Text.Trim();
            string matKhau = txtMatKhau.Text.Trim();

            string CS = ConfigurationManager.ConnectionStrings["DoAnDongHoConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM KhachHang WHERE Email='" + taiKhoan + "' AND MK='" + matKhau + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Session["username"] = dr["HoTen"]; // Lưu tên khách hàng vào Session
                        Session["userid"] = dr["MaKH"]; // Lưu tên khách hàng vào Session
                    }

                    // Chuyển hướng người dùng đến TrangChu.aspx
                    Response.Redirect("TrangChu.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Tài khoản hoặc mật khẩu không đúng')", true);
                }
            }
        }
    }
}