<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!--import JSTL-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--open footer -->
<div class="footer">
	<form action="${base }/home" method="post" modelAttribute="subcribe">
		<div class="contact">
			<div class="register">
				<div class="register-icon">
					<i class="far fa-envelope"></i>
				</div>
				<div class="register-title">Đăng kí thông tin ngay để nhận nhiều ưu đãi "khủng"</div>
			</div>
			<div class="search search-email">
				<input type="email" class="searchTerm"
					placeholder="Nhập email của bạn" id="email" name="email">
				<button type="button" onclick="home('${base}');" class="save-email">Đăng
					kí ngay</button>
				
			</div>
			<div class="call">
				<div class="call-icon">
					<i class="fas fa-phone-square-alt"></i>
				</div>
				<div class="call-title">
					Liên hệ ngay với chúng tôi: <span class="call-phone">01214247454</span>
				</div>
			</div>
		</div>

		<div id="TB_AJAX"
			style="text-align: center; margin-top: 15px; color: #766b6b; margin-bottom: -16px;">

		</div>
	</form>
	
	<div class="introduc">
		<div class="introduc-content">
			<div class="introduc-title">
				<h3>VỀ CHÚNG TÔI</h3>
			</div>
			<div class="introduc-logo">
				<div>NAUGHTY KIDS CAM KẾT MỌI SẢN PHẨM ĐỀU LÀ HÀNG CHÍNH HÃNG, NẾU PHÁT HIỆN HÀNG GIẢ ĐỀN BÙ GẤP 10 LẦN GIÁ GỐC</div>
				<a href="${base }"> <img src="${base }/img/title1.png" width="30%">
				</a>
			</div>
		</div>
		<div class="introduc-link">
			<div class="introduc-title">
				<h3>LỐI TẮT</h3>
			</div>
			<div class="introduc-list">
				<ul>
					<li><a href="${base }/introduction">Lịch sử thành lập</a></li>
					<li><a href="#">Bạn đang cần "siêu phẩm" nào?</a></li>
					<li><a href="#">Bạn muốn đổi/trả sản phẩm? Naughty lo hết!</a></li>
					<li><a href="#">Một vài quy định của shop đây bạn ơi!</a></li>
				</ul>
			</div>
		</div>
		<div class="introduc-contact">
			<div class="introduc-title">
				<h3>LIÊN HỆ NGAY</h3>
			</div>
			<div class="introduc-list">
				<ul>
					<li><i class="fas fa-map-marker-alt"></i> 214 Độc Lập, Tân Thành, Tân Phú, TP.HCM</li>
					<li><i class="fas fa-phone-volume"></i> 01214247454</li>
					<li><i class="fas fa-phone-volume"></i> 0933671580</li>
					<li><i class="fas fa-paper-plane"></i> naughtykidsco@gmail.com
					</li>
				</ul>
			</div>
		</div>
		<div class="introduc-fanpage">
			<div class="introduc-title">
				<h3>FANPAGE</h3>
			</div>
			<div class="introduc-list"></div>
			<ul>
				<li>Naughty Kids Authentic Store</li>
			</ul>
		</div>
	</div>

</div>
<!--close footer-->
