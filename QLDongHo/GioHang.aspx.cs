using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QLDongHo.Models;

namespace QLDongHo
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (Session["cart"] != null)
                //{
                //    List<int> cart = (List<int>)Session["cart"];  // Get the cart from session

                //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DoAnDongHoConnectionString"].ConnectionString);
                //    conn.Open();

                //    // Prepare select SQL command based on cart items
                //    string selectSql = "SELECT * FROM DongHo WHERE MaDH IN (" + string.Join(", ", cart) + ")";

                //    // Create new SQL Adapter
                //    SqlDataAdapter adapter = new SqlDataAdapter(selectSql, conn);
                //    DataTable dt = new DataTable();
                //    adapter.Fill(dt);

                //    // Bind data to your Repeater on GioHang.aspx
                //    rptGioHang.DataSource = dt;
                //    rptGioHang.DataBind();

                //    conn.Close();
                //}
                if (!IsPostBack)
                {
                    NapDuLieu();
                }
            }


        }
        private void NapDuLieu()
        {
            Cart cart = (Cart)Session["CART"];
            if (cart != null)

            {
                //liên kết dữ liệu cho gvGioHang
                gvGioHang.DataSource = cart.Items;
                gvGioHang.DataBind();
                //gán tổng thành tiền cho Label
                lbTongTien.Text = string.Format("Tổng thành tiền: <b> {0: #,##0} đồng </b>",
                cart.Total);
            }
        }
        protected void gvGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //b1. lấy mã sản phẩm cần xoá khỏi giỏ hàng
            int masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
            //b2.lấy giỏ hàng từ Session
            Cart cart = (Cart)Session["CART"];
            //b3.Xoá sản phẩm khỏi giỏ
            cart.Delete(masp);
            //b4.Nạp lại dữ liệu cho gvGioHang (làm tươi lại giao diện)
            NapDuLieu();
        }
        protected void gvGioHang_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //b1. lấy mã sản phẩm cần xoá khỏi giỏ hàng và số lượng
            int masp = int.Parse(gvGioHang.DataKeys[e.RowIndex].Value.ToString());
            int soluong =int.Parse(((TextBox)gvGioHang.Rows[e.RowIndex].FindControl("txtSoLuong")).Text);
            //b2.lấy giỏ hàng từ Session
            Cart cart = (Cart)Session["CART"];
            //b3.Cập nhật lại số lượng cho sản phẩm
            cart.Update(masp, soluong);
            //b4.Nạp lại dữ liệu cho gvGioHang (làm tươi lại giao diện)
            NapDuLieu();
        }

        protected void btDatHang_Click(object sender, EventArgs e)
        {
            // Kiểm tra nếu người dùng đã đăng nhập
            if (Session["username"] != null && Session["userid"] != null)
            {
                Response.Write("<script>alert('Đơn hàng của bạn đã được đặt thành công!');</script>");
            }
            else
            {
                Response.Write("<script>alert('Đặt hàng thất bại. Vui lòng đăng nhập trước!');</script>");
            }
        }
    }
}