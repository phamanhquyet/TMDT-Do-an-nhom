<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThongTinThanhToan.aspx.cs" Inherits="IS_385_E_DoAnNhom_Nhom1.ThongTinThanhToan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         .btnmua{
             padding: 10px 18px;
            background-color: #ff8b04;
            color: white;
            border-radius: 5px;
            font-weight: bold;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:40px;">

        <h2><b>THÔNG TIN THANH TOÁN</b></h2>
        <!--Tên gọi & Số điện thoại -->
        <div class="row">
            <div class="col-md-6">
                <label>Tên gọi *</label>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="txt_TenGoi" runat="server" placeholder="Họ và tên của bạn"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-6">
                <label>Số điện thoại *</label>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="txt_sodienthoai" runat="server" placeholder="Số điện thoại của bạn" TextMode="Number"></asp:TextBox>
                </div>
            </div>
        </div>

        <!--Email-->
        <div class="row">
            <div class="col-md-12">
                <label>Email *</label>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Họ và tên của bạn"></asp:TextBox>
                </div>
            </div>
        </div>

        <!--Tỉnh\Thành phố-->
        <div class="row">
            <div class="col-md-6">
                <label>Tỉnh\Thành phố *</label>
                <div class="form-group">
                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                        <asp:ListItem Text="Đà Nẵng" Value="Đà Nẵng" />
                        <asp:ListItem Text="Quảng Nam" Value="Quảng Nam" />
                        <asp:ListItem Text="Quảng Ngãi" Value="Quảng Ngãi" />
                        <asp:ListItem Text="Hà Nội" Value="Hà Nội" />
                        <asp:ListItem Text="Hồ Chí Minh" Value="Hồ Chí Minh" />
                        <asp:ListItem Text="Huế" Value="Huế" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-6">
                <label>Quận\Huyện *</label>
                <div class="form-group">
                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                        <asp:ListItem Text="Quận Hải Châu." Value="Quận Hải Châu." />
                        <asp:ListItem Text="Quận Cẩm Lệ" Value="Quận Cẩm Lệ" />
                        <asp:ListItem Text="Quận Thanh Khê" Value="Quận Thanh Khê" />
                        <asp:ListItem Text="Quận Liên Chiểu." Value="Quận Liên Chiểu." />
                        <asp:ListItem Text="Quận Ngũ Hành Sơn." Value="Quận Ngũ Hành Sơn." />
                        <asp:ListItem Text="Quận Sơn Trà" Value="Quận Sơn Trà" />
                        <asp:ListItem Text="Huyện Hòa Vang." Value="Huyện Hòa Vang." />
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <!--Xã Phường-->
        <div class="row">
            <div class="col-md-12">
                <label>Xã Phường *</label>
                <div class="form-group">
                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                        <asp:ListItem Text="Bình Thuận" Value="Bình Thuận" />
                        <asp:ListItem Text="Nam Dương" Value="Nam Dương" />
                        <asp:ListItem Text="Khuê Trung" Value="Khuê Trung" />
                        <asp:ListItem Text="Bình Hiên." Value="Bình Hiên." />
                        <asp:ListItem Text="Hải Châu 1" Value="Hải Châu 1" />
                        <asp:ListItem Text="Phường Hòa Khánh Bắc" Value="Phường Hòa Khánh Bắc" />
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <!--Địa chỉ-->
        <div class="row">
            <div class="col-md-12">
                <label>Địa chỉ *</label>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="txtDiaChi" runat="server" placeholder="Địa chỉ"></asp:TextBox>
                </div>
            </div>
        </div>

        <!--Ghi chú-->
        <div class="row">
            <div class="col-md-12">
                <label>Ghi chú đơn hàng (Tuỳ chọn)</label>
                <div class="form-group">
                    <asp:TextBox CssClass="form-control" ID="txtGhiChu" runat="server" placeholder="Ghi chú về đơn hàng , ví dụ thời gian hay địa chỉ cụ thể cần giao đến." TextMode="MultiLine" Rows="4"></asp:TextBox>
                </div>
            </div>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Mua Hàng" CssClass="btnmua" OnClick="Button1_Click" />
            <asp:Label ID="lbthongbao" runat="server" Text="" style="color:red; font-size:24px;"></asp:Label>
            <asp:Label ID="lbthongbao2" runat="server" Text="" style="color:green; font-size:24px;"></asp:Label>
        </div>
        <div>

        </div>
    </div>
</asp:Content>
