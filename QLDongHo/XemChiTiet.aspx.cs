using QLDongHo.Models;
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
    public partial class XemChiTiet : System.Web.UI.Page
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
                            lblMaDH.Text = reader["MaDH"].ToString();
                            lblTenDH.Text = reader["TenDH"].ToString();
                            int donGia = Convert.ToInt32(reader["DonGia"]);
                            lblDonGia.Text = donGia.ToString("N0") + " VNĐ";
                            lblMoTa.Text = reader["MoTa"].ToString();
                            imgDongHo.ImageUrl = "~/DongHoPic/" + reader["HinhAnh"].ToString();
                            // Làm tương tự với các thuộc tính khác.
                        }
                        conn.Close();
                    }
                }
            }
        }
    }
}