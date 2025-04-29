<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Watch</title>
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
      <img src="${contextPath}/resources/images/system/images.jpg" alt="Product">
      <div class="product-title">APPLE WATCH SE 40 MID(Orange Band)</div>
      <div>
        <span class="price">Rs. 38,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/APPLE WATCH SE 40 MID AL MID SP GPS-ITP-228x228.jpg" alt="Product">
      <div class="product-title">APPLE WATCH SE 40 </div>
      <div>
        <span class="price">Rs. 30,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/blackband-228x228.jpg" alt="Product">
      <div class="product-title">APPLE WATCH SE (BlackBand)</div>
      <div>
        <span class="price">Rs. 24,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Galaxy-Fit3-Black.jpg" alt="Product">
      <div class="product-title">Galaxy-Fit3-Black</div>
      <div>
        <span class="price">Rs. 25,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Samsung-Galaxy-Watch-4-Pink-Gold.jpg" alt="Product">
      <div class="product-title">Galaxy-Watch-4-Pink</div>
      <div>
        <span class="price">Rs. 36,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Samsung-Galaxy-Watch-5-Purple.jpg" alt="Product">
      <div class="product-title">Galaxy-Watch-5-Purple</div>
      <div>
        <span class="price">Rs. 20,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>