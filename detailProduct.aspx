<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="detailProduct.aspx.cs" Inherits="IS_385_E_DoAnNhom_Nhom1.detailProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .datalistitem {
            display: flex;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-2"></div>
    <div class="detail col-md-10" style="flex-direction:column;">
        <asp:DataList ID="dldetail" runat="server" Width="100%">
            <ItemTemplate>
                <div class="datalistitem">
                    <div style="margin-right:12px;" class="detail-img-div">
                        <img  src='<%# "assets/img/" + Eval("Hinhchinh") %>' class="detail-img" alt="Alternate Text" />
                    </div>
                    <div class="detail-des">
                        <asp:Label class="detail-des-title" ID="detailtitle" runat="server" Text='<%#Eval("Tensanpham") %>'></asp:Label>
                        <asp:Label class="detail-price" ID="price" runat="server" Text='<%#Eval("gia") %>'></asp:Label>
                        <asp:Label class="detail-info" ID="info" runat="server" Text="Thông tin chung"></asp:Label>
                        <ul class="detail-des-list-info">
                            <li class="detail-des-margin-top detail-des-manufacturer">Hãng sản xuất: <%#Eval("Manhasx") %></li>
                            <li class="detail-des-margin-top detail-des-status">Tình trạng: <%#Eval("Status") %></li>
                            <li class="detail-des-margin-top detail-des-insurance"><%#Eval("Mota") %></li>
                        </ul>
                        <asp:Label class="detail-info" ID="info2" runat="server" Text="MIỄN PHÍ GIAO HÀNG"></asp:Label>
                        <ul class="detail-des-list-info">
                            <li class="detail-des-margin-top detail-des-manufacturer">Giao hàng siêu tốc nội thành</li>
                            <li class="detail-des-margin-top detail-des-status">Giao hàng miễn phí toàn quốc</li>
                            <li class="detail-des-margin-top detail-des-insurance">Nhận hàng và thanh toán tại nhà (ship COD)</li>
                        </ul>
                        <div class="detail-amount">
                            <asp:TextBox class="quantities-input" ID="quantities" runat="server"></asp:TextBox>
                            <asp:RangeValidator style="color:red; font-size:14px;" ControlToValidate="quantities" ID="RangeValidator1" MinimumValue="1" MaximumValue='<%#Eval("soluongban") %>' Type="Integer" runat="server" ErrorMessage="*Số lượng không hợp lệ!"></asp:RangeValidator>

                        </div>
                        <asp:LinkButton style="padding:8px;" class="detail-add-cart" ID="LinkButton1" runat="server" Text="Thêm vào giỏ hàng" CommandArgument='<%#Eval("Masanpham") %>' OnClick="LinkButton1_Click"></asp:LinkButton>

                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:Label ID="lbthongbao" runat="server" Style="color: red; font-size: 16px; text-align: right; margin-right: 195px; margin-top: -34px; margin-bottom: 12px;"
            Text=""></asp:Label>
    </div>
</asp:Content>
