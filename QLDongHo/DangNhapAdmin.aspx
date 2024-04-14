<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DangNhapAdmin.aspx.cs" Inherits="QLDongHo.DangNhapAdmin" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            height: 100vh;
            background: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)), url('HinhAnh/hinh2.png');
            background-size: cover;
            position: relative;
        }
        .login-form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 350px;
            background: rgba(128, 128, 128, 0.3);
            padding: 40px;
            border-radius: 10px;
            color: white;
            margin-top: 30px; 
        }
        .login-form h2 {
            text-align: center;
        }
        .login-form input {
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
            background-image: linear-gradient(to right, #800000 50%, #FF7F50 50%);
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
             background-color: rgba(255, 255, 255, 0.8);
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
        .inputWithLabel input {
            width: 100%;
            height: 40px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            box-sizing: border-box;
        }

        .inputWithLabel label {
            position: absolute;
            color: #999;
            font-size: 18px;
            top: 10px;
            left: 10px;
            transition: top 0.5s ease, font-size 0.5s ease;
        }

        .inputWithLabel input:focus + label,
        .inputWithLabel input:valid + label {
            top: -20px;
            left: 5px;
            font-size: 14px;
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
        <div class="login-form">
            <h2 style="text-align:left;">Admin Login</h2>
            <div class="form-group inputWithLabel">
                <asp:TextBox ID="txtTaiKhoan" runat="server" CssClass="form-control" required />
                <asp:Label runat="server" AssociatedControlID="txtTaiKhoan" CssClass="label-floating">Tài Khoản</asp:Label>
            </div>
            <div class="form-group inputWithLabel">
                <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" CssClass="form-control" required />
                <asp:Label runat="server" AssociatedControlID="txtMatKhau" CssClass="label-floating">Mật khẩu</asp:Label>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Đăng Nhập" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click"/>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtTaiKhoan"
                            ErrorMessage="- Email không được để trống"
                            ForeColor="Red"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                                ControlToValidate="txtTaiKhoan"
                                ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                                ErrorMessage="- Email nhập không hợp lệ"
                                ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
    </form>
</asp:Content>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            height: 100vh;
            background: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)), url('HinhAnh/hinh2.png');
            background-size: cover;
            position: relative;
        }
        .login-form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 350px;
            background: rgba(128, 128, 128, 0.3);
            padding: 40px;
            border-radius: 10px;
            color: white;
            margin-top: 30px; 
        }
        .login-form h2 {
            text-align: center;
        }
        .login-form input {
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
            background-image: linear-gradient(to right, #800000 50%, #FF7F50 50%);
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
             background-color: rgba(255, 255, 255, 0.8);
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

        .form-group {
            position: relative;
            margin-top: 35px;
            margin-bottom: 20px;
        }
        .inputWithLabel input {
            width: 100%; /* Đặt độ rộng giống nhau cho tất cả các textbox */
            height: 40px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            box-sizing: border-box; /* Đảm bảo padding và border không làm độ rộng hộp văn bản vượt quá 100% */
        }

        .inputWithLabel label {
            position: absolute;
            color: #999;
            font-size: 18px;
            top: 10px;
            left: 10px;
            transition: top 0.5s ease, font-size 0.5s ease;
        }

        .inputWithLabel input:focus + label,
        .inputWithLabel input:valid + label {
            top: -20px;
            left: 5px;
            font-size: 14px;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("body").css("display", "none");
            $("body").fadeIn(2000);

            $("a.transition").click(function (event) {
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
        <div class="login-form">
            <h2 style="text-align:left;">Admin Login</h2>
<div class="form-group inputWithLabel">
    <asp:TextBox ID="txtTaiKhoan" runat="server" CssClass="form-control" required />
    <asp:Label runat="server" AssociatedControlID="txtTaiKhoan" CssClass="label-floating">Email</asp:Label>
</div>
<div class="form-group inputWithLabel">
    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" CssClass="form-control" required />
    <asp:Label runat="server" AssociatedControlID="txtMatKhau" CssClass="label-floating">Mật khẩu</asp:Label>
</div>
            <asp:Button ID="btnLogin" runat="server" Text="Đăng Nhập" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click" />
            <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="~/DangKy.aspx" CssClass="d-block mt-3 text-center text-white transition">Chưa có tài khoản? Đăng ký ngay</asp:HyperLink>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtTaiKhoan"
                            ErrorMessage="- Email không được để trống"
                            ForeColor="Red"></asp:RequiredFieldValidator> <br />
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                                ControlToValidate="txtTaiKhoan"
                                ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                                ErrorMessage="- Email nhập không hợp lệ"
                                ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
    </form>
</asp:Content>