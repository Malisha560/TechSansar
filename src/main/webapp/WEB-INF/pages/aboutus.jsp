<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>About Us</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/aboutus.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/footer.css" />
</head>

<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<jsp:include page="header.jsp"></jsp:include>

	<div class="about-content">
		<h2>About Us</h2>
		<p>
			<strong>TechSansar</strong> is one of Nepal’s leading IT retail
			suppliers, located in Putalisadak, with multiple franchises across
			the Kathmandu Valley. We offer a wide range of tech products — from
			laptops and accessories to computer parts and more.
		</p>
		<p>Whether you're a student, gamer, professional, or business
			owner, we make technology accessible and affordable for everyone. We
			pride ourselves on reliability, competitive pricing, and a
			customer-first approach.</p>
		<p>
			Our new online platform brings a seamless shopping experience to your
			fingertips — shop online, anytime, anywhere. <strong>TechSansar
				– Your trusted IT partner.</strong>
		</p>
	</div>



	<section class="mission">
		<div class="box">
			<h3>Mission</h3>
			<p>To provide high-quality products with honesty, efficiency, and
				customer-first service. We strive to bring happiness through
				technology.</p>
		</div>
		<div class="vision">
			<h3>Vision</h3>
			<p>To be the most trusted name in tech retail, offering
				cutting-edge products and seamless service for a smarter lifestyle.</p>
		</div>
	</section>


	<section class="team">
		<h2>Our Team</h2>
		<div class="grid">
			<div class="card">
				<div class="avatar"></div>
				<a href="${contextPath}/cv?profile=mali">
					<h3>Malisha Kushwaha</h3>
				</a>
			</div>
			<div class="card">
				<div class="avatar"></div>
				<a href="${contextPath}/cv?profile=aayush">
					<h3>Aayush Shrestha</h3>
				</a>
			</div>
			<div class="card">
				<div class="avatar"></div>
				<a href="${contextPath}/cv?profile=bijem">
					<h3>Bijem Shrestha</h3>
				</a>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>