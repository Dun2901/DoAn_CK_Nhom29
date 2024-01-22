<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/01/2024
  Time: 12:47 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
        <li><a href="../admin/order.jsp"><i class="bx bx-cart"></i>Đơn Hàng</a></li>
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
        <a href="users.jsp " class="profile">
            <img src="https://icon-library.com/images/admin-login-icon/admin-login-icon-15.jpg" alt="">
        </a>
    </nav>

    <!-- End of Navbar -->

    <main>
        <div class="header">
            <div class="left">
                <h1>Đơn Hàng</h1>
                <ul class="breadcrumb">
                    <li><a href="#">
                        ADMIN
                    </a></li>
                    /
                    <li><a href="#" class="active">Đơn Hàng</a></li>
                </ul>
            </div>
        </div>
        <div class="bottom-data">
            <div class="orders">
                <div class="header">
                    <i class='bx bx-receipt'></i>
                    <h3>Tình Trạng Đơn Hàng</h3>
                    <i class='bx bx-filter'></i>
                    <i class='bx bx-search'></i>
                </div>
                <table>
                    <thead>
                    <tr>
                        <th>Khách Hàng</th>
                        <th>Ngày Đặt Hàng</th>
                        <th>Tình Trạng</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <img src="https://scontent.fsgn5-10.fna.fbcdn.net/v/t39.30808-6/409845838_1121134488876326_4138058603384891283_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeEZe2ko4VB5KJ9dQ-qPDkM588HryDPP0pDzwevIM8_SkJTMek4lqBjpnVWN5ywW083RUgIODmU7p1NkyQiuINbQ&_nc_ohc=yxW_-jcSdt4AX9h68e9&_nc_ht=scontent.fsgn5-10.fna&oh=00_AfA2HOkx1-GHDmlZM4mmFsjcy2egTUbgxocu6N71auaQng&oe=65B29123" alt="">
                            <p>Lâm Chí Dũng</p>
                        </td>
                        <td>10-11-2023</td>
                        <td><span class="status completed">Giao thành công</span></td>
                    </tr>
                    <tr>
                        <td>
                            <img src="https://scontent.fsgn5-10.fna.fbcdn.net/v/t39.30808-6/402187280_862599211984851_5344689819685492714_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFIpsINwAEhpPevPypwlcEih2GF5_loPaCHYYXn-Wg9oMMJk4Oihw05EY3gZLQcAA7mmuIKpCimTFHdEZJYnLSa&_nc_ohc=sIILF9aqfSYAX8zqqMz&_nc_ht=scontent.fsgn5-10.fna&oh=00_AfCpbPbKJqw_pR0n_z3W-Yrn-YpPJqQHc2M6_7heoUIJeQ&oe=655A8FB1">
                            <p>Nguyễn Thị Hồng Tiên</p>
                        </td>
                        <td>14-11-2023</td>
                        <td><span class="status pending">Đang giao</span></td>
                    </tr>
                    <tr>
                        <td>
                            <img src="https://scontent.fsgn5-8.fna.fbcdn.net/v/t39.30808-6/342021806_1387007308806734_2236282212179624434_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGxN4ny6fkrT1mPiR0ly2vYReZSWV0UXWZF5lJZXRRdZgQq3ravbdmcJql8GsEa6RmSS1uWTZqqJw_TpqJGMUbo&_nc_ohc=Wr2XereKFwcAX9xSuF0&_nc_ht=scontent.fsgn5-8.fna&oh=00_AfC-s3jiVWSMzjU1yDDbw0IfNgW-BU_zX44ll_sRWw8KLw&oe=655B06BA">
                            <p>Đặng Văn Quốc</p>
                        </td>
                        <td>16-11-2023</td>
                        <td><span class="status process">Chưa lấy hàng</span></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </main>
</div>
<script src="../admin/js/index.js"></script>
</body>
</html>