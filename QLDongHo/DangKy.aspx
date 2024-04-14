<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="QLDongHo.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            height: 100vh;
            background:  url('HinhAnh/hinh3.png');
            background-size: cover;
            position: relative;
        }
        .signup-form {
            position: absolute;
            top: 50%;
            left: 25%;
            transform: translate(-50%, -50%);
            width: 350px;
            background: rgba(0,0,0,.1);
            padding: 40px;
            border-radius: 10px;
            color: black;
            margin-top: 30px;           
        }
        .signup-form h2 {
            text-align: center;
        }
        .signup-form input {
            margin-bottom: 20px;
        }
        .btn.btn-primary.btn-block {
    background: #007bff; /* màu nền ban đầu của nút */
    background-size: 200% auto; /* cần set cho background-size lớn hơn 100% để tạo hiệu ứng chạy */
    border: none;
    color: rgba(0,0,0,.7);
    font-weight:bold;
    transition: background-position .5s, color .5s; /* thêm chuyển đổi cho background-position và color */
    transition-timing-function: linear; /* hiệu ứng chạy đều từ đầu đến cuối */
    background-image: linear-gradient(to right, #000000 50%, #808080 50%);
    /* sử dụng linear-gradient cho background-image để tạo hiệu ứng mã màu */
    background-position: right center;
}

.btn.btn-primary.btn-block:hover,
.btn.btn-primary.btn-block:focus {
    background-position: left center; /* khi hover, di chuyển vị trí background sang trái */
    color: #ffffff;
    border-color: #660000; /* Màu border khi di chuột qua hoặc focus */
}
.form-control {
    background-color: rgba(255, 255, 255, 0.7); /* Đặt màu nền là màu xám trong suốt */
    border: none; /* Xóa bỏ viền */
    color: black; /* Đặt màu chữ là đen */
}
 a#lnkRegister:active {
            transition: all 0.2s ease-in-out;
            transform: scale(1.1);
        }
        a#lnkRegister:hover {
            color: #ff4500;
        }
    </style>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    $(document).ready(function() {
        $("body").css("display", "none");
        $("body").fadeIn(2000);

        $("a.transition").click(function(event){
            event.preventDefault();
            linkLocation = this.href;
            $("body").fadeOut(1000, redirectPage);
        });

        function redirectPage() {
            window.location = linkLocation;
        }
    });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1">
        <div class="signup-form">
            <h2 style="text-align:left;">Đăng ký</h2>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtHoTen" CssClass="form-label">Họ tên</asp:Label>
                <asp:TextBox ID="txtHoTen" PlaceHolder="Nhập họ tên" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtDiaChi" CssClass="form-label">Địa chỉ</asp:Label>
                <asp:TextBox ID="txtDiaChi" PlaceHolder="Nhập địa chỉ" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtSDT" CssClass="form-label">Số điện thoại</asp:Label>
                <asp:TextBox ID="txtSDT" PlaceHolder="Nhập SĐT" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtNgaySinh" CssClass="form-label">Ngày Sinh</asp:Label>
                <asp:TextBox ID="txtNgaySinh" type="date" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtTenDangNhap" CssClass="form-label">Tên đăng nhập</asp:Label>
                <asp:TextBox ID="txtTenDangNhap" PlaceHolder="Vui lòng nhập email" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtMatKhauDangKy" CssClass="form-label">Mật khẩu</asp:Label>
                <asp:TextBox ID="txtMatKhauDangKy" type="password" PlaceHolder="Nhập mật khẩu" runat="server" TextMode="Password" CssClass="form-control" />
            </div>
            <asp:Button ID="btnSignUp" runat="server" Text="Đăng Ký" CssClass="btn btn-primary btn-block" OnClick="btnSignUp_Click" />
            <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="~/DangNhap.aspx" CssClass="d-block mt-3 text-center text-body transition">Đã có tài khoản? Đăng nhập ngay</asp:HyperLink>       
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtHoTen" ErrorMessage="Họ tên không được để trống" ForeColor="Red" />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDiaChi" ErrorMessage="Địa chỉ không được để trống" ForeColor="Red" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSDT" ErrorMessage="Số điện thoại không được để trống" ForeColor="Red" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNgaySinh" ErrorMessage="Ngày sinh không được để trống" ForeColor="Red" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTenDangNhap" ErrorMessage="Tên đăng nhập không được để trống" ForeColor="Red" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMatKhauDangKy" ErrorMessage="Mật khẩu không được để trống" ForeColor="Red" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtHoTen" ValidationExpression="^[a-zA-Z\s]+$" ErrorMessage="Họ tên không được chứa số" ForeColor="Red" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtSDT" ValidationExpression="^[0-9]+$" ErrorMessage="Số điện thoại không được chứa chữ" ForeColor="Red" />
        </div>
    </form>
</asp:Content>