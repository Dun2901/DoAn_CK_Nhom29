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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet" href="../admin/css/style.css"/>
    <title>Trang bán hóa chất thí nghiệm</title>

</head>
<body>
<div class="sidebar">
    <a href="../admin/overview.jsp" class="logo">
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
                    <li><a href="#">
                        ADMIN
                    </a></li>
                    /
                    <li><a>Sản Phẩm</a></li>
                    /
                    <li><a class="active">Thêm Sản Phẩm</a></li>
                </ul>
            </div>
        </div>
        <div class="bottom-data">
            <div class="orders">
                <div class="header">
                    <h3>Thêm Sản Phẩm</h3>
                </div>
                <table>
                    <tbody>
                    <div>
                        <div class="col-md-12 col-sm-12 ">
                            <div class="x_panel">
                                <div class="x_content">
                                    <div class="x_content">
                                        <div class="x_content">
                                            <br />
                                            <form id="frm" data-parsley-validate class="form-horizontal form-label-left" enctype="multipart/form-data"  method="post">
                                                <div class="item form-group">
                                                    <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Tên Sản Phẩm:
                                                    </label>
                                                    <div class="col-md-6 col-sm-6 ">
                                                        <input type="text" id="first-name" class="form-control" name="namep" value="">
                                                    </div>
                                                </div>
                                                <div class="item form-group">
                                                    <label label class="col-form-label col-md-3 col-sm-3 label-align">Hãng Sản Xuất:</label>
                                                    <div class="col-md-9 col-sm-9 ">
                                                        <select class="col-form-label col-md-3 col-sm-3 form-control" tabindex="0" name="id_cate">
                                                            <option>DUCHEFA HÀ LAN</option>
                                                            <option>BOSF TRUNG QUỐC</option>
                                                            <option>MERCK ĐỨC</option
                                                            <option>WAKO NHẬT BẢN</option>
                                                            <option>ACROS ORGANICS</option>>
                                                            <option>BIOBASIC CANADA </option>
                                                            <option>HIMEDIA LABS </option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="item form-group">
                                                    <label label class="col-form-label col-md-3 col-sm-3 label-align">Loại:</label>
                                                    <div class="col-md-9 col-sm-9 ">
                                                        <select class="col-form-label col-md-3 col-sm-3 form-control" tabindex="0" name="id_vendor">
                                                            <option>Hợp Chất Hữu Cơ</option>
                                                            <option>Hợp Chất Vô Cơ</option>
                                                            <option>Hợp Chất Sinh Học Và Y Học</option>
                                                            <option>Hợp Chất Công Nghiệp</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="item form-group">
                                                    <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Số Lượng:</label>
                                                    <div class="col-md-6 col-sm-6 ">
                                                        <input for="middle-name" class="form-control" type="number" name="quantity" value="">
                                                    </div>
                                                </div>
                                                <div class="item form-group">
                                                    <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Giá:</label>
                                                    <div class="col-md-6 col-sm-6 ">
                                                        <input for="middle-name" class="form-control" type="number" name="price" value="">
                                                    </div>
                                                </div>
                                                <div class="item form-group">
                                                    <label for="middle-name" class="col-form-label col-md-3 col-sm-3 label-align">Giá Gốc:</label>
                                                    <div class="col-md-6 col-sm-6 ">
                                                        <input id="middle-name" class="form-control" type="number" name="in_price" value="">
                                                    </div>
                                                </div>
                                                <div class="item form-group">
                                                    <label class="control-label col-md-3 col-sm-3 label-align">Mô Tả:</label>
                                                    <div class="col-md-9 col-sm-9 ">
                                                        <textarea id="editor" class="resizable_textarea form-control" style="height: 300px;" name="discription" placeholder="..."></textarea>                                    </div>
                                                </div>
                                                <div class="item form-group">
                                                    <label class="control-label col-md-3 col-sm-3 label-align">Chọn Ảnh:</label>
                                                    <div class="col-md-9 col-sm-9 ">
                                                        <input type="file"id="avatar" name="img" accept="image/png, image/jpeg">
                                                    </div>
                                                </div>
                                                <div class="ln_solid"></div>
                                                <div class="item form-group">
                                                    <div class="col-md-6 col-sm-6 offset-md-3">
                                                        <button class="btn btn-primary" type="reset">Huỷ</button>
                                                        <button href="../admin/product.jsp"  type="submit" class="btn btn-success" ><a href="../admin/product.jsp">Thêm</a></button>
                                                    </div>
                                                </div>

                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>

                    </tbody>
                </table>
        </div>
        <div id="pagination" class="pagination">
        </div>
    </main>
</div><script src="../admin/js/index.js"></script>
</body>
</html>