<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%@ page session="true" %>
<%
String role = null;
jakarta.servlet.http.Cookie[] cookies = request.getCookies();
if (cookies != null) {
    for (jakarta.servlet.http.Cookie cookie : cookies) {
        if (cookie.getName().equals("role")) {
            role = cookie.getValue();
        }
    }
}

if (!"Admin".equalsIgnoreCase(role)) {
    response.sendRedirect(request.getContextPath() + "/home");
    return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Admin Dashboard</title>
  <link rel="stylesheet" 
  href="<%= request.getContextPath() %>/css/admin/dashboard.css?v=<%= System.currentTimeMillis() %>">
</head>
<body>
<div class="container">
    <!-- Sidebar -->
    <div class="sidebar">
      <h2>TechSansar</h2>
      <a href="${pageContext.request.contextPath}/admin/dashboard" class="nav-link active">Dashboard</a>
   	  <a href="${pageContext.request.contextPath}/admin/productinfo" class="nav-link">Product Information</a>
      <a href="${pageContext.request.contextPath}/admin/userlist" class="nav-link">User Information</a>
      <a href="${pageContext.request.contextPath}/admin/addproduct" class="nav-link">Add Product</a>
    </div>
    <!-- Main Content -->
    <div class="main">
      <div class="dashboard-header">
      <h1>Dashboard</h1>
        <h1>Welcome, Admin!!</h1>
        
      </div>

      <!-- Stats Cards -->
      <div class="summary-cards">
        <div class="card">
            <h4>Total Products</h4>
            <p>${totalProducts}</p>
        </div>
        <div class="card">
            <h4>Total Users</h4>
            <p>${totalUsers}</p>
        </div>
        <div class="card">
            <h4>Low Stock</h4>
            <p>${lowstockProducts}</p>
        </div>
      </div>


      <!-- Low Stock Products Section -->
      <h2>Low Stock Products</h2>
      <div class="product-list">
        <c:forEach var="product" items="${lowStockProducts}">
          <div class="product-card">
            <div class="product-name">${product.name}</div>
            <div class="product-stock">${product.stock}</div>
            <div class="product-brand">${product.product_brand}</div>
            <div class="product-description">${product.product_description}</div>
          </div>
        </c:forEach>
      </div>
      
      
      
    </div>
</div>
</body>
</html>
