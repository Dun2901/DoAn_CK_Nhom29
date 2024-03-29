<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/01/2024
  Time: 12:51 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link type="text/css" rel="stylesheet" href="../admin/css/style.css"/>
    <title>Trang bán hóa chất thí nghiệm</title>

</head>
<body>
<div class="sidebar">
    <a href="../admin/overview.jsp" class="logo">
        <div class="logo-name"><span>Admin</span> Chemical</div>
    </a>
    <ul class="side-menu">
        <li><a href="../admin/overview.jsp"><i class='bx bxs-dashboard'></i>Tổng Quan</a></li>
        <li><a href="../admin/product.jsp"><i class='bx bx-store-alt'></i>Sản Phẩm</a></li>
        <li><a href="../admin/order.jsp"><i class="bx bx-cart"></i></i>Đơn Hàng</a></li>
        <li><a href="../admin/users.jsp"><i class='bx bx-group'></i>Tài Khoản</a></li>
    </ul>
    <ul class="side-menu">
        <li>
            <a href="../login.jsp" class="logout">
                <i class='bx bx-log-out-circle'></i>
                Logout
            </a>
        </li>
    </ul>
</div>
<div class="content">
    <!-- Navbar -->
    <nav>
        <i class='bx bx-menu'></i>
        <form action="#">
            <div class="form-input">
                <input type="search" placeholder="Tìm kiếm...">
                <button class="search-btn" type="submit"><i class='bx bx-search'></i></button>
            </div>
        </form>
        <input type="checkbox" id="theme-toggle" hidden>
        <a href="#" class="notif">
            <i class='bx bx-bell'></i>
            <span class="count">12</span>
        </a>
        <a href="../admin/users.jsp" class="profile">
            <img src="https://icon-library.com/images/admin-login-icon/admin-login-icon-15.jpg">
        </a>
    </nav>

    <!-- End of Navbar -->

    <main>
        <div class="header">
            <div class="left">
                <h1>Tổng Quan</h1>
                <ul class="breadcrumb">
                    <li><a href="#">
                        ADMIN
                    </a></li>
                    /
                    <li><a href="#" class="active">Tổng Quan</a></li>
                </ul>
            </div>
        </div>

        <!-- Insights -->
        <ul class="insights">
            <li>
                <i class='bx bx-calendar-check'></i>
                <span class="info">
                        <h3>
                            556
                        </h3>
                        <p>Tổng Đơn</p>
                    </span>
            </li>
            <li><i class='bx bx-dollar-circle'></i>
                <span class="info">
                        <h3>
                            324.956.000₫
                        </h3>
                        <p>Tài Chính</p>
                    </span>
            </li>
            <li><i class='bx bx-show-alt'></i>
                <span class="info">
                        <h3>
                            3,944
                        </h3>
                        <p>Người Tiếp Cận</p>
                    </span>
            </li>
            <li><i class='bx bx-line-chart'></i>
                <span class="info">
                        <h3 >
                            1234
                        </h3>
                        <p>Lượt Mua</p>
                    </span>
            </li>
        </ul>
</div>

</main>

</div>

<script src="../admin/js/index.js"></script>
</body>

</html>
