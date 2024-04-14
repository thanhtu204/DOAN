using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLDongHo
{
    public partial class ThemDongHo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string fileName = string.Empty;

            if (fuHinhAnh.HasFile)
            {
                fileName = Path.GetFileName(fuHinhAnh.PostedFile.FileName);
                fuHinhAnh.SaveAs(Server.MapPath("DongHoPic/" + fileName));
            }

            string connStr = ConfigurationManager.ConnectionStrings["DoAnDongHoConnectionString"].ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string sql = "INSERT INTO DongHo (TenDH, DonGia, MaLoai, MoTa, HinhAnh) VALUES (@TenDH, @DonGia, @MaLoai, @MoTa, @HinhAnh)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@TenDH", txtTenDH.Text);
                cmd.Parameters.AddWithValue("@DonGia", int.Parse(txtDonGia.Text));
                cmd.Parameters.AddWithValue("@MaLoai", ddlLoaiDongHo.SelectedValue);
                cmd.Parameters.AddWithValue("@MoTa", txtMoTa.Text);
                cmd.Parameters.AddWithValue("@HinhAnh", fileName);
                if (cmd.ExecuteNonQuery() > 0)
                    Response.Redirect("QuanLyDongHo.aspx");
                else
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đăng ký thất bại')", true);
            }
        }
        }
    }