<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="QLDongHo.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
    body {
        height: 100vh;
        background: /*linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)),*/ url('HinhAnh/hinh10.png');
        background-size: cover;
        position: relative;
    }
    .imageContainer {
        position: relative;
        overflow: hidden;
        width: 100%;
    }

    .imageContainer img {
        width: 100%;
        -webkit-transition: -webkit-transform 0.5s ease;
        transition: transform 0.5s ease;
    }

    .imageContainer:hover img {
        -webkit-transform: scale(1.2);
        transform: scale(1.2);
    }

    .imageContainer .overlay {
        background: rgba(0,0,0,0.5);
        position: absolute;
        top: 0; bottom: 0; left: 0; right: 0;
        transition: opacity .2s;
        opacity: 0;
    }

    .imageContainer:hover .overlay {
        opacity: 1;
    }

    .imageContainer .overlay p {
        color: #fff;
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%,-50%);
        -ms-transform: translate(-50%,-50%);
        transform: translate(-50%,-50%);
        text-align: center;
    }
.btn-success {
            color: #fff;
            background-color: #5cb85c;
            border-color: #4cae4c;
            transition: color 0.5s, background-color 0.5s, border-color 0.5s; /* Add transitions */
        }

        .btn-success:hover {
            color: #fff;
            background-color: red;
            border-color: red;
        }
        .carousel .carousel-item {
        height: 650px;
        width: 100%; /* Thay đổi giá trị này để điều chỉnh kích thước của hình ảnh */
    }

    .carousel-item img {
        position: absolute;
        top: 0;
        left: 0;
        min-height: 600px;  /* Thay đổi giá trị này để điều chỉnh kích thước của hình ảnh */
         height: 100%;
    width: auto;
    }

    /* Thêm hiệu ứng chuyển đổi */
    .carousel-item {
        transition: transform 2s ease-in-out;
    }
    .rounded-border {
    border: 1px solid #333; /* Chọn màu viền của bạn */
    border-radius: 20px; /* Điều chỉnh độ cong của góc */
    /*padding: 2px;*/ /* Điều chỉnh bên trong của div */
    box-shadow: 5px 5px 10px rgba(0,0,0,0.5); /* Thêm hiệu ứng nổi bóng */
    transition: all 0.5s ease; /* Thêm hiệu ứng chuyển tiếp */
    margin-top: 15px;
}

.rounded-border:hover {
    box-shadow: 0px 0px 10px rgba(0,0,0,0.9); /* Thay đổi hiệu ứng nổi bóng khi di chuột qua */
    transform: translateY(-10px); /* Di chuyển div lên một chút */
}
.datapager-container {
    width: 100%;
    text-align: center;
    background-color:#CC33FF;
}
.datapager-container a {
    display: inline-block;
    padding: 10px;
    margin-right: 5px;
    background: purple; /* Màu nền của các liên kết */
    color: white; /* Màu chữ của các liên kết */
    text-decoration: none;
    border-radius: 5px; /* Bo góc cho các liên kết */
}

/* Hiệu ứng hover */
.datapager-container a:hover {
    background: #777; /* Màu nền khi rê chuột vào */
    color: #fff; /* Màu chữ khi rê chuột vào */
} 

.datapager-container span {
    padding: 10px;
    margin-right: 5px;
    background: #CC33FF; /* Màu nền của trang hiện tại */
    color: #fff; /* Màu chữ của trang hiện tại */
    border-radius: 5px; /* Bo góc cho trang hiện tại */
}
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="HinhMenu/hinh7.png" alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="HinhMenu/hinh8.png" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="HinhMenu/hinh9.png" alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <asp:SqlDataSource ID="dsDongHoTheoNav" runat="server" ConnectionString="<%$ ConnectionStrings:DoAnDongHoConnectionString %>" SelectCommand="SELECT * FROM [DongHo] WHERE ([MaLoai] = @MaLoai)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="MaLoai" QueryStringField="maloai" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
<div class="row">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="dsDongHoTheoNav" >
        <ItemTemplate>
            <div class="col-md-4 width:500px text-center rounded-border">
                <a href='XemChiTiet.aspx?MaDH=<%# Eval("MaDH") %>' class="imageContainer">
                    <img src="DongHoPic/<%# Eval("HinhAnh") %>" style="width:50%;"/>
                    <div class="overlay"><span class="overlay-text" style="color:white;">Xem chi tiết</span></div>
                </a>
                <p><%# Eval("TenDH") %></p>
                <p>Giá bán: <span style="color:red;"><%# Eval("DonGia","{0:#,##0} VNĐ") %></span> </p>
                <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" OnClick="btAddToCart_Click" CommandArgument='<%# Eval("MaDH") %>' CssClass="btn btn-success"/> <br />
            </div>
        </ItemTemplate>
        <LayoutTemplate>
        <div class="row">
            <div runat="server" id="itemPlaceHolder"></div>
        </div>
            <div class="datapager-container">
                <asp:DataPager ID="dpDongHo" runat="server" PageSize="6">
                    <Fields>
                        <asp:NumericPagerField />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
    </asp:ListView>
   
</div>
   
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
    <footer style="background-color: rgba(0, 0, 0, 0.5); color:antiquewhite">
    <div class="container" >
        <div class="row">
            <div class="col-md-3  mt-3">
                <h5 style="font-weight:bold;">THÔNG TIN</h5>
                <ul>
                    <li>Tin tức</li>
                    <li>Khuyến mãi</li>
                    <li>Tuyển dụng</li>
                    <li>Nhượng quyền</li>
                </ul>
            </div>
            <div class="col-md-3  mt-3">
                <h5 style="font-weight:bold;">HỖ TRỢ</h5>
                <ul>
                    <li>Điều khoản sử dụng</li>
                    <li>Chính sách bảo mật</li>
                    <li>Chính sách giao hàng</li>
                    <li>Chăm Sóc Khách Hàng</li>
                </ul>
            </div>
            <div class="col-md-3  mt-3">
                <h5 style="font-weight:bold;">THEO DÕI</h5>
                <ul>
                    <i class="fab fa-facebook-f"></i> Facebook <br />
                    <i class="fab fa-instagram"></i> Instagram
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h5 style="font-weight:bold;">Chăm sóc khách hàng</h5>
                <p>Call us at 1800-0000</p>
            </div>
        </div>
    </div>
</footer>
</asp:Content>