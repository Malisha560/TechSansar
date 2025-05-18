<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>TechSansar</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/product.css?v=<%= System.currentTimeMillis() %>">
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/header.css?v=<%= System.currentTimeMillis() %>">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>
  <c:set var="contextPath" value="${pageContext.request.contextPath}" />
  <jsp:include page="header.jsp" />

  <div class="products">
    <!-- Skeleton View -->
    <c:if test="${showSkeleton}">
      <div class="product-card">
        <div class="skeleton skeleton-image"></div>
        <div class="skeleton skeleton-name"></div>
        <div class="skeleton skeleton-price"></div>
        <div class="skeleton skeleton-description"></div>
        <div class="skeleton skeleton-button"></div>
      </div>
    </c:if>

    <!-- Real Products -->
    <c:if test="${not empty product && !showSkeleton}">
      <c:forEach var="productItem" items="${product}">
        <div class="product-card">
          <!-- Image -->
          <img src="${contextPath}${productItem.imageUrl}" alt="${productItem.name}" />
          <!-- Name -->
          <div class="product-title">${productItem.name}</div>
          <!-- Description -->
          <div class="description">${productItem.description}</div>
          <!-- Price -->
          <div>
            <span class="price">Rs. ${productItem.price}</span>
          </div>
          <!-- Add to Cart -->
					<form action="<%=request.getContextPath()%>/cart" method="post">
						<input type="hidden" name="name" value="${productItem.name}" /> <input
							type="hidden" name="price" value="${productItem.price}" /> <input
							type="hidden" name="image" value="${productItem.imageUrl}" />
						<button type="submit">Add to Cart</button>
					</form>
				</div>
      </c:forEach>
    </c:if>
  </div>

  <jsp:include page="footer.jsp" />
</body>
</html>
