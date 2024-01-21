<%@ page import="com.example.doan_ck.modal.User" %>
<%@ page import="com.example.doan_ck.modal.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
    <title>Trang bán hóa chất thí nghiệm</title>
</head>
<body>

<jsp:include page="header.jsp"/>

<div class="header_container">
    <div class="header_content">
        <div class="wrapper">
            <h1 class="headet_main_title">Chào mừng đến với Nhà Cung cấp Hóa chất</h1>
            <div class="header_items">
                <div class="header_item">
                    <p class="header_item_number">200+</p>
                    <p class="header_item_text">Sản phẩm hóa chất</p>
                </div>
                <div class="header_item">
                    <p class="header_item_number">100+</p>
                    <p class="header_item_text">Khách hàng</p>
                </div>
            </div>
            <form action="#" class="header_form">
                <input
                        type="text"
                        class="header_form_input"
                        placeholder="Bạn đang tìm kiếm cái gì?"/>
                <img src="./assets/img/search.png" alt="" class="header_form_icon"/>
            </form>
        </div>
        <div class="wrapper"></div>
    </div>
</div>
<section class="section">
    <div class="container widget_container">
        <div class="text_editor">
            <p>AS SEEN IN:</p>
        </div>
        <div class="img_container">
            <div class="widget_img">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_g_CICto9lt76StTVhwsdPDU9K6dZW2tGVQ&usqp=CAU"
                     alt="img">
            </div>
            <div class="widget_img">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHInAEFvWiNf_kGTSTjXJEFO8FrbLVY3yDZnWcH6n3Gd6bGZW9xzxtcy7iWHh41Rcg2O4&usqp=CAU"
                     alt="img">
            </div>
            <div class="widget_img">
                <img src="https://www.labvolution.de/apollo/labvolution_2023/obs/Grafik/A1243090/LOG_DE0_47400_70683_167653423642145500_aeid_60__73_atomfeld_60_73-1796571676534411.jpg.png"
                     alt="img">
            </div>
            <div class="widget_img">
                <img src="https://khovattuthietbi.com/images/news/anh1.jpg"
                     alt="img">
            </div>
            <div class="widget_img">
                <img src="https://seeklogo.com/images/B/biobasic-inc-logo-3B543E9EF7-seeklogo.com.png"
                     alt="img">
            </div>
        </div>
    </div>
</section>


<section class="section">

    <div class="about_us">
        <div class="container">
            <div class="row">
                <div class="flex">
                    <h2>Về chúng tôi</h2>
                    <h3>Nhà cung cấp hóa chất đáng tin cậy cho nhu cầu nghiên cứu của bạn</h3>
                    <p>
                        Tại Nhà Cung cấp Hóa chất, chúng tôi cam kết cung cấp hóa chất chất lượng cao cho các nhà nghiên
                        cứu trong nhiều lĩnh vực khác nhau. Kho hóa chất của chúng tôi bao gồm các tiêu chuẩn phân tích,
                        hóa chất tinh khiết, dung môi và hóa chất sinh học, điều này được bổ sung bởi đội ngũ nhân viên
                        am hiểu và cam kết kiên định đối với chất lượng.
                    </p>
                    <div class="social_links">
                        <a href=""><i class="fab fa-facebook-f"></i></a>
                        <a href=""><i class="fab fa-twitter"></i></a>
                        <a href=""><i class="fab fa-instagram"></i></a>
                    </div>
                    <a href="" class="btn">đọc thêm</a>
                </div>
                <div class="flex">
                    <img src="./assets/img/about.jpg" alt="img">
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section">
    <div class="container selling_container">
        <div class="selling_item">
            <h2 class="selling_h2">Sản phẩm nổi bật</h2>
            <p class="selling_p">
                Sản phẩm của chúng tôi bao gồm các tiêu chuẩn phân tích chính xác, hóa chất tinh khiết và dung môi đảm
                bảo đáp ứng các yêu cầu khắt khe nhất trong lĩnh vực nghiên cứu.
            </p>
            <a href="product-list.html" class="selling_btn">Xem thêm &rarr;</a>
        </div>
        <%
            List<Product> listTop = (List<Product>) request.getAttribute("listTop");

            if (listTop != null && !listTop.isEmpty()) {
                for (Product p : listTop) {
        %>
        <div class="selling_item">


            <img src="<%=p.getImage().get(0)%>"
                 alt="" class="selling_item_img"/>
            <div class="des">
                <div class="star">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
            </div>
            <p class="selling_item_title">Gum acacia powder</p>
            <p class="selling_item_price">450.000₫</p>
        </div>
        <%
            }
        } else {
            // Display a message or handle the case when the list is empty
        %>
        <div class="no-data-message">
            No data available at the moment.
        </div>
        <%
            }
        %>
        <div class="selling_item">
            <img src="https://hoachatthinghiem.org/wp-content/uploads/2023/03/Soya-peptone-Himedia-510x510.jpg" alt=""
                 class="selling_item_img"/>
            <div class="des">
                <div class="star">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
            </div>
            <p class="selling_item_title">Soya Peptone (Himedia)</p>
            <p class="selling_item_price">1.450.000₫</p>
        </div>
        <div class="selling_item">
            <img src="https://hoachatthinghiem.org/wp-content/uploads/2022/11/Glucose-Agar-510x510.jpg" alt=""
                 class="selling_item_img"/>
            <div class="des">
                <div class="star">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
            </div>
            <p class="selling_item_title">Glucose Agar (Himedia)</p>
            <p class="selling_item_price">1.200.000₫</p>
        </div>
    </div>
