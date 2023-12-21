<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Lienhe.aspx.cs" Inherits="IS_385_E_DoAnNhom_Nhom1.Lienhe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .FAQ_Code h2 {
            padding: 10px 8px;
            background-color: #ff8b04;
            color: white;
            margin-top: 60px;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        .FAQ_Code h4 {
            margin-bottom: 10px;
        }

        .FAQ-QA-block .QA-header {
            padding: 8px 8px;
            background-color: #ff8b04;
            color: white;
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 16px;
            box-shadow: 5px 6px 5px lightblue;
        }

        .SUAE_Code h2 {
            padding: 10px 8px;
            background-color: #ff8b04;
            color: white;
            margin-top: 60px;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        .SUAE-Send-btn {
            padding: 10px 18px;
            background-color: #ff8b04;
            color: white;
            border-radius: 5px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-top: 40px;">
        <%--FREQUENTLY ASKED QUESTIONS--%>
        <div class="col-md-6">
            <div class="FAQ_Code">
                <h2><b>NHỮNG CÂU HỎI THƯỜNG ĐƯỢC HỎI</b></h2>
                <h4>Hãy đọc một số câu hỏi chúng tôi trả lời ở dưới nhé.</h4>

                <div class="FAQ-QA-block">
                    <%--QA header--%>
                    <div class="QA-header">
                        Phí giao hàng cho các đơn đặt hàng từ Cửa hàng là bao nhiêu?
                    </div>

                    <%--QA body--%>
                    <div class="QA-body">
                        <p>Cửa hàng chúng tôi hiện không tính phí giao hàng cho các đơn đặt hàng. Chúng tôi cam kết cung cấp dịch vụ giao hàng miễn phí để mang đến trải nghiệm mua sắm thuận lợi và tiết kiệm cho quý khách.</p>
                    </div>
                </div>

                <div class="FAQ-QA-block">
                    <%--QA header--%>
                    <div class="QA-header">
                        Những phương thức thanh toán nào được chấp nhận trong Cửa hàng?
                    </div>

                    <%--QA body--%>
                    <div class="QA-body">
                        <p>Thanh toán khi nhận hàng (COD - Cash On Delivery): Đối với một số khu vực cụ thể, chúng tôi cung cấp dịch vụ thanh toán khi nhận hàng, giúp quý khách kiểm tra sản phẩm trước khi thanh toán.</p>
                    </div>
                </div>


                <div class="FAQ-QA-block">
                    <%--QA header--%>
                    <div class="QA-header">
                        Việc giao hàng sẽ mất bao lâu?
                    </div>

                    <%--QA body--%>
                    <div class="QA-body">
                        <p>Thời gian giao hàng có thể thay đổi tùy thuộc vào địa điểm của bạn và phương thức vận chuyển bạn chọn. Tổng thời gian giao hàng bao gồm cả thời gian xử lý đơn hàng và thời gian vận chuyển.</p>
                        <p>Thời gian xử lý đơn hàng: Thời gian này thường bao gồm việc xác nhận đơn hàng, đóng gói sản phẩm và chuẩn bị cho việc giao hàng. Thời gian xử lý có thể dao động tùy thuộc vào phức tạp của đơn hàng và thời gian trong ngày bạn đặt hàng.</p>
                        <p>Thời gian vận chuyển: Đối với dịch vụ giao hàng thông thường, thời gian vận chuyển phụ thuộc vào địa điểm của bạn và khoảng cách từ kho hàng của chúng tôi. Thông thường, chúng tôi cung cấp thông tin chi tiết về thời gian vận chuyển dự kiến trong quá trình thanh toán.</p>
                    </div>
                </div>



                <div class="FAQ-QA-block">
                    <%--QA header--%>
                    <div class="QA-header">
                        Mua sắm trong Cửa hàng an toàn đến mức nào? Dữ liệu của tôi có được bảo vệ không?
                    </div>

                    <%--QA body--%>
                    <div class="QA-body">
                        <p>Kết nối an toàn: Trang web của chúng tôi sử dụng kết nối an toàn SSL (Secure Socket Layer) để đảm bảo rằng thông tin được truyền tải an toàn và được mã hóa. Bạn có thể nhận biết việc sử dụng kết nối an toàn qua biểu tượng ổ khóa xuất hiện trong thanh địa chỉ của trình duyệt.</p>
                        <p>Bảo mật dữ liệu cá nhân: Chúng tôi áp dụng các biện pháp bảo mật mạnh mẽ để bảo vệ dữ liệu cá nhân của bạn khỏi mất mát, truy cập trái phép hoặc thay đổi. Chúng tôi chỉ sử dụng thông tin của bạn cho mục đích xác nhận đơn hàng và liên lạc với bạn.</p>
                        <p>Khả năng thanh toán an toàn: Chúng tôi chỉ chấp nhận các phương thức thanh toán an toàn và đáng tin cậy. Thông tin thanh toán của bạn sẽ được xử lý thông qua các cổng thanh toán an toàn và mã hóa.</p>
                        <p>Chính sách bảo mật: Chúng tôi có chính sách bảo mật chi tiết mô tả cách chúng tôi thu thập, sử dụng và bảo vệ thông tin cá nhân. Vui lòng đọc chính sách bảo mật để hiểu rõ hơn về cách chúng tôi xử lý dữ liệu của bạn.</p>
                    </div>
                </div>
            </div>
        </div>

        <%--SEND US AN EMAIL--%>
        <div class="col-md-6">
            <div class="SUAE_Code">
                <h2><b>HÃY GỬI EMAIL CHO CHÚNG TÔI</b></h2>

                <div class="SUAE-form">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Tên gọi *</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txt_Ten" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <label>Email *</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txt_Email" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <label>Nội dung *</label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="txt_Noidung" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <asp:Button ID="btnsend" runat="server" Text="GỬI ĐI" OnClick="btnsend_Click" CssClass="SUAE-Send-btn" />
                            <br />
                            <asp:Label ID="tbthongbao" runat="server" Text="" style="color:lawngreen; font-weight:600;"></asp:Label>
                            
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
