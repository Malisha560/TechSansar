<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Epson Printer</title>
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
      <img src="${contextPath}/resources/images/system/download.jpg" alt="Product">
      <div class="product-title">Epson-AS-530I</div>
      <div>
        <span class="price">Rs. 48,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Epson-EcoTank-L3210-A4-All-in-One-Ink-Tank_1679370997_1706686688.jpg" alt="Product">
      <div class="product-title">Epson-EcoTank-L3210-A4</div>
      <div>
        <span class="price">Rs. 34,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/EPSON-L850-Multifunction-Photo_1679371021.jpg" alt="Product">
      <div class="product-title">EPSON-L850-Multifunction</div>
      <div>
        <span class="price">Rs. 50,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Epson-LQ-50_1679370973_1706686630.jpg" alt="Product">
      <div class="product-title">Epson-LQ-50</div>
      <div>
        <span class="price">Rs. 35,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Epson-M100-Monochrome-Inkjet_1679400098_1706686544_1706700080.jpg" alt="Product">
      <div class="product-title">Epson-M100-Monochrome-Inkjet</div>
      <div>
        <span class="price">Rs. 75,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/Epson-WorkForce-DS-530II-Color-Duplex_1679400571_1706700545.jpg" alt="Product">
      <div class="product-title">Epson-WorkForce-DS-530II-Color-Duplex</div>
      <div>
        <span class="price">Rs. 46,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
<jsp:include page="footer.jsp"></jsp:include>   
</body>
</html>