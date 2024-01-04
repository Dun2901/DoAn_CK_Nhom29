<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 01/01/2024
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- Link Swiper's CSS -->
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"/>
    <title>Nội dung không tồn tại</title>
</head>
<body>

<nav class="nav">
    <div class="container nav_container">
        <div class="nav_left">
            <a href="#" class="nav_logo">CHEMICAL</a>
            <ul class="nav_list open">
                <li class="nav_item">
                    <a href="index.jsp" class="nav_link active">Trang chủ</a>
                </li>
                <li class="nav_item services">
                    <a href="#" class="nav_link">Sản phẩm
                        <span class="material-icons dropdown-icon">
                            <i class="fa-solid fa-sort-down"></i>
                        </span>
                    </a>
                    <ul class="drop-down" id="mobileDropdown">
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

<div class="page-contain page-404">

    <div id="main-content" class="main-content">
        <div class="container">

            <div class="row">

                <div class="content-404" style="text-align: center;">
                    <h1 class="heading">404</h1>
                    <h2 class="title">Oops! Trang không tồn tại!</h2>
                    <p>Chúng tôi không thể tìm thấy trang mà bạn đang tìm kiếm</p>
                    <a class="button" href="index.jsp">Về trang chủ</a>
                </div>

            </div>

        </div>

    </div>

</div>

<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
