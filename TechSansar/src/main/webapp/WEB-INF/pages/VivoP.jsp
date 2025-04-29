<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vivo Phone</title>
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
      <img src="${contextPath}/resources/images/system/04783ee1a7d1c5cfa80439892357bfbd.png" alt="Vivo Y50">
      <div class="product-title">Vivo Y50 (8GB RAM, 128GB)</div>
      <div>
        <span class="price">Rs. 15,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/05e0388aeee6da72c12f4eafe0c0976d.png" alt="Vivo V20 Pro">
      <div class="product-title">Vivo V20 Pro (12GB RAM, 256GB)</div>
      <div>
        <span class="price">Rs. 29,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/1e929d96b463d44aa547ac0978e7f4bb.png" alt="Vivo S1 Pro">
      <div class="product-title">Vivo S1 Pro (6GB RAM, 128GB)</div>
      <div>
        <span class="price">Rs. 18,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/43292a79fd87416609ff3c3ae5328b62.png" alt="Vivo Y20G">
      <div class="product-title">Vivo Y20G (4GB RAM, 64GB)</div>
      <div>
        <span class="price">Rs. 13,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/57a47754bfbb476e4cedbb287ac5fddf.png" alt="Vivo Y91C">
      <div class="product-title">Vivo Y91C (2GB RAM, 32GB)</div>
      <div>
        <span class="price">Rs. 19,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="${contextPath}/resources/images/system/717fa7a0ee974b68a397c2d076d9361c.png" alt="Vivo V21e">
      <div class="product-title">Vivo V21e (8GB RAM, 128GB)</div>
      <div>
        <span class="price">Rs. 23,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

  </div>
<jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>