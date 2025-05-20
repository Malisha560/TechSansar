<%@ page import="com.TechSansar.model.ProductModel"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    List<ProductModel> products = (List<ProductModel>) request.getAttribute("products");
    ProductModel editProduct = (ProductModel) request.getAttribute("editProduct");
    boolean isEditMode = (editProduct != null);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Product List</title>
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/admin/productinfo.css?v=<%= System.currentTimeMillis() %>">
</head>
<body>
<div class="container">
    <!-- Sidebar -->
    <div class="sidebar">
      <h2>Inventory Management</h2>
      <a href="${pageContext.request.contextPath}/admin/dashboard" class="nav-link">Dashboard</a>
   	  <a href="${pageContext.request.contextPath}/admin/productinfo" class="nav-link active">Product Information</a>
      <a href="${pageContext.request.contextPath}/admin/userlist" class="nav-link">User Information</a>
      <a href="${pageContext.request.contextPath}/admin/addproduct" class="nav-link">Add Product</a>
    </div>
	
	<div class="product-list">
		<!-- Header -->
		<div class="product-header">
			<div class="product-cell name">Name</div>
			<div class="product-cell price">Price</div>
			<div class="product-cell stock">Stock</div>
			<div class="product-cell description">Description</div>
			<div class="product-cell image">Image</div>
			<div class="product-cell actions">Actions</div>
		</div>
		<!-- Product Rows -->
		<c:forEach var="product" items="${products}">
			<div class="product-row">
				<div class="product-cell name">${product.name}</div>
				<div class="product-cell price">NPR ${product.price}</div>
				<div class="product-cell stock">${product.stock}</div>
				<div class="product-cell description">${product.description}</div>
				<div class="product-cell image">
					<img src="${pageContext.request.contextPath}${product.imageUrl}"
						alt="product" width="50" height="50" />
				</div>
				<div class="product-cell actions">
					<form action="${pageContext.request.contextPath}/admin/productinfo"
						method="post">
						<input type="hidden" name="action" value="edit" /> <input
							type="hidden" name="name" value="${product.name}" /> <input
							type="submit" class="action-button edit-button" value="Edit" />
					</form>
					<form action="${pageContext.request.contextPath}/admin/productinfo"
						method="post">
						<input type="hidden" name="action" value="delete" /> <input
							type="hidden" name="name" value="${product.name}" /> <input
							type="submit" class="action-button delete-button" value="Delete" />
					</form>
				</div>
			</div>
		</c:forEach>
	</div>
	<!-- Edit Form -->
	<% if (isEditMode) { %>
	<div class="edit-form-container">
		<h3>
			Edit Product:
			<%= editProduct.getName() %></h3>
		<form action="${pageContext.request.contextPath}/admin/productinfo"
			method="post">
			<input type="hidden" name="action" value="save" /> <input
				type="hidden" name="originalName"
				value="<%= editProduct.getName() %>" /> <input type="text"
				name="name" value="<%= editProduct.getName() %>" required
				placeholder="Name" /> <input type="number" name="price"
				value="<%= editProduct.getPrice() %>" required placeholder="Price" />
			<input type="number" name="stock"
				value="<%= editProduct.getStock() %>" required placeholder="Stock" />
			<input type="text" name="description"
				value="<%= editProduct.getDescription() %>" required
				placeholder="Description" /> <input type="text" name="imageUrl"
				value="<%= editProduct.getImageUrl() %>" required
				placeholder="Image URL" /> <input type="submit"
				value="Update Product" />
		</form>
	</div>
	</div>
	<% } %>
</body>
</html>