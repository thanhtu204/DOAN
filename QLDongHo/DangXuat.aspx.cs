using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLDongHo
{
    public partial class DangXuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("username"); // Xóa biến username khỏi phiên
            Response.Redirect("DangNhap.aspx"); // Sẽ quay lại trang Đăng nhập sau khi đăng xuất 
        }
    }
}