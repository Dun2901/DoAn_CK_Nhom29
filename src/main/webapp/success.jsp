<%--
  Created by IntelliJ IDEA.
  com.example.doan_ck.modal.User: ASUS
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
    <link rel="stylesheet" href="css/style.css"/>
    <title>Thanh toán</title>
</head>
<body>
<jsp:include page="header.jsp"/>

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


<jsp:include page="footer.jsp"/>
<script src="./assets/js/index.js"></script>
<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
