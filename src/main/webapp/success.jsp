<%--
  Created by IntelliJ IDEA.
  com.example.doan_ck.entity.User: ASUS
  Date: 08/12/2023
  Time: 23:01
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
    <link rel="stylesheet" href="css/style.css"/>
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
            <a href="checkout.jsp"><img src="./css/images/cart.png" alt="" class="nav_icon"/></a>
            <a href="login.jsp"><img src="./css/images/user.png" alt="" class="nav_icon"/></a>
            <a href="#" id="menu_icon" class="nav_icon" onclick="toggleDropdown()"><i class="fa-solid fa-bars"></i></a>
        </div>
    </div>
</nav>

<section id="page_header">
    <p>Cảm ơn bạn đã tin tưởng ở chúng tôi</p>
</section>

<section id="success">
    <div id="img">
        <img src="css/images/icon_check.png" alt="checked">
    </div>

    <div id="text">
        <h1>Đặt hàng thành công</h1>
        <h3>Cảm ơn bạn đã mua sản phẩm của chúng tôi</h3>
    </div>

    <div id="btn_ttms">
        <a href="index.html"><button class="continue">TIẾP TỤC MUA SẮM</button></a>
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
