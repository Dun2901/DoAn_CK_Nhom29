<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/01/2024
  Time: 1:02 CH
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
    <a href="overview.html" class="logo">
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
        <a href="users.html" class="profile">
            <img src="https://icon-library.com/images/admin-login-icon/admin-login-icon-15.jpg">
        </a>
    </nav>
</div>
<div class="content">
    <main>
        <div class="header">
            <div class="left">
                <h1>Tài Khoản</h1>
                <ul class="breadcrumb">
                    <li><a href="#">
                        ADMIN
                    </a></li>
                    /
                    <li><a href="#" class="active">Tài Khoản</a></li>
                </ul>
            </div>
        </div>
        <div class="avt">
            <center><img src = "https://icon-library.com/images/admin-login-icon/admin-login-icon-15.jpg"></center>
        </div>
        <div class="bottom-data">
            <div class="orders">
                <div class="header">
                    <h4>Họ và Tên:</h4>
                    <i>Lâm Chí Dũng</i>
                    <i class="bx bx-edit"></i>
                </div>
                <div class="header">
                    <h4>Giới Tính:</h4>
                    <i>Nam</i>
                    <i class="bx bx-edit"></i>
                </div>
                <div class="header">
                    <h4>Email:</h4>
                    <i>admin@gmail.com</i>
                    <i class="bx bx-edit"></i>
                </div>
                <div class="header">
                    <h4>Mật Khẩu:</h4>
                    <i>**********</i>
                    <i class="bx bx-edit"></i>
                </div>
                <div class="header">
                    <h4>Số Điện Thoại:</h4>
                    <i>0123456789</i>
                    <i class="bx bx-edit"></i>
                </div>
                <div class="header">
                    <h4>Địa Chỉ:</h4>
                    <i>Số 123, đường 12, phường 1, quận 2, thành phố Hồ Chí Minh</i>
                    <i class="bx bx-edit"></i>
                </div>
                <table>

                </table>
            </div>
    </main>
</div>
</body>
</html>