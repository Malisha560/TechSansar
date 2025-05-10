<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alienware Desktop</title>
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
      <img src="${contextPath}/resources/images/system/monitor-alienware-2725df-black-gallery-1-mg.avif" alt="Product">
      <div class="product-title">Alienware AW2725DF 27" QD-OLED Monitor</div>
      <div>
        <span class="price">Rs. 148,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/monitor-alienware-aw2523hf-black-gallery-1.avif" alt="Product">
      <div class="product-title">Alienware AW2523HF 25" 360Hz Monitor</div>
      <div>
        <span class="price">Rs. 84,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/monitor-alienware-aw2723df-white-gallery-1.avif" alt="Product">
      <div class="product-title">Alienware AW2723DF 27" 240Hz Monitor</div>
      <div>
        <span class="price">Rs. 124,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/monitor-alienware-aw2725qf-bk-gallery-1.avif" alt="Product">
      <div class="product-title">Alienware AW2725QF 27" UHD OLED Monitor</div>
      <div>
        <span class="price">Rs. 165,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/monitor-alienware-aw3225qf-white-gallery-1.avif" alt="Product">
      <div class="product-title">Alienware AW3225QF 32" UHD Curved Monitor</div>
      <div>
        <span class="price">Rs. 198,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/monitor-aw2725q-black-gallery-2.avif" alt="Product">
      <div class="product-title">Alienware AW2725Q 27" Gaming Monitor</div>
      <div>
        <span class="price">Rs. 142,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
   <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>