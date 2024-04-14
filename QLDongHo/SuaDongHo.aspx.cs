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
    public partial class SuaDongHo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int maDH;
                if (int.TryParse(Request.QueryString["MaDH"], out maDH))
                {
                    string connStr = ConfigurationManager.ConnectionStrings["DoAnDongHoConnectionString"].ToString();
                    using (SqlConnection conn = new SqlConnection(connStr))
                    {
                        conn.Open();
                        string sql = "SELECT * FROM DongHo WHERE MaDH = @MaDH";
                        SqlCommand cmd = new SqlCommand(sql, conn);
                        cmd.Parameters.AddWithValue("MaDH", maDH);
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read()) //giả định MaDH là duy nhất và chỉ trả về 1 hàng
                        {
                            txtMaDH.Text = reader["MaDH"].ToString();
                            txtTenDH.Text = reader["TenDH"].ToString();
                            txtDonGia.Text = reader["DonGia"].ToString();
                            txtMoTa.Text = reader["MoTa"].ToString();
                            txtMaLoai.Text = reader["MaLoai"].ToString();
                            imgDongHo.ImageUrl = "~/DongHoPic/" + reader["HinhAnh"].ToString();
                            // Làm tương tự với các thuộc tính khác.
                        }
                        conn.Close();
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int maDH = int.Parse(txtMaDH.Text);
            int maLoai = int.Parse(txtMaLoai.Text);
            string tenDH = txtTenDH.Text;
            string moTa = txtMoTa.Text;
            int donGia = int.Parse(txtDonGia.Text); // change from decimal.Parse to int.Parse
            string fileName = string.Empty;

            if (fuHinhAnh.HasFile)  // check if user has uploaded a file
            {
                fileName = Path.GetFileName(fuHinhAnh.PostedFile.FileName); // get image file name
                // Save the image in 'DongHoPic' folder
                fuHinhAnh.SaveAs(Server.MapPath("~/DongHoPic/" + fileName));
            }
            else
            {
                fileName = Path.GetFileName(imgDongHo.ImageUrl); // if no new file was uploaded, use the current image
            }
            // Update data in SQL Server database
            string connStr = ConfigurationManager.ConnectionStrings["DoAnDongHoConnectionString"].ToString();
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string sql = "UPDATE DongHo SET TenDH=@TenDH, MaLoai=@MaLoai ,DonGia=@DonGia, HinhAnh=@HinhAnh, MoTa=@MoTa WHERE MaDH=@MaDH";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("MaDH", maDH);
                cmd.Parameters.AddWithValue("TenDH", tenDH);
                cmd.Parameters.AddWithValue("DonGia", donGia);
                cmd.Parameters.AddWithValue("MaLoai", maLoai);
                cmd.Parameters.AddWithValue("MoTa", moTa);
                cmd.Parameters.AddWithValue("HinhAnh", fileName); // Update database with new image file name
                cmd.ExecuteNonQuery();  // Execute the SQL UPDATE command
                conn.Close();
            }

            // After successfully updating you can redirect user to the homepage or display update success message
            Response.Redirect("QuanLyDongHo.aspx");
        }
    }
}