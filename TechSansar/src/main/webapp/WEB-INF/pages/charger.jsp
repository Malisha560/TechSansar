<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Charger</title>
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
<div class="products">
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/MQKJ3.jpg" alt="Product">
      <div class="product-title">Apple Type C-Type C(FastCharging)</div>
      <div>
        <span class="price">Rs. 8,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/MU2G3.jpg" alt="Product">
      <div class="product-title">Apple Type C-Type C</div>
      <div>
        <span class="price">Rs. 4,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/MX6X3.jpg" alt="Product">
      <div class="product-title">Apple AirPods Charger</div>
      <div>
        <span class="price">Rs. 5,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Samsung-25W-GaN-charger-Price-in-Nepal.jpg" alt="Product">
      <div class="product-title">Samsung-25WCharger</div>
      <div>
        <span class="price">Rs. 5,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system//Samsung-Fast-Charging-2.0-45W-Adapter.jpg" alt="Product">
      <div class="product-title">Samsung-Fast-Charging</div>
      <div>
        <span class="price">Rs. 6,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Samsung-Fast-Charging-25W-Adapter.jpg" alt="Product">
      <div class="product-title">Samsung Fast Charging 25W</div>
      <div>
        <span class="price">Rs. 8,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>