<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
      <img src="acer/acer-aspire-15-a15-51m-with-fingerprint-with-backlit-on-wp-start-screen-steel-gray-01-1.avif" alt="Product">
      <div class="product-title">Acer Aspire 3 A315-44P-R263 Ryzen 7</div>
      <div>
        <span class="price">Rs. 63,990</span>
        <span class="old-price">Rs. 74,990</span>
      </div>
      <div class="discount">15% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="acer/acer-nitro-v-17-ai-anv17-61-non-fingerprint-with-backlit-on-wp-black-01-1.avif" alt="Product">
      <div class="product-title">Acer Aspire 3 A315-44P-R263 Ryzen 7</div>
      <div>
        <span class="price">Rs. 63,990</span>
        <span class="old-price">Rs. 74,990</span>
      </div>
      <div class="discount">15% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    <div class="product-card">
      <img src="acer/acer-travelmate-p4-tmp416-53-53tco-with-fingerprint-with-backlit-on-with-smart-card-wp-strat-screen-slate-blue-01-2.avif" alt="Product">
      <div class="product-title">Acer Aspire 3 A315-44P-R263 Ryzen 7</div>
      <div>
        <span class="price">Rs. 63,990</span>
        <span class="old-price">Rs. 74,990</span>
      </div>
      <div class="discount">15% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="acer/Nitro-V-14-AI_ANV14-62-01.avif" alt="Product">
      <div class="product-title">Acer Aspire 5 A515-58P-58UR i5 13th Gen</div>
      <div>
        <span class="price">Rs. 70,990</span>
        <span class="old-price">Rs. 79,990</span>
      </div>
      <div class="discount">11% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>

    <div class="product-card">
      <img src="acer/predator_helios_16_ai_ph16-73-01.avif" alt="Product">
      <div class="product-title">Acer Aspire Lite AL14-31P-39UP i3 13th Gen</div>
      <div>
        <span class="price">Rs. 49,990</span>
        <span class="old-price">Rs. 59,990</span>
      </div>
      <div class="discount">17% Off</div>
      <button class="add-to-cart">ADD TO CART</button>
    </div>
    <div class="product-card">
        <img src="acer/Swift Go 14 AI AMD-1.avif" alt="Product">
        <div class="product-title">Acer Aspire Lite AL14-31P-39UP i3 13th Gen</div>
        <div>
          <span class="price">Rs. 49,990</span>
          <span class="old-price">Rs. 59,990</span>
        </div>
        <div class="discount">17% Off</div>
        <button class="add-to-cart">ADD TO CART</button>
      </div>
  </div>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>