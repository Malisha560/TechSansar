<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My Cart</title>
 <link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/mycart.css" /> 
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<jsp:include page="header.jsp"></jsp:include>
  <div class="paper">
 
    <div class="summ">
      <h4><b>Summary</b></h4>
      <hr>
      <form>
        Delivery Details
      </form>
      <div class="row">
        <div class="col">TOTAL PRICE</div>
      </div>
      <button class="btn">CHECKOUT</button>
    </div>

    <div class="Gaddi">
      <div class="title">
        <h4><b>Your Items</b></h4>
      </div>
    </div>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>