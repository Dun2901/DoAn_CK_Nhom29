<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 28/12/2023
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String message = (String) request.getAttribute("message");
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
    <!-- Link Swiper's CSS -->
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"/>
    <!--    Link css-->
    <link rel="stylesheet" href="./assets/css/style.css"/>
    <title>Quên mật khẩu</title>

    <style>
        li {
            display: inline-block;
            list-style-type: none;
        }

        li span {
            display: block;
        }
    </style>
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
                        <h2 class="fs-6 fw-normal text-center text-secondary mb-4">Nhập mã OTP</h2>
                        <form action="validateOTP" method="post">
                            <%
                                if (error != null) {
                            %>
                            <div class="alert alert-danger" role="alert">
                                <%= error %>
                            </div>
                            <%
                                }
                            %>

                            <%
                                if (message != null) {
                            %>
                            <div class="alert alert-success" role="alert">
                                <%= message %>
                            </div>
                            <%
                                }
                            %>
                            <div class="row gy-2 overflow-hidden">
                                <div class="col-12">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" name="otp" id="otp"
                                               value="<%= request.getParameter("otp")!=null ? request.getParameter("otp") : ""%>" placeholder="OTP" required>
                                        <label for="otp" class="form-label">OTP</label>
                                    </div>
                                </div>
                                <div class="col-12 text-center"><a href="forgot-pass"
                                                       class="link-primary text-decoration-none">Gửi lại mã?</a>
                                </div>
                                <div class="col-12">
                                    <div class="d-grid my-3">
                                        <button class="btn btn-primary btn-lg" type="submit">Lấy lại mật khẩu</button>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <a href="forgot-pass" class="link-primary text-decoration-none">Quay lại</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%--bootstrap--%>
<script src="https://cdn.C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyNjsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384- /o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
