<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apple Laptops</title>
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
        <img src="${contextPath}/resources/images/system/apple-macbook-air-m3-8gb-256gb-price-nepal.webp" alt="Product">
        <div class="product-title">Apple MacBook Air M3 (8GB/256GB)</div>
        <div>
          <span class="price">Rs. 176,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
  
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/apple-macbook-pro-m3-chip-price-in-nepal.webp" alt="Product">
        <div class="product-title">Apple MacBook Pro M2 (8GB/512GB)</div>
        <div>
          <span class="price">Rs. 240,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>

      <div class="product-card">
        <img src="${contextPath}/resources/images/system/macbook-air-m2-256gb-price-in-nepal.webp" alt="Product">
        <div class="product-title">Apple MacBook Air M2 (256GB)</div>
        <div>
          <span class="price">Rs. 145,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/macbook-pro-2023-m3-pro-price-in-nepal-2024.webp" alt="Product">
        <div class="product-title">Apple MacBook Pro M3 Pro 2023</div>
        <div>
          <span class="price">Rs. 315,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
  
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/macboook-air-m1-price-in-nepal.webp" alt="Product">
        <div class="product-title">Apple MacBook Air M1 (256GB)</div>
        <div>
          <span class="price">Rs. 119,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>

      <div class="product-card">
          <img src="${contextPath}/resources/images/system/mackbook-air-m2-01_1_1_1.jpg" alt="Product">
          <div class="product-title">Apple MacBook Air M2 2023</div>
          <div>
            <span class="price">Rs. 152,000</span>
          </div>
          <button class="add-to-cart">ADD TO CART</button>
        </div>

  </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>