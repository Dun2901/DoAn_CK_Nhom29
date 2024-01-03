<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 03/01/2024
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="nav">
    <div class="container nav_container">
        <div class="nav_left">
            <a href="#" class="nav_logo">CHEMICAL</a>
            <ul class="nav_list open">
                <li class="nav_item">
                    <a href="home.jsp" class="nav_link active">Trang chủ</a>
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
