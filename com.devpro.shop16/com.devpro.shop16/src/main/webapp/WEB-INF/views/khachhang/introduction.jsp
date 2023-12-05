<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!--import JSTL-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- import SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Giới thiệu</title>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<jsp:include page="/WEB-INF/views/khachhang/layouts/css.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="${base}/css/introduction.css">

</head>
<body>
	<main class="container">

		<div class="free">Siêu "hot": Free Ship với Thành Viên Vàng của cửa hàng hoặc hóa đơn có tổng giá trị trên 2.000.000</div>
		<!--open header-->
		<jsp:include page="/WEB-INF/views/khachhang/layouts/header.jsp"></jsp:include>
		<!--close header-->

		<div class="navigation">
			<ul>
				<li><a href="${base }/home">Trang chủ</a></li>

				<li>/</li>

				<li>Giới thiệu</li>

				
			</ul>
		</div>
		<!-- open content -->
		<div class="content">
			<div class="content-title">
				<h4>Danh mục trang</h4>
				<div class="layer">
					<ul>
						<li><a href="#">Tìm kiếm</a></li>
						<li><a href="${base }/introduction">Lịch sử thành lập</a></li>
						<li><a href="#">Chính sách đổi trả</a></li>
						<li><a href="#">Quy định</a></li>
					</ul>
				</div>
			</div>
			<div class="content-intro">
				<h3>Về chúng tôi</h3>
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
		</div>
		<!--close content-->

		<!--open footer -->
		<jsp:include page="/WEB-INF/views/khachhang/layouts/footer.jsp"></jsp:include>
		<!--close footer-->
		<div class="copyright">
			Copyright <i class="far fa-copyright"></i> <a href="#">naughtykids.</a> <a
				href="#">Powered by NK</a>
		</div>
	</main>
</body>

<jsp:include page="/WEB-INF/views/khachhang/layouts/js.jsp"></jsp:include>
<script type="text/javascript">
	
</script>
</html>