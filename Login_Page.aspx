<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="IS_385_E_DoAnNhom_Nhom1.Login_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <!--Form ĐĂNG NHẬP-->
            <div class="col" style="margin-top:30px;">

                <div class="row">
                    <div class="col">
                        <h3><b>ĐĂNG NHẬP</b></h3>
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <label>Tên tài khoản hoặc địa chỉ ID *</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="txtTenTaiKhoan" runat="server"></asp:TextBox>
                        </div>

                        <label>Mật khẩu *</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Button style="background-color: #ff8b04; border: none" class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Đăng nhập" OnClick="Button1_Click"/>
                        </div>
                        <div>
                            <asp:Label style="color:Red; font-size:14px;" ID="lblogin" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>

            </div>

            <!--ĐĂNG KÍ-->
            <%--<div class="col">
                <div class="row">
                    <div class="col">
                        <h3><b>ĐĂNG KÍ</b></h3>
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <!--Email-->
                    <div class="col">
                        <label>Địa chỉ Email *</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="txtEmailAdress" runat="server"></asp:TextBox>
                        </div>

                         <div class="form-group">
                             <h4>A link to set a new password will be sent to your email address.</h4>
                        </div>

                         <div class="form-group">
                             <h5>Dữ liệu cá nhân của bạn sẽ được sử dụng để hỗ trợ trải nghiệm của bạn trên toàn bộ trang web này, để quản lý quyền truy cập vào tài khoản của bạn và cho các mục đích khác được mô tả trong chính sách riêng tư.</h5>
                        </div>

                        <div class="form-group">
                            <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="Đăng kí" />
                        </div>
                    </div>
                </div>

            </div>--%>
        </div>

    </div>
</asp:Content>
