<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ThemDongHo.aspx.cs" Inherits="QLDongHo.ThemDongHo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2; 
            height: 100vh;
        background: /*linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)),*/ url('HinhAnh/hinh10.png');
        background-size: cover;
        position: relative;
        }

        h2 {
            text-align: center;
            color: #252525;
        }

        .container {
            width: 500px;
            margin: 60px auto; /* Add top margin */
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff; /* Add light background to the form */
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1); /* Add box-shadow */
        }

        label {
            display: block; /* Make labels display block */
            margin-top: 20px;
            color: #555;
        }

        input[type=text], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background: #f8f8f8; 
        }

        #btnSubmit {
            display: block; /* Center button */
            width: 100px;
            height: 50px;
            margin: 20px auto;
            background-color: #008CBA; /* Colorful button */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }

        #btnSubmit:hover {
            background-color: #007B9A; /* Darken button on hover */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1">
    <div class="container">
        <asp:SqlDataSource runat="server" id="dsLoai" ConnectionString="<%$ ConnectionStrings:DoAnDongHoConnectionString %>" SelectCommand="SELECT * FROM [LoaiDH]"></asp:SqlDataSource>
        <h2>Thêm sản phẩm</h2>
        <!-- Thêm các thành phần khác tương tự như đây... -->
        <asp:Label ID="lblTenDH" runat="server" Text="Tên sản phẩm" />
        <asp:TextBox ID="txtTenDH" runat="server" />
        <br />
        <asp:Label ID="lblDonGia" runat="server" Text="Đơn giá" />
        <asp:TextBox ID="txtDonGia" runat="server" />
        <br />
        <asp:Label ID="lblLoaiDH" runat="server" Text="Loại Đồng Hồ: " />
        <asp:DropDownList id="ddlLoaiDongHo" runat="server" DataSourceID="dsLoai" DataTextField="TenLoai" DataValueField="MaLoai"></asp:DropDownList><br />
        <asp:Label ID="lblMoTa" runat="server" Text="Mô Tả" />
        <asp:TextBox ID="txtMoTa" runat="server" />
        <br />
         <asp:Image ID="imgDongHo" runat="server" Width="150" />
        <br />
        <asp:FileUpload ID="fuHinhAnh" runat="server" />
        <asp:Button ID="btnThem" runat="server" Text="Thêm Đồng Hồ" OnClick="btnThem_Click"  />
    </div>
    </form>
</asp:Content>
