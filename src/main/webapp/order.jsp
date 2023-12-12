<%--
  Created by IntelliJ IDEA.
  User: ASUS
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
<nav class="nav">
    <div class="container nav_container">
        <div class="nav_left">
            <a href="#" class="nav_logo">CHEMICAL</a>
            <ul class="nav_list open">
                <li class="nav_item">
                    <a href="index.jsp" class="nav_link">Trang chủ</a>
                </li>
                <li class="nav_item services">
                    <a href="#" class="nav_link">Sản phẩm
                        <span class="material-icons dropdown-icon">
                            <i class="fa-solid fa-sort-down"></i>
                        </span>
                    </a>
                    <ul class="drop-down"  id="mobileDropdown">
                        <li><a href="product-list.html">Xem tất cả sản phẩm</a></li>
                        <li><a href="duchefa.html">DUCHEFA HÀ LAN</a></li>
                        <li><a href="bosf.html">BOSF TRUNG QUỐC</a></li>
                        <li><a href="merck.html">MERCK ĐỨC</a></li>
                        <li><a href="wako.html">WAKO NHẬT BẢN</a></li>
                        <li><a href="acros.html">ACROS ORGANICS</a></li>
                        <li><a href="biobasic.html">BIOBASIC CANADA</a></li>
                        <li><a href="himedia.html">HIMEDIA LABS</a></li>
                    </ul>
                </li>
                <li class="nav_item">
                    <a href="contact.jsp" class="nav_link">Liên hệ</a>
                </li>
            </ul>
        </div>
        <div class="nav_right">
            <a href="checkout.jsp"><img src="./assets/img/cart.png" alt="" class="nav_icon"/></a>
            <a href="login.jsp"><img src="./assets/img/user.png" alt="" class="nav_icon"/></a>
            <a href="#" id="menu_icon" class="nav_icon" onclick="toggleDropdown()"><i class="fa-solid fa-bars"></i></a>
        </div>
    </div>
</nav>

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

<section class="footer">
    <footer class="top">
        <div class="links">
            <div class="links-column">
                <h2>Giới thiệu</h2>
                <a>Lịch sử hình thành</a>
                <a>Sơ đồ tổ chức</a>
                <a>Chính sách chất lượng</a>
                <a>Ấn phẩm công ty</a>
                <a>Hồ sơ năng lực</a>
            </div>
            <div class="links-column">
                <h2>Chính sách</h2>
                <a>Thanh toán</a>
                <a>Bảo hành</a>
                <a>Đổi trả hàng</a>
                <a>Vận chuyển</a>
                <a>Bảo mật</a>
            </div>
            <div class="links-column socials-column">
                <h2>Kết nối với chúng tôi</h2>
                <p>
                    Theo dõi chúng tôi trên mạng xã hội để tìm hiểu những cập nhật mới nhất về tiến trình của chúng tôi.
                </p>
                <div class="socials">
                    <a class="fa-brands fa-facebook"></a>
                    <a class="fa-brands fa-instagram"></a>
                    <a class="fa-brands fa-linkedin"></a>
                </div>
            </div>
        </div>
    </footer>
    <footer class="bottom">
        <p class="copyright">© 2023 All rights reserved</p>
        <div class="legal">
            <a> License </a>
            <a> Terms </a>
            <a> Privacy </a>
        </div>
    </footer>
</section>
<script src="./assets/js/index.js"></script>
</body>
</html>
