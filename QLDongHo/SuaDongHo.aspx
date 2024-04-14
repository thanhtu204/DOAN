<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SuaDongHo.aspx.cs" Inherits="QLDongHo.SuaDongHo" %>
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
        <h2>Chỉnh sửa sản phẩm</h2>
        <asp:Label ID="lblMaDH" runat="server" Text="Mã sản phẩm" />
        <asp:TextBox ID="txtMaDH"  runat="server" ReadOnly="True" />
        <br />
        <asp:Label ID="lblmaLoai" runat="server" Text="Mã loại đồng hồ" />
        <asp:TextBox ID="txtMaLoai" runat="server" />
        <br />
        <asp:Label ID="lblTenDH" runat="server" Text="Tên sản phẩm" />
        <asp:TextBox ID="txtTenDH" runat="server" />
        <br />
        <asp:Label ID="lblDonGia" runat="server" Text="Đơn giá" />
        <asp:TextBox ID="txtDonGia" runat="server" />
        <br />
        <asp:Label ID="lblMoTa" runat="server" Text="Mô Tả" />
        <asp:TextBox ID="txtMoTa" runat="server" />
        <br /><br />
         <asp:Image ID="imgDongHo" runat="server" Width="150" />
        <br /><br />
        <asp:FileUpload ID="fuHinhAnh" runat="server" />

        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-danger" Text="Cập nhật" OnClick="btnSubmit_Click" />
    </div>
    </form>
</asp:Content>
