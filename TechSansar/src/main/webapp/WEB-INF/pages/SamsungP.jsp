<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apple Phone</title>
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
      <img src="${contextPath}/resources/images/system/samsung-galaxy-a06-1.jpg " alt="Product">
      <div class="product-title">Samsung-Galaxy-A06</div>
      <div>
        <span class="price">Rs. 35,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/samsung-galaxy-f05.jpg" alt="Product">
      <div class="product-title">Samsung-Galaxy-F05 </div>
      <div>
        <span class="price">Rs. 40,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/samsung-galaxy-m05.jpg" alt="Product">
      <div class="product-title">Samsung-Galaxy-M05</div>
      <div>
        <span class="price">Rs. 50,000</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/samsung-galaxy-s25-ultra-sm-s938.jpg" alt="Product">
      <div class="product-title">Samsung-Galaxy-S25-Ultra</div>
      <div>
        <span class="price">Rs. 1,80,590</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/samsung-galaxy-tab-s10-ultra.jpg" alt="Product">
      <div class="product-title">Samsung-Galaxy-Tab-S10-ultra</div>
      <div>
        <span class="price">Rs. 1,68,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/samsung-galaxy-z-flip6.jpg" alt="Product">
      <div class="product-title">Samsung-Galaxy-Z-flip6</div>
      <div>
        <span class="price">Rs. 2,26,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
     <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>