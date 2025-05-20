<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.TechSansar.model.ProductModel"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My Cart</title>
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/mycart.css?v=<%= System.currentTimeMillis() %>">
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/header.css?v=<%= System.currentTimeMillis() %>">
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/footer.css?v=<%= System.currentTimeMillis() %>">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section class="cart-section">
		<c:choose>
			<c:when test="${not empty cartItems}">
				<div class="cart-header">
					<div>Image</div>
					<div>Product Name</div>
					<div>Price</div>
					<div>Quantity</div>
					<div>Total</div>
					<div>Delete</div>
				</div>

				<c:set var="grandTotal" value="0" />
				<c:forEach var="item" items="${cartItems}">
					<c:set var="total" value="${item.price * item.stock}" />
					<c:set var="grandTotal" value="${grandTotal + total}" />

					<div class="cart-item">
						<div>
							<img src="${pageContext.request.contextPath}${item.imageUrl}" alt="product" width="50" height="50" />
						</div>
						<div>${item.name}</div>
						<div>Rs. ${item.price}</div>
						<form action="${pageContext.request.contextPath}/mycart"
							method="post" style="display: inline;">
							<input type="hidden" name="name" value="${item.name}" /> <input
								type="hidden" name="action" value="increase" />
							<button type="submit">+</button>
						</form>
						<span>${item.stock}</span>
						<form action="${pageContext.request.contextPath}/mycart"
							method="post" style="display: inline;">
							<input type="hidden" name="name" value="${item.name}" /> <input
								type="hidden" name="action" value="decrease" />
							<button type="submit">-</button>
						</form>

						<div>Rs. ${total}</div>
						<div>
							<form action="${pageContext.request.contextPath}/mycart"
								method="post" style="display: inline;">
								<input type="hidden" name="name" value="${item.name}" /> <input
									type="hidden" name="action" value="remove" />
								<button type="submit">Remove</button>
							</form>
						</div>
					</div>
				</c:forEach>

				<div class="summary-box">
					<p>
						<span>Sub Total</span><span>Rs. ${grandTotal}</span>
					</p>
					<p>
						<span>Shipping</span><span>Rs. 50</span>
					</p>
					<p>
						<strong>Total</strong><strong>Rs. ${grandTotal + 50}</strong>
					</p>
					<button>CHECKOUT</button>
				</div>
			</c:when>
			<c:otherwise>
				<p>Your cart is empty.</p>
			</c:otherwise>
		</c:choose>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
