<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 22/01/2024
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <title>Tất cả sản phẩm</title>
</head>
<body>

<jsp:include page="header.jsp"/>

<section id="page_header">
    <h2>Sản phẩm</h2>
    <p>Ưu đãi lên đến 70%</p>
</section>

<div class="row row-cols-1 row-cols-md-4 g-4 p-4">
    <c:forEach items="${listP}" var="o">
        <div class="col">
            <div class="card border-0 rounded-0 shadow" style="width: 18rem;">
                <img src="${o.imageUrl}" class="card-img-top rounded-0 img-fluid" alt="#">
                <div class="card-body mt-3 mb-3">
                    <div class="row g-3">
                        <div class="col-10">
                            <h4 class="card-title"><a href="detail?pid=${o.productID}">${o.name}</a></h4>
                            <p class="card-text">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                (123)
                            </p>
                        </div>
                        <div class="col-2">
                            <i class="bi bi-bookmark-plus fs-2"></i>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center text-center g-0">
                    <div class="col-7">
                        <h5><fmt:formatNumber value="${o.out_price}" type="currency" currencyCode="VND"/></h5>
                    </div>
                    <div class="col-5">
                        <a href="#" class="btn btn-dark w-100 p-3 rounded-0 text-warning">ADD TO CART</a>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<jsp:include page="footer.jsp"/>

<script src="./assets/js/index.js"></script>
<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
