<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Asus Laptops</title>
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
        <img src="${contextPath}/resources/images/system/new_project_12__2_2.png" alt="Product">
        <div class="product-title">ASUS ROG Strix G15 Advantage Edition</div>
        <div>
          <span class="price">Rs. 189,000</span>
        
        </div>
       
        <button class="add-to-cart">ADD TO CART</button>
      </div>
  
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/new_project_18__1_2.png" alt="Product">
        <div class="product-title">ASUS TUF Gaming F15 i7 12th Gen RTX 4060</div>
        <div>
          <span class="price">Rs. 215,000</span>
        
        </div>
       
        <button class="add-to-cart">ADD TO CART</button>
      </div>
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/s5507_3.png" alt="Product">
        <div class="product-title">ASUS Vivobook Pro 15 OLED Ryzen 9</div>
        <div>
          <span class="price">Rs. 172,000</span>
       
        </div>
        
        <button class="add-to-cart">ADD TO CART</button>
      </div>
  
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/tuf_1 (1).png" alt="Product">
        <div class="product-title">ASUS TUF Dash F15 i7 12th Gen RTX 3050</div>
        <div>
          <span class="price">Rs. 149,000</span>
         
        </div>
       
        <button class="add-to-cart">ADD TO CART</button>
      </div>
  
      <div class="product-card">
        <img src="${contextPath}/resources/images/system/tuf_1.png" alt="Product">
        <div class="product-title">ASUS TUF Gaming A17 Ryzen 7 RTX 4060</div>
        <div>
          <span class="price">Rs. 178,000</span>
        
        </div>
        
        <button class="add-to-cart">ADD TO CART</button>
      </div>
      <div class="product-card">
          <img src="${contextPath}/resources/images/system/x1404-b-3_1_1.png" alt="Product">
          <div class="product-title">ASUS Vivobook 14 X1404 i5 13th Gen</div>
          <div>
            <span class="price">Rs. 109,000</span>
            
          </div>
        
          <button class="add-to-cart">ADD TO CART</button>
        </div>
  </div>
   <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>