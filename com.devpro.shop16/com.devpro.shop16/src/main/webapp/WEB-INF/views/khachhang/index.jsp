<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Naughty Store</title>

    <jsp:include page="/WEB-INF/views/khachhang/layouts/css.jsp"></jsp:include>
</head>
<body>
<main class="container">
    <div class="free">Siêu "hot": Free Ship với Thành Viên Vàng của cửa hàng hoặc hóa đơn có tổng giá trị trên 2.000.000</div>

    <jsp:include page="/WEB-INF/views/khachhang/layouts/header.jsp"></jsp:include>

    <%--open content --%>
    <div class="content">
        <img src="${base }/img/banner_shop.jpg" width="100%">
        <!--open new item-->

        <div class="products">
            <div class="products-name">
                <a href="#"> SẢN PHẨM CỦA CHÚNG TÔI </a>
            </div>

            <div class="list-product" style="flex-wrap: wrap;">

                <c:forEach items="${productsWithPaging.data }" var="product">
                    <div class="item">

                        <div class="item-images">
                            <a href="${base }/product/details/${product.seo}">
                                    <img
                                        src="${base }/upload/${product.avatar}"
                                        width="100%">
<%--                                    <img--%>
<%--                                            src="${base }/img/hoodie-basic2.png"--%>
<%--                                            width="100%">                                 --%>
                            </a>
                        </div>
                        <div class="item-content">
                            <a href="${base }/product/details/${product.seo}">
                                    ${product.title } </a>
                            <div class="price">
                                <fmt:setLocale value="vi_VN"/>
                                <fmt:formatNumber value="${product.price}" type="currency"/>

                            </div>

                        </div>
                    </div>

                    <!-- Paging -->

                </c:forEach>
            </div>

            <!--open product-->

            <div class="logo-item">
                <div class="logo-item-list">
                    <a href="${base }/collection"> <img
                            src="${base }/img/vans_banner_shop.jpg" width="100%">
                    </a>
<%--                    <h3 class="logo-name">GIÀY</h3>--%>
<%--                    <div class="add">--%>
<%--                        <a href="${base }/collection">MUA NGAY</a>--%>
<%--                    </div>--%>
                </div>
                <div class="logo-item-list">
                    <a href="${base }/collection"> <img
                            src="${base }/img/converse_banner_shop.jpg" width="100%">
                    </a>
<%--                    <h3 class="logo-name-collection">COLLECTION</h3>--%>
<%--                    <div class="add-collection">--%>
<%--                        <a href="${base }/collection">XEM THÊM</a>--%>
<%--                    </div>--%>
                </div>
                <div class="logo-item-list">
                    <a href="${base }/collection"> <img
                            src="${base }/img/slides_banner_shop.jpg" width="100%">
                    </a>
<%--                    <h3 class="logo-name">DÉP</h3>--%>
<%--                    <div class="add">--%>
<%--                        <a href="${base }/collection">MUA NGAY</a>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
        <!--close products-->

        <!--open about us -->
        <div class="about">
            <div class="about-us">
                <a href="${base }/introduction"> <img
                        src="${base }/img/aboutus_qr.png" width="80%">
                </a>
<%--                <h3 class="about-title">ABOUT US</h3>--%>
<%--                <div class="about-button">--%>
<%--                    <a href="${base }/introduction"> XEM NGAY </a>--%>
<%--                </div>--%>
            </div>
            <div class="about-us">

                <p>Naughty Kids ra mắt vào năm 2023.</p>
                <p>Lấy cảm hứng từ những người trẻ "tinh nghịch" trong độ tuổi thiếu niên với tình yêu cháy bỏng dành cho những loại phụ kiện thời trang tô điểm cho đôi chân, Naughty Kids quyết tâm "cháy" hết mình cùng các bạn bằng cách cung cấp và mang đến các mẫu slides, sneaker cơ bản đến những "siêu phẩm" đình đám nhất.</p>
                <p>Nói không với hàng giả, Naughty Kids cam kết tất cả sản phẩm đến tay các bạn đều là hàng chính hãng 100%.</p>
                <p>Naughty Kids đã có mặt trên khắp các nền tảng mạng xã hội, sàn giao dịch trực tuyến như Facebook, Instagram, Shopee, Lazada... Vui lòng liên hệ với chúng tôi qua các thông tin sau:</p>
                <p>Facebook: Naughty Kids Authentic Store</p>
                <p>Instagram: naughtykidsco</p>
                <p>Shopee: naughtykidstore.vn</p>
                <p>Lazada: naughtykidstore.vn</p>
                <p>Liên hệ: 01214247454 hoặc 0933671580</p>
                <p>Địa chỉ: 214 Độc Lập, Tân Thành, Tân Phú, TP.HCM</p>
            </div>
        </div>
        <!--close about us-->

    </div>
    <!--close content-->

    <%--close content --%>
    <jsp:include page="/WEB-INF/views/khachhang/layouts/footer.jsp"></jsp:include>
    <div class="copyright">
        Copyright <i class="far fa-copyright"></i> <a href="#">naughtykids.</a> <a
            href="#">Powered by NK</a>
    </div>
</main>

</body>
<jsp:include page="/WEB-INF/views/khachhang/layouts/js.jsp"></jsp:include>
</html>