<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xiaomi Phone</title>
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
      <img src="${contextPath}/resources/images/system/4eafcd40186edde466860564f9ff71e9.webp " alt="Product">
      <div class="product-title">Xiaomi Phone</div>
      <div>
        <span class="price">Rs. 35,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/5667c36c15d47b90d0faa7ac23c9f276.webp" alt="Product">
      <div class="product-title">Xiaomi Phone </div>
      <div>
        <span class="price">Rs. 40,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/73371d9d0ca9843bcab6875541dc2905.webp" alt="Product">
      <div class="product-title">Xiaomi Phone</div>
      <div>
        <span class="price">Rs. 50,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/d714b3e4e95bd2d4817f5d3458b92c45.webp" alt="Product">
      <div class="product-title">Xiaomi Phone</div>
      <div>
        <span class="price">Rs. 1,80,590</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/dbd8ab2e47beb33c1e0b9aa96287b35c.webp" alt="Product">
      <div class="product-title">Xiaomi Phone</div>
      <div>
        <span class="price">Rs. 1,68,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system//pms_1677429532.40596257.webp" alt="Product">
      <div class="product-title">Xiaomi Phone</div>
      <div>
        <span class="price">Rs. 2,26,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
 <jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>