<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 27/12/2023
  Time: 10:28
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
    <!-- Link Swiper's CSS -->
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"/>
    <!--    Link css-->
    <link rel="stylesheet" href="./assets/css/style.css"/>
    <title>Đăng ký</title>
</head>
<body>

<!-- Login 13 - Bootstrap Brain Component -->
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
                        <h2 class="fs-6 fw-normal text-center text-secondary mb-4">Sign up to your account</h2>
                        <form action="signup" method="post">
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
                                        <input type="text" class="form-control" name="username" id="username"
                                               value="<%= request.getParameter("username")!=null ? request.getParameter("username") : ""%>" placeholder="Username" required>
                                        <label for="username" class="form-label">Username</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating mb-3">
                                        <input type="email" class="form-control" name="email" id="email"
                                               value="<%= request.getParameter("email")!=null ? request.getParameter("email") : ""%>" placeholder="Email" required>
                                        <label for="email" class="form-label">Email</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" name="password" id="password"
                                               placeholder="Password" required>
                                        <label for="password" class="form-label">Password</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" name="repass" id="repass"
                                               placeholder="Repeat your password" required>
                                        <label for="repass" class="form-label">Repeat your password</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="d-grid my-3">
                                        <button class="btn btn-primary btn-lg" type="submit">Sign Up</button>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <a href="login.jsp" class="link-primary text-decoration-none">Quay lại</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="./assets/js/index.js"></script>
<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
