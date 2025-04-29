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
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/header.css"/>
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/home.css"/>
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/footer.css"/>
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<jsp:include page="header.jsp"></jsp:include>
<section class="imgslider">
    <article id="article-container">
      <img src="${contextPath}/resources/images/system/slide1.png" class="imageslider" id="img0">
      <img src="${contextPath}/resources/images/system/slide2.jpg" class="imageslider" id="img1">
      <img src="${contextPath}/resources/images/system/business.jpg" class="imageslider" id="img2">
    </article>
  </section>

  <!-- product part -->
  <h1>Save Big on Dell Laptops</h1>
  <div class="products">
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/1.png" alt="Dell 16 Plus Laptop">
      <div class="product-title">Dell 16 Plus Laptop</div>
      <div>
        <span class="price">Rs. 60,624</span>
        <span class="old-price">Rs. 77,983</span>
      </div>
      <div class="discount_product">22% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/3.png" alt="Dell Latitude 14 3440">
      <div class="product-title">Dell Latitude 14 3440</div>
      <div>
        <span class="price">Rs. 56,329</span>
        <span class="old-price">Rs. 69,260</span>
      </div>
      <div class="discount_product">19% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/4.png" alt="Dell Inspiron 14 5445">
      <div class="product-title">Dell Inspiron 14 5445</div>
      <div>
        <span class="price">Rs. 51,927</span>
        <span class="old-price">Rs. 64,958</span>
      </div>
      <div class="discount_product">20% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/5.png" alt="Dell Inspiron 14 7445">
      <div class="product-title">Dell Inspiron 14 7445</div>
      <div>
        <span class="price">Rs. 48,469</span>
        <span class="old-price">Rs. 60,656</span>
      </div>
      <div class="discount_product">20% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/6.png" alt="Dell G15 5500 Gaming">
      <div class="product-title">Dell G15 5500 Gaming</div>
      <div>
        <span class="price">Rs. 43,204</span>
        <span class="old-price">Rs. 51,927</span>
      </div>
      <div class="discount_product">17% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  </div>

  <!--starting of carousel logo box made by malisha-->

  <section>
    <div class="carousel-container">
      <button class="carousel_btn left" id="left">&#10094;</button>
      <div class="carousel-track" id="carouselTrack">
        <img src="${contextPath}/resources/images/system/acer.png" alt="Logo 1" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/alienware.png" alt="Logo 2" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/apple.png" alt="Logo 3" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/asus.png" alt="Logo 4" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/canon.png" alt="Logo 5" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/dell.png" alt="Logo 6" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/epson.png" alt="Logo 7" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/hp.png" alt="Logo 8" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/Xiaomi.png" alt="Logo 9" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/oneplus.png" alt="Logo 10" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/samsung.png" alt="Logo 11" class="carousel-logo" />
        <img src="${contextPath}/resources/images/system/vivo.png" alt="Logo 12" class="carousel-logo" />
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
          <span id="days1">00</span>:
          <span id="hours1">00</span> :
          <span id="minutes1">00</span> :
          <span id="seconds1">00</span>
        </div>
        <img src="${contextPath}/resources/images/system/s25.png" class="image">
        <h3>Galaxy S25 Ultra</h3>
        <p>Stunning Display with great camera</p>
        <div class="rating">★★★★★ <span class="review-count">(1,240)</span></div>
        <div class="price">Rs. 1,84,999
          <span class="original-price">Rs. 1,99,999</span>
        </div>
      </div>

      <!-- Column 2 -->
      <div class="column">
        <div class="items">
          <div class="image-container">
            <img src="${contextPath}/resources/images/system/samsungbuds.png" class="brand" />
            <div class="discount">20%</div>
          </div>
          <div class="details">
            <p class="title">Galaxy Buds 3 Pro</p>
            <div class="rating">★★★★★ <span class="count">(2,231)</span></div>
            <div class="price">Rs. 31,999 <span class="original">Rs.38,398</span></div>
          </div>
        </div>
        <div class="items">
          <div class="image-container">
            <img src="${contextPath}/resources/images/system/stablet.png" class="brand" />
          </div>
          <div class="details">
            <p class="title">Galaxy Tab S10 Ultra</p>
            <div class="rating">★★★★★ <span class="count">(1,021)</span></div>
            <div class="price">Rs. 1,60,999</div>
          </div>
        </div>
        <div class="items">
          <div class="image-container">
            <img src="${contextPath}/resources/images/system/swatch.png" class="brand" />
            <div class="discount">12%</div>
          </div>
          <div class="details">
            <p class="title">Samsung Galaxy Watch 5 Pro</p>
            <div class="rating">★★★★★ <span class="count">(3,976)</span></div>
            <div class="price">Rs. 64,999<span class="original">Rs. 72,999 </span></div>
          </div>
        </div>
        <div class="items">
          <div class="image-container">
            <img src="${contextPath}/resources/images/system/sring.png" class="brand" />
            <div class="new">New Arrival</div>
          </div>
          <div class="details">
            <p class="title">Samsung Galaxy Ring</p>
            <div class="rating">★★★★★ <span class="count">(784)</span></div>
            <div class="price">Rs. 61,999</div>
          </div>
        </div>
      </div>

      <!-- Column 3 -->
      <div class="column">
        <div class="items">
          <div class="image-container">
            <img src="${contextPath}/resources/images/system/airpod4.png" class="brand" />
          </div>
          <div class="details">
            <p class="title">Airpods 4</p>
            <div class="rating">★★★★★ <span class="count">(1,438)</span></div>
            <div class="price">Rs. 24,999 </div>
          </div>
        </div>
        <div class="items">
          <div class="image-container">
            <img src="${contextPath}/resources/images/system/mac.png" class="brand" />
            <div class="new">New Arrival</div>
          </div>
          <div class="details">
            <p class="title">Macbook Air M4(13.6")</p>
            <div class="rating">★★★★★ <span class="count">(921)</span></div>
            <div class="price">Rs. 2,09,999</div>
          </div>
        </div>
        <div class="items">
          <div class="image-container">
            <img src="${contextPath}/resources/images/system/iwatch.png" class="brand" />
            <div class="discount">12%</div>
          </div>
          <div class="details">
            <p class="title">Apple Watch Series 10</p>
            <div class="rating">★★★★★ <span class="count">(3,907)</span></div>
            <div class="price">Rs. 80,750<span class="original">Rs. 85,000</span></div>
          </div>
        </div>
        <div class="items">
          <div class="image-container">
            <img src="${contextPath}/resources/images/system/iphone.png" class="brand" />
            <div class="new">New Arrival</div>
          </div>
          <div class="details">
            <p class="title">Iphone 16e (256GB)</p>
            <div class="rating">★★★★★ <span class="count">(1,274)</span></div>
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
      <img src="${contextPath}/resources/images/system/s25grey.jpg" alt="s25 ultra">
      <div class="product-title">Samsung S25 ultra</div>
      <div>
        <span class="price">Rs. 60,624</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/phone.png" alt="Samsung S25 Plus">
      <div class="product-title">Samsung S25+</div>
      <div>
        <span class="price">Rs. 56,329</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/s25blue.jpg" alt="Samsung galaxy S25">
      <div class="product-title">Samsung galaxy S25</div>
      <div>
        <span class="price">Rs. 51,927</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/s25b.png" alt="Samsung galaxy S25 Edge">
      <div class="product-title">Samsung galaxy S25 Edge</div>
      <div>
        <span class="price">Rs. 48,469</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/gbuds.png" alt="">
      <div class="product-title">Galaxy buds</div>
      <div>
        <span class="price">Rs. 43,204</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  </div>

  <!-- another explore more product part -->
  <div class="products">
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/16promax.png" alt="16 pro max">
      <div class="product-title">Iphone 16 pro max</div>
      <div>
        <span class="price">Rs. 60,624</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/16pro.png" alt="16 pro ">
      <div class="product-title">Iphone 16 pro</div>
      <div>
        <span class="price">Rs. 60,624</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/16.png" alt="16  ">
      <div class="product-title">Iphone 16 Plus</div>
      <div>
        <span class="price">Rs. 60,624</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/16pro.png" alt="16  ">
      <div class="product-title">Iphone 16 </div>
      <div>
        <span class="price">Rs. 60,624</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/16e.jpg" alt="q6e">
      <div class="product-title">Iphone 16e</div>
      <div>
        <span class="price">Rs. 43,204</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  </div>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>