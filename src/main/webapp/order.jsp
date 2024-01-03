<%--
  Created by IntelliJ IDEA.
  com.example.doan_ck.modal.User: ASUS
  Date: 08/12/2023
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <%--    Link bootstrap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!--    Link icons-->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!-- Link Swiper's CSS -->
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"/>
    <!--    Link css-->
    <link rel="stylesheet" href="./assets/css/style.css"/>
    <title>Thanh toán</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<section id="page_header">
    <p>Vui lòng nhập thông tin để giao hàng </p>
</section>

<section id="order">
    <div class="form">
        <h1>Thông tin đơn hàng</h1>
        <div id="input_tt">
            <input type="text" placeholder="Họ và tên">
            <input type="email" placeholder="Email">
            <input type="tel" placeholder="Số điện thoại">
            <input type="text" placeholder="Địa chỉ">
            <input type="text" placeholder="Tỉnh / thành">
            <input type="text" placeholder="Quận / huyện">
            <textarea type="text" placeholder="Ghi chú (không bắt buộc)"></textarea>
        </div>
    </div>

    <div id="infor_dh">
        <div class="section-title">
            <h3 id="title">ĐƠN HÀNG CỦA BẠN</h3>
        </div>
        <div id="order-summary">
            <div class="order-col">
                <div><strong> SẢN PHẨM</strong></div>
                <div><strong> TỔNG CỘNG</strong></div>
            </div>
            <div class="order-products">
                <div class="order-col">
                    <div>Gum acacia powder</div>
                    <div>450.000₫</div>
                </div>
                <div class="order-col">
                    <div>Soya Peptone (Himedia)</div>
                    <div>1.450.000₫</div>
                </div>
                <div class="order-col">
                    <div>Glucose Agar (Himedia)</div>
                    <div>1.200.000₫</div>
                </div>
                <div class="order-col">
                    <div>Phí vận chuyển</div>
                    <div><strong>Miễn phí</strong></div>
                </div>
                <div class="order-col">
                    <div><strong>THÀNH TIỀN</strong></div>
                    <div><strong class="order-total"> 3.100.000₫ </strong></div>
                </div>
            </div>
        </div>

        <div id="pttt">
            <div class="pttt-title"><strong> PHƯƠNG THỨC THANH TOÁN</strong></div>
            <div class="row">
                <div class="col-btn">
                    <input name="collapseGroup" type="radio" data-toggle="collapse" data-target=".collapseTwo.in"> Thanh
                    toán khi giao hàng (COD)<br>
                    <input name="collapseGroup" type="radio" data-toggle="collapse" data-target=".collapseTwo:not(.in)">
                    Thanh toán qua thẻ tín dụng (Card)
                    <div id="line"></div>
                    <div id="group">
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="collapseTwo panel-collapse collapse">
                                    <div class="text-center">
                                        <ul class="footer-payments">
                                            <li><a href="#"><i class="fa-brands fa-cc-visa"></i></a></li>
                                            <li><a href="#"><i class="fa-solid fa-credit-card"></i></a></li>
                                            <li><a href="#"><i class="fa-brands fa-paypal"></i></a></li>
                                            <li><a href="#"><i class="fa-brands fa-cc-mastercard"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="input-checkbox">
            <input type="checkbox" id="terms">
            <label for="terms">
                <span></span>
                Tôi đã đọc và chấp nhận các <a href="#">điều khoản</a>
            </label>
        </div>
        <a href="success.html">
            <button class="btn_confirm">XÁC NHẬN ĐẶT HÀNG</button>
        </a>
    </div>
</section>

<jsp:include page="footer.jsp"/>
<script src="./assets/js/index.js"></script>
<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
