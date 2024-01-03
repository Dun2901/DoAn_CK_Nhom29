<%--
  Created by IntelliJ IDEA.
  com.example.doan_ck.modal.User: ASUS
  Date: 08/12/2023
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <%--    Link bootstrap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!--    LINK ICONS-->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <!--    LINK CSS-->
    <link rel="stylesheet" href="./assets/css/style.css">
    <title>Trang Liên hệ</title>
</head>
<body>

<jsp:include page="header.jsp"/>

<section id="page_header">
    <h2>#Hãy_nói_chuyện</h2>
    <p>ĐỂ LẠI MỘT TIN NHẮN, Chúng tôi rất vui được nghe từ bạn</p>
</section>

<div id="contact">
    <div class="container">
        <div class="content">
            <div class="left-side">
                <div class="address details">
                    <i class="fas fa-map-marker-alt"></i>
                    <div class="topic">Địa chỉ</div>
                    <div class="text-one">Surkhet, NP12</div>
                    <div class="text-two">Birendranagar 06</div>
                </div>
                <div class="phone details">
                    <i class="fas fa-phone-alt"></i>
                    <div class="topic">Số điện thoại</div>
                    <div class="text-one">+0098 9893 5647</div>
                    <div class="text-two">+0096 3434 5678</div>
                </div>
                <div class="email details">
                    <i class="fas fa-envelope"></i>
                    <div class="topic">Email</div>
                    <div class="text-one">codinglab@gmail.com</div>
                    <div class="text-two">info.codinglab@gmail.com</div>
                </div>
            </div>
            <div class="right-side">
                <div class="topic-text">Hãy gửi cho chúng tôi 1 lời nhắn</div>
                <p>Nếu bạn có bất kỳ công việc nào từ phía tôi hoặc bất kỳ loại thắc mắc nào liên quan đến hướng dẫn của tôi, bạn có thể gửi tin nhắn cho tôi từ đây. Rất vui được giúp đỡ bạn.</p>
                <form action="#">
                    <div class="input-box">
                        <input type="text" placeholder="Họ và tên">
                    </div>
                    <div class="input-box">
                        <input type="text" placeholder="Email">
                    </div>
                    <div class="input-box message-box">
                        <textarea placeholder="Lời nhắn"></textarea>
                    </div>
                    <div class="button">
                        <input type="button" value="Gửi đi" >
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
<!--LINK JS-->
<script src="./assets/js/index.js"></script>
<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</body>
</html>
