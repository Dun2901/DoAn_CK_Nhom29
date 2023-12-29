<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 29/12/2023
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String error = (String) request.getAttribute("error");
%>
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
    <title>Tài khoản</title>
</head>
<body>

<section class="bg-light py-3 py-md-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5 col-xxl-4">
                <div class="card border border-light-subtle rounded-3 shadow-sm">
                    <div class="card-body p-3 p-md-4 p-xl-5">
                        <div class="text-center mb-3">
                            <a href="">
                                <img src="./assets/img/user.png" alt="BootstrapBrain Logo" class="object-fit-cover">
                            </a>
                        </div>
                        <h2 class="fs-6 fw-normal text-center text-secondary mb-4">Đặt lại mật khẩu</h2>
                        <form action="new-password" method="post">
                            <%
                                if (error != null) {
                            %>
                            <div class="alert alert-danger" role="alert">
                                <%= error %>
                            </div>
                            <%
                                }
                            %>
                            <div class="row gy-2 overflow-hidden">
                                <div class="col-12">
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" name="newPass" id="newPass"
                                               placeholder="Username" required>
                                        <label for="newPass" class="form-label">Mật khẩu mới</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" name="rePass" id="rePass"
                                               value="" placeholder="Password" required>
                                        <label for="rePass" class="form-label">Xác nhận mật khẩu mới</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="d-grid my-3">
                                        <button class="btn btn-primary btn-lg" type="submit">Đổi mật khẩu</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--<div class="login-page">--%>

<%--    <!-- Main content -->--%>
<%--    <div id="main-content" class="main-content" style="padding-bottom: 30px">--%>
<%--        <div class="container">--%>

<%--            <div class="row">--%>

<%--                <!--Form Sign In-->--%>
<%--                <div class="col-md-7 col-lg-6 col-md-offset-3">--%>
<%--                    <div style="text-align: center; margin-top: 40px">--%>
<%--                        <h3 style="font-weight: 400; color: black">ĐẶT LẠI MẬT KHẨU</h3>--%>
<%--                    </div>--%>
<%--                    <div class="signin-container">--%>
<%--                        <form action="new-password" name="frm-login" method="post">--%>
<%--                            <%--%>
<%--                                if (error != null) {--%>
<%--                            %>--%>
<%--                            <div class="alert alert-danger" role="alert">--%>
<%--                                <%= error %>--%>
<%--                            </div>--%>
<%--                            <%--%>
<%--                                }--%>
<%--                            %>--%>
<%--                            <p class="form-row">--%>
<%--                                <label for="fid-newpass"><strong>Mật khẩu mới </strong><span class="requite">*</span></label>--%>
<%--                                <input type="password" id="fid-newpass" name="newPass" value="" placeholder="Nhập mật khẩu mới" class="txt-input" required>--%>
<%--                            </p>--%>
<%--                            <p class="form-row">--%>
<%--                                <label for="fid-repass"><strong>Xác nhận mật khẩu mới </strong><span class="requite">*</span></label>--%>
<%--                                <input type="password" id="fid-repass" name="rePass" value="" placeholder="Nhập lại mật khẩu mới" class="txt-input" required>--%>
<%--                            </p>--%>
<%--                            <p class="form-row wrap-btn">--%>
<%--                                <input class="btn btn-submit btn-bold" type="submit" value="Đổi mật khẩu">--%>
<%--                            </p>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--            </div>--%>

<%--        </div>--%>

<%--    </div>--%>

<%--</div>--%>

<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
