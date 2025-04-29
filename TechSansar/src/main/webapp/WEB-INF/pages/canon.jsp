<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Canon Printer</title>
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
      <img src="${contextPath}/resources/images/system/4401e6b94fc245ffa14a95dcdfb9b73f_G3X70_~2.jpg" alt="Product">
      <div class="product-title">Canon PIXMA</div>
      <div>
        <span class="price">Rs. 68,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/716f1e7c961a445890070e97c8873e19_G3080_WH_AS_FR_cl_logo_EN_megatank_v1.2_362.png" alt="Product">
      <div class="product-title">Canon G3080</div>
      <div>
        <span class="price">Rs. 74,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/9d3a27cfd2624860a4cf931c7f611b71_PIXMA+MG2577S_1.png" alt="Product">
      <div class="product-title">Canon G3X70</div>
      <div>
        <span class="price">Rs. 80,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/a833023436f043269d6fcf5583bb4ef4_f0928d893c904ccda0b39d474e26acb2_G4X10_AS_FR_cl_en_MegaTankLogo_362x320.png" alt="Product">
      <div class="product-title">Canon G4X10</div>
      <div>
        <span class="price">Rs. 35,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/b975f141d8eb4194b3993f0417aca2d8_G4080_WH_AS_FR_cl_logo_EN_megatank_v1.2_362.png" alt="Product">
      <div class="product-title">Canon G4080_WHv1.</div>
      <div>
        <span class="price">Rs. 40,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/e56af9f225764244a56e7058ab6cf967_E45XX-series_AS_FR-362x320.png" alt="Product">
      <div class="product-title">Canon E45XX-series</div>
      <div>
        <span class="price">Rs. 56,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>