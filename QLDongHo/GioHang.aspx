<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="QLDongHo.GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- <asp:Repeater ID="rptGioHang" runat="server">
        <HeaderTemplate>
            <table id="cartTable">
            <tr>
                <th>Mã ĐH</th>
                <th>Tên ĐH</th>
                <th>Đơn giá</th>
                <th>Hình Ảnh</th>
                <!-- Thêm tiêu đề cột cho nút Xóa -->
                <th>Xóa</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Eval("MaDH")%></td>
                <td><%#Eval("TenDH")%></td>
                <td><%#String.Format("{0:#,##0} VNĐ", Eval("DonGia")) %></td>
                <td><img src="DongHoPic/<%# Eval("HinhAnh") %>" style="width:50%;"/></td>
                
                <!-- Thêm cột cho nút Xóa -->
                <td>
                    <asp:LinkButton ID="lnkBtnDelete" runat="server" CommandArgument='<%#Eval("MaDH") %>'
                    OnCommand="Delete_Command" CssClass="btn btn-danger">Xóa</asp:LinkButton>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>--%>
    <h1>Giỏ hàng</h1>
    <asp:GridView ID="gvGioHang" runat="server"
        CssClass="table table-bordered" AutoGenerateColumns="false"
        DataKeyNames="masp" OnRowDeleting="gvGioHang_RowDeleting"
                OnRowUpdating="gvGioHang_RowUpdating">
        <Columns>
            <asp:ImageField ItemStyle-HorizontalAlign="Center" DataImageUrlField="hinh"
                DataImageUrlFormatString="DongHoPic/{0}"
                HeaderText="Ảnh sản phẩm" ControlStyle-Width="150px">
            </asp:ImageField>
            <asp:BoundField HeaderText="Tên sản phẩm" DataField="tensp" />
            <asp:BoundField HeaderText="Đơn giá" DataField="DonGia"
                DataFormatString="{0:#,##0}đ" />
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtSoLuong" TextMode="Number" runat="server"
                        CssClass="form-control text-center" Width="100px" Text='<%# Eval("soluong")%>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Thành tiền" DataField="Thanhtien"
                DataFormatString="{0:#,##0}đ" />            
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btDelete" runat="server" CommandName="Delete" CssClass="btn btn-danger">
                         <i class="bi bi-trash"></i>  Delete</asp:LinkButton>
                     <asp:LinkButton ID="btUpdate" runat="server" CommandName="Update" CssClass="btn btn-secondary">
                          <i class="bi bi-pencil-square"></i> Update
                            </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <div class="alert alert-info">
                Chưa có sản phẩm trong giỏ
            </div>
        </EmptyDataTemplate>
    </asp:GridView>
    <div class="row">
        <div class="col-md-6">
            <a href="TrangChu.aspx" class="btn btn-info">Tiếp tục mua hàng</a>
        </div>
        <div class="col-md-6 text-right">
            <asp:Label ID="lbTongTien" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div class="row" style="padding-bottom: 10px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btDatHang" runat="server" Text="Đặt hàng" CssClass="btn btn-success" OnClick="btDatHang_Click" />
        </div>
    </div>

</asp:Content>
