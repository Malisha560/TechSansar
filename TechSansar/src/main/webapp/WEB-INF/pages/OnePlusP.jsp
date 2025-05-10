<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One Plus Phone</title>
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
      <img src="${contextPath}/resources/images/system/OnePlus-12R.jpg" alt="Product">
      <div class="product-title">OnePlus 12R (8GB RAM, 128GB)</div>
      <div>
        <span class="price">Rs. 58,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/OnePlus-13R-Design-and-Display.jpg" alt="Product">
      <div class="product-title">OnePlus 13R (Upcoming – Expected)</div>
      <div>
        <span class="price">Rs. 64,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/OnePlus-Nord-CE-3-5G-Design-and-Display.jpg" alt="Product">
      <div class="product-title">OnePlus Nord CE 3 5G (12GB RAM, 256GB)</div>
      <div>
        <span class="price">Rs. 27,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/OnePlus-Nord-CE-4-Lite-Design-and-Displaya.jpg" alt="Product">
      <div class="product-title">OnePlus Nord CE 4 Lite (Expected)</div>
      <div>
        <span class="price">Rs. 21,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/OnePlus-Nord-N200-5G-Design-and-Display.jpg" alt="Product">
      <div class="product-title">OnePlus Nord N200 5G (4GB RAM, 64GB)</div>
      <div>
        <span class="price">Rs. 18,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/OnePlus-Nord-N30-SE-5G-Design-and-Display.jpg" alt="Product">
      <div class="product-title">OnePlus Nord N30 SE 5G (6GB RAM, 128GB)</div>
      <div>
        <span class="price">Rs. 16,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
  <jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>