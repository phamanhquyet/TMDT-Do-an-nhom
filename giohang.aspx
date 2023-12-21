<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="IS_385_E_DoAnNhom_Nhom1.giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .deletebtn {
            padding: 12px;
            background-color: #d81f1f;
            color: #fff;
            font-size: 13px;
            font-weight: 700;
            width: 90px;
            margin-left: 0px !important;
            margin-right: 0 !important;
        }
        .thanhtien{
            width:100px;
        }
        .headersp{
            padding-right:10px;
        }
        .img1{
            padding-right:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-2"></div>
    <div class="col-md-10">
        <div class="cart-header">Shopping cart</div>
        <asp:GridView ID="grvgiohang" runat="server" AutoGenerateColumns="false" Width="100%">
            <Columns>
                <asp:TemplateField ItemStyle-CssClass="img1" HeaderText="Ảnh">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Style="width: 100px;" ImageUrl='<%# "assets/img/" + Eval("Hinhchinh") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Masanpham" HeaderText="Mã Sản Phẩm" />
                <%--<asp:BoundField DataField="Tensanpham" HeaderText="Tên Sản Phẩm" />--%>
                <asp:TemplateField ItemStyle-CssClass="headersp" HeaderText="Tên Sản Phẩm">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Tensanpham") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số Lượng">
                    <ItemTemplate>
                        <asp:TextBox  Text='<%# Eval("Soluong") %>' ID="txtsl" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <%--<asp:BoundField  DataField="Thanhtien" HeaderText="Thành Tiền" />--%>
                <asp:TemplateField ItemStyle-CssClass="thanhtien"  HeaderText="Thành Tiền">
                    <ItemTemplate>
                        <asp:Label style="width:200px;" ID="Label2" runat="server" Text='<%#Eval("Thanhtien") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Xóa">
                    <ItemTemplate>
                        <asp:LinkButton class="deletebtn" ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Masanpham")%>' OnClick="LinkButton1_Click">Xóa</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sửa">
                    <ItemTemplate>
                        <asp:LinkButton CommandArgument='<%#Eval("Masanpham") %>' ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Style="margin-left: 8px; padding: 11px; background-color: #d0d0d0;">Sửa</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="" Style="color: forestgreen;"></asp:Label>
        
        <div class="button">
            <asp:Button ID="Button1" class="buybtn" runat="server" Text="Tiếp tục mua sắm" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" class="paybtn" Text="Thanh toán" OnClick="Button2_Click"/>
        </div>
    </div>
</asp:Content>
