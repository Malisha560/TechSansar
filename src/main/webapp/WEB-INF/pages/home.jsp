<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TechSansar</title>
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/header.css?v=<%= System.currentTimeMillis() %>">
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/home.css?v=<%= System.currentTimeMillis() %>">
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/css/footer.css?v=<%= System.currentTimeMillis() %>" />
</head>
<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<jsp:include page="header.jsp"></jsp:include>
	<section class="imgslider">

  <div class="slider-container">

    <img src="${contextPath}/resources/images/slide1.png" class="imageslider active" />

    <img src="${contextPath}/resources/images/slide2.png" class="imageslider" />

  </div>

</section>

	<!-- product part -->
	<h1>Save Big on Dell Laptops</h1>
	<div class="products">
		<div class="product-card">
			<img src="${contextPath}/resources/images/1.avif"
				alt="Dell 16 Plus Laptop">
			<div class="product-title">Dell 16 Plus Laptop</div>
			<div>
				<span class="price">Rs. 60,624</span> <span class="old-price">Rs.
					77,983</span>
			</div>
			<div class="discount_product">22% Off</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" alt="image"/>
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/1.avif" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/3.png"
				alt="Dell Latitude 14 3440">
			<div class="product-title">Dell Latitude 14 3440</div>
			<div>
				<span class="price">Rs. 56,329</span> <span class="old-price">Rs.
					69,260</span>
			</div>
			<div class="discount_product">19% Off</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/3.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/4.png"
				alt="Dell Inspiron 14 5445">
			<div class="product-title">Dell Inspiron 14 5445</div>
			<div>
				<span class="price">Rs. 51,927</span> <span class="old-price">Rs.
					64,958</span>
			</div>
			<div class="discount_product">20% Off</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/4.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/5.png"
				alt="Dell Inspiron 14 7445">
			<div class="product-title">Dell Inspiron 14 7445</div>
			<div>
				<span class="price">Rs. 48,469</span> <span class="old-price">Rs.
					60,656</span>
			</div>
			<div class="discount_product">20% Off</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/5.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/6.png"
				alt="Dell G15 5500 Gaming">
			<div class="product-title">Dell G15 5500 Gaming</div>
			<div>
				<span class="price">Rs. 43,204</span> <span class="old-price">Rs.
					51,927</span>
			</div>
			<div class="discount_product">17% Off</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/6.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>
	</div>

	<!--starting of carousel logo box made by malisha-->

	<section>
		<div class="carousel-container">
			<button class="carousel_btn left" id="left">&#10094;</button>
			<div class="carousel-track" id="carouselTrack">
				<img src="${contextPath}/resources/images/acer.png" alt="Logo 1"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/alienware.png" alt="Logo 2"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/apple.png" alt="Logo 3"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/asus.png" alt="Logo 4"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/canon.png" alt="Logo 5"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/dell.png" alt="Logo 6"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/epson.png" alt="Logo 7"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/hp.png" alt="Logo 8"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/Xiaomi.png" alt="Logo 9"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/oneplus.png" alt="Logo 10"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/samsung.png" alt="Logo 11"
					class="carousel-logo" /> <img
					src="${contextPath}/resources/images/vivo.png" alt="Logo 12"
					class="carousel-logo" />
			</div>
			<button class="carousel_btn right" id="right">&#10095;</button>
		</div>
	</section>
	<!--New section for trending products-->
	<section>
		<h1>Trending Products</h1>
		<div class="newcontainer">
			<!-- Column 1 -->
			<div class="tall-box">
				<div class="offer-text">OFFER ENDS AT</div>
				<div class="countdown" id="countdown1">
					<span id="days1">00</span>: <span id="hours1">00</span> : <span
						id="minutes1">00</span> : <span id="seconds1">00</span>
				</div>
				
				<img src="${contextPath}/resources/images/s25.png" class="s25">
				<h3>Galaxy S25 Ultra</h3>
				<p>Stunning Display with great camera</p>
				<div class="rating">
					★★★★★ <span class="review-count">(1,240)</span>
				</div>
				<div class="price">
					Rs. 1,84,999 				
					</div>
				
			</div>

			<!-- Column 2 -->
			<div class="column">
				<div class="items">
					<div class="image-container">
						<img src="${contextPath}/resources/images/samsungbuds.png"
							class="brand" />
						
					</div>
					<div class="details">
						<p class="title">Galaxy Buds 3 Pro</p>
						<div class="rating">
							★★★★★ <span class="count">(2,231)</span>
						</div>
						<div class="price">
							Rs. 31,999 
						</div>
					</div>
				</div>
				<div class="items">
					<div class="image-container">
						<img src="${contextPath}/resources/images/stablet.png"
							class="brand" />
					</div>
					<div class="details">
						<p class="title">Galaxy Tab S10 Ultra</p>
						<div class="rating">
							★★★★★ <span class="count">(1,021)</span>
						</div>
						<div class="price">Rs. 1,60,999</div>
					</div>
				</div>
				<div class="items">
					<div class="image-container">
						<img src="${contextPath}/resources/images/swatch.png"
							class="brand" />
						
					</div>
					<div class="details">
						<p class="title">Samsung Galaxy Watch 5 Pro</p>
						<div class="rating">
							★★★★★ <span class="count">(3,976)</span>
						</div>
						<div class="price">
							Rs. 64,999
						</div>
					</div>
				</div>
				<div class="items">
					<div class="image-container">
						<img src="${contextPath}/resources/images/sring.png" class="brand" />
						
					</div>
					<div class="details">
						<p class="title">Samsung Galaxy Ring</p>
						<div class="rating">
							★★★★ <span class="count">(784)</span>
						</div>
						<div class="price">Rs. 61,999</div>
					</div>
				</div>
			</div>

			<!-- Column 3 -->
			<div class="column">
				<div class="items">
					<div class="image-container">
						<img src="${contextPath}/resources/images/airpod4.png"
							class="brand" />
					</div>
					<div class="details">
						<p class="title">Airpods 4</p>
						<div class="rating">
							★★★★★ <span class="count">(1,438)</span>
						</div>
						<div class="price">Rs. 24,999</div>
					</div>
				</div>
				<div class="items">
					<div class="image-container">
						<img src="${contextPath}/resources/images/mac.png" class="brand" />
						
					</div>
					<div class="details">
						<p class="title">Macbook Air M4(13.6")</p>
						<div class="rating">
							★★★★★ <span class="count">(921)</span>
						</div>
						<div class="price">Rs. 2,09,999</div>
					</div>
				</div>
				<div class="items">
					<div class="image-container">
						<img src="${contextPath}/resources/images/iwatch.png"
							class="brand" />
						
					</div>
					<div class="details">
						<p class="title">Apple Watch Series 10</p>
						<div class="rating">
							★★★ <span class="count">(3,907)</span>
						</div>
						<div class="price">
							Rs. 80,750
						</div>
					</div>
				</div>
				<div class="items">
					<div class="image-container">
						<img src="${contextPath}/resources/images/iphone.png"
							class="brand" />
					
					</div>
					<div class="details">
						<p class="title">Iphone 16e (256GB)</p>
						<div class="rating">
							★★★★ <span class="count">(1,274)</span>
						</div>
						<div class="price">Rs, 1,17,999</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- another product part -->
	<h1>Explore More</h1>
	<div class="products">
		<div class="product-card">
			<img src="${contextPath}/resources/images/s25grey.jpg"
				alt="s25 ultra">
			<div class="product-title">Samsung S25 ultra</div>
			<div>
				<span class="price">Rs. 60,624</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/s25grey.jpg" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/phone.png"
				alt="Samsung S25 Plus">
			<div class="product-title">Samsung S25+</div>
			<div>
				<span class="price">Rs. 56,329</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/phone.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/s25blue.jpg"
				alt="Samsung galaxy S25">
			<div class="product-title">Samsung galaxy S25</div>
			<div>
				<span class="price">Rs. 51,927</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/s25blue.jpg" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/s25b.png"
				alt="Samsung galaxy S25 Edge">
			<div class="product-title">Samsung galaxy S25 Edge</div>
			<div>
				<span class="price">Rs. 48,469</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/s25b.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/gbuds.png" alt="">
			<div class="product-title">Galaxy buds</div>
			<div>
				<span class="price">Rs. 43,204</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/gbuds.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>
	</div>

	<!-- another explore more product part -->
	<div class="products">
		<div class="product-card">
			<img src="${contextPath}/resources/images/16 promax.png"
				alt="16 pro max">
			<div class="product-title">Iphone 16 pro max</div>
			<div>
				<span class="price">Rs. 60,624</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/16 promax.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/16 pro.png" alt="16 pro ">
			<div class="product-title">Iphone 16 pro</div>
			<div>
				<span class="price">Rs. 60,624</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/16 pro.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/16.png" alt="16  ">
			<div class="product-title">Iphone 16 Plus</div>
			<div>
				<span class="price">Rs. 60,624</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/16.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/16 pro.png" alt="16  ">
			<div class="product-title">Iphone 16</div>
			<div>
				<span class="price">Rs. 60,624</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/16 pro.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>

		<div class="product-card">
			<img src="${contextPath}/resources/images/16.png" alt="q6e">
			<div class="product-title">Iphone 16e</div>
			<div>
				<span class="price">Rs. 43,204</span>
			</div>
			<form action="${pageContext.request.contextPath}/mycart" method="post">
    <input type="hidden" name="name" value="Dell 16 Plus Laptop" />
    <input type="hidden" name="price" value="60624" />
    <input type="hidden" name="image" value="resources/images/16.png" />
    <button type="submit" class="add-to-cart">Add to Cart</button>
</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- <script>

  let currentIndex = 0;

  const slides = document.querySelectorAll('.imageslider');



  setInterval(() => {

    slides[currentIndex].classList.remove('active');

    currentIndex = (currentIndex + 1) % slides.length;

    slides[currentIndex].classList.add('active');

  }, 5000);

</script> -->
</body>
</html>