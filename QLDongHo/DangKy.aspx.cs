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
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["DoAnDongHoConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            conn.Open();
            //Tạo sql để thêm nhân viên
            string sql = "insert into khachhang(hoten,diachi,sdt,email,mk,ngaysinh)" +
                " values(@hoten,@diachi,@sdt,@email,@mk,@ngaysinh)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            //Truyền giá trị cho các tham số truyền vào
            cmd.Parameters.AddWithValue("@hoten", txtHoTen.Text);
            cmd.Parameters.AddWithValue("@diachi", txtDiaChi.Text);
            cmd.Parameters.AddWithValue("@sdt", txtSDT.Text);
            cmd.Parameters.AddWithValue("@email", txtTenDangNhap.Text);
            cmd.Parameters.AddWithValue("@mk", txtMatKhauDangKy.Text);
            cmd.Parameters.AddWithValue("@ngaysinh", txtNgaySinh.Text);
            //Thực hiện câu lệnh truy vấn sql
            if (cmd.ExecuteNonQuery() > 0)
                Response.Redirect("DangNhap.aspx");
            else
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đăng ký thất bại')", true);
        }
    }
    }