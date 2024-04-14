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
    public partial class QuanLyDongHo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void rptDongHo_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "SuaDongHo")
            {
                int maDH = Convert.ToInt32(e.CommandArgument);
                Response.Redirect($"SuaDongHo.aspx?MaDH={maDH}", true);
            }
            if (e.CommandName == "Delete")
            {
                int maDH = Convert.ToInt32(e.CommandArgument);
                string connectionString = ConfigurationManager.ConnectionStrings["DoAnDongHoConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);

                // SQL command to get the image name from DongHo table
                string getImgName = "SELECT HinhAnh FROM DongHo WHERE MaDH = @MaDH";
                SqlCommand cmdGetImgName = new SqlCommand(getImgName, conn);
                cmdGetImgName.Parameters.AddWithValue("@MaDH", maDH);

                string imgName;

                conn.Open();

                imgName = (string)cmdGetImgName.ExecuteScalar();

                string filePath = Server.MapPath("DongHoPic/" + imgName);
                if (File.Exists(filePath))
                {
                    File.Delete(filePath);
                }

                // SQL command to delete from ChiTietDH table
                string deleteChiTietDH = "DELETE FROM ChiTietDH WHERE MaDH = @MaDH";
                SqlCommand cmdChiTietDH = new SqlCommand(deleteChiTietDH, conn);
                cmdChiTietDH.Parameters.AddWithValue("@MaDH", maDH);

                // SQL command to delete from DongHo table               
                string deleteDongHo = "DELETE FROM DongHo WHERE MaDH = @MaDH";
                SqlCommand cmdDongHo = new SqlCommand(deleteDongHo, conn);
                cmdDongHo.Parameters.AddWithValue("@MaDH", maDH);

                cmdChiTietDH.ExecuteNonQuery(); // Execute delete command for ChiTietDH table
                cmdDongHo.ExecuteNonQuery(); // Execute delete command for DongHo table

                conn.Close();
                rptDongHo.DataBind();
            }
        }

        protected void btTraCuu_Click(object sender, EventArgs e)
        {

        }

        protected void txtTen_TextChanged(object sender, EventArgs e)
        {

        }
    }
}