<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QuanLyDongHo.aspx.cs" Inherits="QLDongHo.QuanLyDongHo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
            body {
        height: 100vh;
        background: /*linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.7)),*/ url('HinhAnh/hinh10.png');
        background-size: cover;
        position: relative;
    }
        .button-group {
        justify-content: space-between;
        }
        .card-img-top {
            width: 50%;
            margin: auto;
        }
         img:hover {
    transform: scale(1.2); 
    transition: transform .2s;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div class="col-md-6">
               <div class="form-inline">
                    Tên đồng hồ <asp:TextBox ID="txtTen" runat="server" CssClass="form-control" OnTextChanged="txtTen_TextChanged"></asp:TextBox>
                   <asp:Button ID="btTraCuu" runat="server" Text="Tra cứu" CssClass="btn btn-secondary" OnClick="btTraCuu_Click" />
               </div>
         </div>
    <asp:SqlDataSource ID="dsQuanLyDongHo" runat="server" ConnectionString="<%$ ConnectionStrings:DoAnDongHoConnectionString %>" SelectCommand="SELECT * FROM [DongHo] WHERE ([TenDH] LIKE '%' + @TenDH + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTen" DefaultValue="Casio" Name="TenDH" PropertyName="Text" Type="String" />
        </SelectParameters>
             </asp:SqlDataSource>
    <div class="row">
    <asp:Repeater ID="rptDongHo" runat="server" DataSourceID="dsQuanLyDongHo" OnItemCommand="rptDongHo_ItemCommand">
<ItemTemplate>
    <div class="col-md-4">
        <div class="card text-center" style="width:100%;">
            <img class="card-img-top zoom" src="DongHoPic/<%# Eval("HinhAnh") %>" />
            <div class="card-body">
                <h5 class="card-title"><%# Eval("TenDH") %></h5>
                <p class="card-text">Giá bán: <span class="text-danger"><%# Eval("DonGia","{0:#,##0} VNĐ") %></span></p>
                <div class="button-group">
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("MaDH") %>' CssClass="btn btn-success" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="SuaDongHo" CommandArgument='<%# Eval("MaDH") %>' CssClass="btn btn-danger" />
                </div>
            </div>
        </div>
    </div>
</ItemTemplate>
    </asp:Repeater>
</div>
    </asp:Content>
