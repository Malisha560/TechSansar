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
      <img src="${contextPath}/resources/images/system/0afea027-6d3f-4520-b60d-fe13fe69e92b.webp " alt="Product">
      <div class="product-title">I phone 16 Pro Max</div>
      <div>
        <span class="price">Rs. 2,58,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/16362efd-ee42-4073-9902-007a5529618a.webp" alt="Product">
      <div class="product-title">I phone 16 Pro </div>
      <div>
        <span class="price">Rs. 1,80,500</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/37c0be64-83fc-4d60-95c4-09f76cb8c63d.webp" alt="Product">
      <div class="product-title">I phone 16 </div>
      <div>
        <span class="price">Rs. 1,27,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/974daf1d-850f-4382-88e3-d235d03f8d99.webp" alt="Product">
      <div class="product-title">I phone 15 Pro Max</div>
      <div>
        <span class="price">Rs. 1,80,990</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/e2ac3fe6-0afc-40de-9f4f-3985b924578f.webp" alt="Product">
      <div class="product-title">I phone 15 Pro</div>
      <div>
        <span class="price">Rs. 1,48,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/f25f8b1f-aa7a-4fa6-a390-7368e357fdc1.webp" alt="Product">
      <div class="product-title">I phone 15</div>
      <div>
        <span class="price">Rs. 1,26,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
   <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>