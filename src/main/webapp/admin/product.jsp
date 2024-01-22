<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 22/01/2024
  Time: 12:56 CH
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
    <main>
        <div class="header">
            <div class="left">
                <h1>Sản Phẩm</h1>
                <ul class="breadcrumb">
                    <li><a>
                        ADMIN
                    </a></li>
                    /
                    <li><a href="product.jsp" class="active">Sản Phẩm</a></li>
                </ul>
            </div>
        </div>
        <div class="bottom-data">
            <div class="orders">
                <div class="header">
                    <i class='bx bx-receipt'></i>
                    <h3>Danh Sách Sản Phẩm</h3>
                    <a href="../admin/addProduct.jsp"><i class='bx bx-plus'></i></a>
                    <i class='bx bx-filter'></i>
                    <i class='bx bx-search'></i>

                </div>
                <table>
                    <thead>
                    <tr>
                        <th>Tên</th>
                        <th>Hãng</th>
                        <th>Giá</th>
                        <th>Số Lượng</th>
                        <th>Chức năng</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <img src="https://hoachatthinghiem.org/wp-content/uploads/2023/01/Ethidium-Bromide-95-Cas-1239-45-8.jpg">
                            <p>Ethidium Bromide 95% (Cas 1239-45-8)</p>
                        </td>
                        <td>Acros Organics</td>
                        <td>1.450.000₫</td>
                        <td>5</td>
                        <td><button> <i class='bx bx-trash'></i></button>
                        <button><i class='bx bx-pen'></i></button></td>
                    </tr>
                    <tr>
                        <td>
                            <img src="https://hoachatthinghiem.org/wp-content/uploads/2023/02/Glutaraldehyde-25-biobasic-scaled-510x510.jpg">
                            <p>Glutaraldehyde 25% solution (Biobasic, Cas 111-30-8)</p>
                        </td>
                        <td>Biobasic</td>
                        <td>2.100.000₫</td>
                        <td>11</td>
                        <td><button> <i class='bx bx-trash'></i></button>
                            <button><i class='bx bx-pen'></i></button></td>
                    </tr>
                    <tr>
                        <td>
                            <img src="https://hoachatthinghiem.org/wp-content/uploads/2021/01/Zeatin-ZB0747-510x510.jpg">
                            <p>Zeatin (ZB0747, Biobasic)</p>
                        </td>
                        <td>Biobasic</td>
                        <td>5.200.000₫</td>
                        <td>13</td>
                        <td><button> <i class='bx bx-trash'></i></button>
                            <button><i class='bx bx-pen'></i></button></td>
                    </tr>
                    <tr>
                        <td>
                            <img src="https://hoachatthinghiem.org/wp-content/uploads/2022/04/TDZ-Thidiazuron-1G-BOSF.jpg">
                            <p>Thidiazuron >98% (TDZ, TQ, Cas 51707-55-2)</p>
                        </td>
                        <td>BOSF TQ</td>
                        <td>550.000₫ – 2.800.000₫</td>
                        <td>22</td>
                        <td><button> <i class='bx bx-trash'></i></button>
                            <button><i class='bx bx-pen'></i></button></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="pagination" class="pagination">
        </div>
    </main>
</div>
<script src="../js/index.js"></script>
</body>
</html>