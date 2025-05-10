<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apple Desktop</title>
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
      <img src="${contextPath}/resources/images/system/4_port._CB573764901_.png" alt="Product">
      <div class="product-title">Apple USB-C Digital AV Multiport Adapter</div>
      <div>
        <span class="price">Rs. 30,500</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/7d7f4e9f99124a05dd3291ae9ce5a35b.avif" alt="Product">
      <div class="product-title">Apple MacBook Air M2 (13-inch, Midnight)</div>
      <div>
        <span class="price">Rs. 162,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Untitled.004.png" alt="Product">
      <div class="product-title">Apple AirPods Pro (2nd Gen)</div>
      <div>
        <span class="price">Rs. 38,500</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>