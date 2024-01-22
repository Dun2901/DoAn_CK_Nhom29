<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 03/01/2024
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<style>
    .custom-font {
        font-size: 16px;
    }
</style>
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
                        <li><a href="list-product">Xem tất cả sản phẩm</a></li>
                        <li><a href="list-product?idVendor=007">DUCHEFA HÀ LAN</a></li>
                        <li><a href="list-product?idVendor=002">BOSF TRUNG QUỐC</a></li>
                        <li><a href="list-product?idVendor=003">MERCK ĐỨC</a></li>
                        <li><a href="list-product?idVendor=004">WAKO NHẬT BẢN</a></li>
                        <li><a href="list-product?idVendor=005">ACROS ORGANICS</a></li>
                        <li><a href="list-product?idVendor=006">BIOBASIC CANADA</a></li>
                        <li><a href="list-product?idVendor=001">HIMEDIA LABS</a></li>
                    </ul>
                </li>
                <li class="nav_item">
                    <a href="contact.jsp" class="nav_link">Liên hệ</a>
                </li>
            </ul>
        </div>
        <div class="nav_right d-flex align-items-center">
            <a href="checkout.jsp"><img src="./assets/img/cart.png" alt="" class="nav_icon"/></a>

            <c:if test="${sessionScope.auth == null}">
                <a href="log-in" class="nav_icon custom-font"> <span>Đăng nhập</span></a>
            </c:if>

            <c:if test="${sessionScope.auth != null}">
                <a href="my-profile">
                    <img src="./assets/img/user.png" alt="" class="nav_icon"/>
                </a>
            </c:if>
            <a href="#" id="menu_icon" class="nav_icon" onclick="toggleDropdown()"><i class="fa-solid fa-bars"></i></a>
        </div>
    </div>
</nav>
