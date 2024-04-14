<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="XemChiTiet.aspx.cs" Inherits="QLDongHo.XemChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    body {
      background-color: #F3F3F3;
      height: 100vh;
        background: /*linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)),*/ url('HinhAnh/hinh10.png');
        background-size: cover;
        position: relative;
    }
    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: row;
      background-color: #fff;
      border-radius: 15px;
      padding: 25px;
      box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.15);
      color: #555;
      width: 80%;
      margin: auto;
    }

    .imgDongHo {
      width: 50%;
      height: auto;
      order: 1;
    }

    .detailInfo {
      width: 50%;
      padding-left: 20px;
      order: 2;
    }

    .detailInfo h2 {
      color: #333;
      margin-bottom: 20px;
    }

    .detailInfo p {
      line-height: 1.6;
      margin: 10px 0;
    }

    .detailInfo p span {
      font-weight: bold;
      color: #333;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1">
    <div class="container text-center">
        <div class="imgDongHo">
           <asp:Image CssClass="imgDongHo" ID="imgDongHo" runat="server" />
        </div>
        <div class="detailInfo">
           <h2 style="font-weight:bold;">Chi Tiết Sản Phẩm</h2>
           <p><span>Mã Sản Phẩm:</span> <asp:Label ID="lblMaDH" runat="server"></asp:Label></p>
           <p><span>Tên sản phẩm:</span> <asp:Label ID="lblTenDH" runat="server"/></p>
           <p><span>Đơn Giá:</span> <asp:Label ID="lblDonGia" runat="server"/></p>
           <p><span>Mô Tả:</span> <asp:Label ID="lblMoTa" runat="server"/></p>
        </div>
    </div>
    </form>
</asp:Content>