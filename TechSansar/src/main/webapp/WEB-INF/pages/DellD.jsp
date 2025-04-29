<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dell Desktop</title>
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
      <img src="${contextPath}/resources/images/system/monitor-s2425h-gray-gallery-8.avif" alt="Product">
      <div class="product-title">Dell S2425H 24" FHD Monitor</div>
      <div>
        <span class="price">Rs. 29,500</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/monitor-s2425hs-gray-gallery-8.avif" alt="Product">
      <div class="product-title">Dell S2425HS 24" FHD Monitor with Stand</div>
      <div>
        <span class="price">Rs. 32,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/monitor-s2725qs-gray-gallery-1.avif" alt="Product">
      <div class="product-title">Dell S2725QS 27" 4K UHD Monitor</div>
      <div>
        <span class="price">Rs. 68,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/monitor-s3425dw-gray-gallery-1.avif" alt="Product">
      <div class="product-title">Dell S3425DW 34" Ultrawide WQHD Monitor</div>
      <div>
        <span class="price">Rs. 110,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/s3222dgm_cfp_00000ff090_bk.avif" alt="Product">
      <div class="product-title">Dell S3222DGM 32" QHD Curved Gaming Monitor</div>
      <div>
        <span class="price">Rs. 76,500</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/s3422dwg-xfp-01-bk.avif" alt="Product">
      <div class="product-title">Dell S3422DWG 34" Curved WQHD Gaming Monitor</div>
      <div>
        <span class="price">Rs. 95,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>  
  </div>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>