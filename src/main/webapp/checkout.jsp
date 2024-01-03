<%--
  Created by IntelliJ IDEA.
  com.example.doan_ck.modal.User: ASUS
  Date: 08/12/2023
  Time: 22:53
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
    <title>check thông tin</title>
</head>
<body>

<jsp:include page="header.jsp"/>

<section id="page_header">
    <h2>#giỏ hàng</h2>
    <p>Thêm mã giảm giá của bạn và TIẾT KIỆM lên đến 70%!</p>
</section>

<section id="cart" class="section-p1">
    <table width="100%">
        <thead>
        <tr>
            <td>Xóa</td>
            <td>Ảnh</td>
            <td>Tên sản phẩm</td>
            <td>Giá</td>
            <td>Số lượng</td>
            <td>Tổng</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><a href="#"><i class="fa-solid fa-circle-xmark"></i></a></td>
            <td><img
                    src="https://hoachatthinghiem.org/wp-content/uploads/2023/09/Gum-acacia-powder-Gum-arabic-Himedia-Cas-9000-01-5.jpg"
                    alt=""></td>
            <td>Gum acacia powder</td>
            <td>450.000₫</td>
            <td><input type="number" value="1"></td>
            <td>450.000₫</td>
        </tr>
        <tr>
            <td><a href="#"><i class="fa-solid fa-circle-xmark"></i></a></td>
            <td><img src="https://hoachatthinghiem.org/wp-content/uploads/2023/03/Soya-peptone-Himedia-510x510.jpg"
                     alt=""></td>
            <td>Soya Peptone (Himedia)</td>
            <td>1.450.000₫</td>
            <td><input type="number" value="1"></td>
            <td>1.450.000₫</td>
        </tr>
        <tr>
            <td><a href="#"><i class="fa-solid fa-circle-xmark"></i></a></td>
            <td><img src="https://hoachatthinghiem.org/wp-content/uploads/2022/11/Glucose-Agar-510x510.jpg" alt=""></td>
            <td>Glucose Agar (Himedia)</td>
            <td>1.200.000₫</td>
            <td><input type="number" value="1"></td>
            <td>1.200.000₫</td>
        </tr>
        </tbody>
    </table>
</section>

<section id="cart-add" class="section-p1">
    <div id="coupon">
        <h3>Áp mã giảm giá</h3>
        <div>
            <input type="text" placeholder="Enter Your Coupon">
            <button class="normal">Áp mã</button>
        </div>
    </div>

    <div id="subtotal">
        <h3>Tổng giỏ hàng</h3>
        <table>
            <tr>
                <td>Tổng cộng</td>
                <td>2.000.000₫</td>
            </tr>
            <tr>
                <td>Shipping</td>
                <td>Free</td>
            </tr>
            <tr>
                <td><strong>Thành tiền</strong></td>
                <td><strong>2.000.000₫</strong></td>
            </tr>
        </table>

        <a href="order.html">
            <button class="normal">Tiến hành thanh toán</button>
        </a>

    </div>
</section>

<jsp:include page="footer.jsp"/>

<!--Link js-->

<script src="./assets/js/index.js"></script>
<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
