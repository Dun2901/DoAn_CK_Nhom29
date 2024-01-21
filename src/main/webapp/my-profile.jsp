<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 04/01/2024
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String fullName = (String) request.getSession().getAttribute("fullName");
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
    <link rel="stylesheet" href="./assets/css/style.css">
    <title>Hồ sơ của tôi</title>
</head>
<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-4">
            <!-- User avatar and basic info -->
            <div class="card">
                <img src="https://via.placeholder.com/150" class="card-img-top" alt="User Avatar">
                <div class="card-body">
                    <h5 class="card-title">
                        <% if (fullName != null) { %>
                        <%= fullName %>
                        <% } %>
                    </h5>
                    <p class="card-text">Online Shopper</p>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <!-- User details with a form for editing -->
            <div class="card mb-3">
                <div class="card-body">
                    <form action="update-profile" method="post">
                        <h5 class="card-title">Personal Information</h5>

                        <!-- Email -->
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email"
                                   value="${sessionScope.auth.email}" disabled required>
                        </div>

                        <!-- Full Name -->
                        <div class="mb-3">
                            <label for="fullName" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="fullName" name="fullName"
                                   value="${empty sessionScope.fullName ? '' : sessionScope.fullName}" required>
                        </div>

                        <!-- Save changes button -->
                        <button type="submit" class="btn btn-success" id="saveChangesBtn">Save Changes</button>
                    </form>
                </div>
            </div>

            <!-- User orders -->
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">My Orders</h5>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <strong>Order #001</strong>
                            <p>Product: Laptop XYZ</p>
                            <p>Status: Shipped</p>
                        </li>
                        <li class="list-group-item">
                            <strong>Order #002</strong>
                            <p>Product: Smartphone ABC</p>
                            <p>Status: Delivered</p>
                        </li>
                        <!-- Add more order details as needed -->
                    </ul>
                </div>
            </div>

            <!-- Change password form -->
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Đổi mật khẩu</h5>
                    <form action="update-password" method="post">
                        <%
                            if (error != null) {
                        %>
                        <div class="alert alert-danger" role="alert">
                            <%= error %>
                        </div>
                        <%
                            }
                        %>
                        <div class="mb-3">
                            <label for="currentPassword" class="form-label">Mật khẩu hiện tại</label>
                            <input type="password" class="form-control" id="currentPassword" name="currentPassword"
                                   required>
                        </div>
                        <div class="mb-3">
                            <label for="newPassword" class="form-label">Mật khẩu mới</label>
                            <input type="password" class="form-control" id="newPassword" name="newPassword" required>
                        </div>
                        <div class="mb-3">
                            <label for="confirmPassword" class="form-label">Xác lại mật khẩu</label>
                            <input type="password" class="form-control" id="confirmPassword" name="confirmPassword"
                                   required>
                        </div>
                        <button type="submit" class="btn btn-primary">Change Password</button>
                    </form>
                </div>
            </div>


            <!-- Logout and Back to Home buttons -->
            <div class="card">
                <div class="card-body">
                    <a href="logout" class="btn btn-danger mr-2">Logout</a>
                    <a href="home.jsp" class="btn btn-primary">Back to Home</a>
                </div>
            </div>

        </div>
    </div>
</div>

<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