</section>
<section class="section">
    <div class="container">
        <div class="section_header">
            <h2 class="section_h2">Các loại sản phẩm</h2>
            <p class="section_p">Find what you are looking for</p>
        </div>
    </div>
    <div class="categories">
        <div class="container cat_container">
            <div class="category">
                <img src="./assets/img/3.avif" alt="" class="category_img"/>
                <p class="category_title">Botanical Chemistry</p>
            </div>
            <div class="category category_center">
                <img src="./assets/img/2.avif" alt="" class="category_img"/>
                <p class="category_title">Organic Compounds</p>
            </div>
            <div class="category">
                <img src="./assets/img/1.avif" alt="" class="category_img"/>
                <p class="category_title">Phytochemicals</p>
            </div>
        </div>
        <div class="container categories_bottom">
            <p class="categories_p">
                Có nhiều loại hóa chất rất đa dạng và phong phú
            </p>
            <a href="#" class="categories_btn">Xem thêm &rarr;</a>
        </div>
    </div>
</section>
<section class="section">
    <div class="container">
        <div class="section_header">
            <h2 class="section_h2">
                những nhận xét từ khách hàng về <br/>
                hóa chất?
            </h2>
        </div>
        <div class="reviews">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="review">
                            <p class="review_text">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Error nostrum odit ut magni numquam eum aspernatur at iure
                                explicabo! Provident laudantium commodi veritatis. Lorem
                                ipsum dolor sit amet consectetur adipisicing elit. Ipsa odit
                                asperiores atque! Fuga, consequatur excepturi.
                            </p>
                            <div class="review_footer">
                                <div class="review_user">
                                    <h3 class="review_user_name">Joh Doe</h3>
                                    <p class="review_user_designation">Youtuber</p>
                                </div>
                                <h3 class="review_rating">
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 24 24"
                                            fill="currentColor"
                                            class="w-6 h-6">
                                        <path
                                                fill-rule="evenodd"
                                                d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"
                                                clip-rule="evenodd"/>
                                    </svg>
                                    <span>4.5</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="review">
                            <p class="review_text">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Error nostrum odit ut magni numquam eum aspernatur at iure
                                explicabo! Provident laudantium commodi veritatis. Lorem
                                ipsum dolor sit amet consectetur adipisicing elit. Ipsa odit
                                asperiores atque! Fuga, consequatur excepturi.
                            </p>
                            <div class="review_footer">
                                <div class="review_user">
                                    <h3 class="review_user_name">Joh Doe</h3>
                                    <p class="review_user_designation">Youtuber</p>
                                </div>
                                <h3 class="review_rating">
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 24 24"
                                            fill="currentColor"
                                            class="w-6 h-6">
                                        <path
                                                fill-rule="evenodd"
                                                d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"
                                                clip-rule="evenodd"/>
                                    </svg>
                                    <span>4.5</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="review">
                            <p class="review_text">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Error nostrum odit ut magni numquam eum aspernatur at iure
                                explicabo! Provident laudantium commodi veritatis. Lorem
                                ipsum dolor sit amet consectetur adipisicing elit. Ipsa odit
                                asperiores atque! Fuga, consequatur excepturi.
                            </p>
                            <div class="review_footer">
                                <div class="review_user">
                                    <h3 class="review_user_name">Joh Doe</h3>
                                    <p class="review_user_designation">Youtuber</p>
                                </div>
                                <h3 class="review_rating">
                                    <svg
                                            xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 24 24"
                                            fill="currentColor"
                                            class="w-6 h-6">
                                        <path
                                                fill-rule="evenodd"
                                                d="M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"
                                                clip-rule="evenodd"/>
                                    </svg>
                                    <span>4.5</span>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"/>

<%--bootstrap--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

<!--Link JS-->
<script src="./assets/js/index.js"></script>
<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper(".mySwiper", {
        pagination: {
            el: ".swiper-pagination",
            type: "progressbar",
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
    });
</script>
</body>
</html>