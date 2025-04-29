<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HP Printer</title>
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
      <img src="${contextPath}/resources/images/system/42a956581c648a049acd4b73c1df8087.jpg_400x400q75.avif" alt="Product">
      <div class="product-title">HP LaserJet 107a Single Function Affordable Mono Printer</div>
      <div>
        <span class="price">Rs. 50,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/817a85b6b24de81698e662b030c5721f.jpg_400x400q75.avif" alt="Product">
      <div class="product-title">HP Mono Laser Multi-Function All-In -One Small Office /</div>
      <div>
        <span class="price">Rs. 44,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/a87e9d66cd9598b9a799f71396be3779.jpg_400x400q75.avif" alt="Product">
      <div class="product-title">HP DCP-1510 Mono Laser Multi-Function All-In -One ( Print < Scan & Copy )</div>
      <div>
        <span class="price">Rs. 90,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/b1b5fb910826324b411fc6542b7d3a54.jpg_400x400q75.avif" alt="Product">
      <div class="product-title">HP MFC-L5900DW Monochrome Laser Multi-Function</div>
      <div>
        <span class="price">Rs. 25,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/bcca1cdaa3ac1d8ec5bfe313c7e55dd0.jpg_400x400q75.avif" alt="Product">
      <div class="product-title">HP HL-L2320D Mono Laser Printer With Auto Duplex</div>
      <div>
        <span class="price">Rs. 49,499</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    
    <div class="product-card">
      <img src="${contextPath}/resources/images/system/f4f9ef5a655d3d9e74874f8f081ec1a8.jpg_400x400q75.avif" alt="Product">
      <div class="product-title">HP Laser Printer HL1110 With 1 Year Warranty</div>
      <div>
        <span class="price">Rs. 36,999</span>
      </div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
  
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>