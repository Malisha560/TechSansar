<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/products.css" />
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/header.css"/>
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/footer.css"/>
</head>
<body>  
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<jsp:include page="header.jsp"></jsp:include>
      <div class="products">

        <div class="product-card">
          <img src="${contextPath}/resources/images/system/dell-alienware-m15-r6-gaming-laptop.jpg" alt="Product">
          <div class="product-title">Alienware M15 R6 Gaming Laptop</div>
          <div>
            <span class="price">Rs. 205,000</span>
            <span class="old-price">Rs. 220,000</span>
          </div>
          <div class="discount">7% Off</div>
          <button class="add-to-cart">ADD TO CART</button>
        </div>
    
        <div class="product-card">
          <img src="${contextPath}/resources/images/system/dell-alienware-m16-gaming-laptop-price-in-nepal.webp" alt="Product">
          <div class="product-title">Alienware M16 Gaming Laptop</div>
          <div>
            <span class="price">Rs. 245,000</span>
            <span class="old-price">Rs. 265,000</span>
          </div>
          <div class="discount">8% Off</div>
          <button class="add-to-cart">ADD TO CART</button>
        </div>
        <div class="product-card">
          <img src="${contextPath}/resources/images/system/dell-alienware-m16-r2-price-in-nepal.webp" alt="Product">
          <div class="product-title">Alienware M16 R2 Gaming Laptop</div>
          <div>
            <span class="price">Rs. 275,000</span>
            <span class="old-price">Rs. 299,000</span>
          </div>
          <div class="discount">8% Off</div>
          <button class="add-to-cart">ADD TO CART</button>
        </div>
    
        <div class="product-card">
          <img src="${contextPath}/resources/images/system/dell-x14-05_1.jpg" alt="Product">
          <div class="product-title">Alienware X14 Gaming Laptop</div>
          <div>
            <span class="price">Rs. 235,000</span>
            <span class="old-price">Rs. 249,000</span>
          </div>
          <div class="discount">6% Off</div>
          <button class="add-to-cart">ADD TO CART</button>
        </div>
    
        <div class="product-card">
          <img src="${contextPath}/resources/images/system/laptop-alienware-m18-r2-intel-bk-copilot-gallery-2.avif" alt="Product">
          <div class="product-title">Alienware M18 R2 Intel Copilot</div>
          <div>
            <span class="price">Rs. 365,000</span>
            <span class="old-price">Rs. 399,000</span>
          </div>
          <div class="discount">9% Off</div>
          <button class="add-to-cart">ADD TO CART</button>
        </div>
        <div class="product-card">
            <img src="${contextPath}/resources/images/system/m15-r7.jpg" alt="Product">
            <div class="product-title">Alienware M15 R7 Gaming Laptop</div>
            <div>
              <span class="price">Rs. 215,000</span>
              <span class="old-price">Rs. 229,000</span>
            </div>
            <div class="discount">6% Off</div>
            <button class="add-to-cart">ADD TO CART</button>
          </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>