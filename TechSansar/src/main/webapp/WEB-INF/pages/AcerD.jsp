<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acer Desktop</title>
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
        <img src="${contextPath}/resources/images/system/acer-monitor-ed340cu-h-blue-wp-01-1.avif" alt="Product">
        <div class="product-title">Acer Monitor ED340CU H</div>
        <div>
          <span class="price">Rs. 57,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
      
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/acer-monitor-eg240-y-e-eg270-e-wallpaper-01.avif" alt="Product">
        <div class="product-title">Acer Monitor EG240Y / EG270E</div>
        <div>
          <span class="price">Rs. 28,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
      
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/acer-monitor-nitro-ed271u-x3-ed271u-p3-wallpaper-01-2.avif" alt="Product">
        <div class="product-title">Acer Nitro ED271U X3 / P3</div>
        <div>
          <span class="price">Rs. 43,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
      
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/acer-nitro-ed3-ed343cur-wallpaper-01-4.avif" alt="Product">
        <div class="product-title">Acer Nitro ED3 ED343CUR</div>
        <div>
          <span class="price">Rs. 49,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
      
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/Acer-Nitro_Monitor_KG2-series_KG282K_wp_01-1.avif" alt="Product">
        <div class="product-title">Acer KG2 Series KG282K Monitor</div>
        <div>
          <span class="price">Rs. 42,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
      
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/ED2_ED322QP_wp-01.avif" alt="Product">
        <div class="product-title">Acer ED2 ED322QP Monitor</div>
        <div>
          <span class="price">Rs. 39,000</span>
        </div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
  </div>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>