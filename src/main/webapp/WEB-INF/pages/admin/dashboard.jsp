<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" 
  href="<%= request.getContextPath() %>/css/admin/dashboard.css?v=<%= System.currentTimeMillis() %>">
</head>
<body>
  <div class="container">
    <!-- Sidebar -->
    <div class="sidebar">
      <h2>Inventory Management</h2>
      <a href="#" class="nav-link active">Dashboard</a>
      <a href="#" class="nav-link">Product Information</a>
      <a href="#" class="nav-link">User Information</a>
    </div>

    <!-- Main Content -->
    <div class="main">
      <div class="dashboard-header">
        <h1>Dashboard</h1>
        <div class="admin-menu" onclick="toggleDropdown()">Admin ▼
          <div class="dropdown" id="dropdownMenu">
            <a href="#">Settings</a>
            <a href="#">Logout</a>
          </div>
        </div>
      </div>

      <section class="section-box">
        <h3>Recently Added to Cart</h3>
        <div class="orders">
          <div class="order-item">
            <div class="order-product">Lorem Ipsum</div>
            <div class="order-date">Nov 8th, 2023</div>
            <div class="order-customer">Lorem Ipsum</div>
            <div class="order-status status-delivered">Delivered</div>
            <div class="order-amount">₹200.00</div>
          </div>
          <div class="order-item">
            <div class="order-product">Lorem Ipsum</div>
            <div class="order-date">Nov 7th, 2023</div>
            <div class="order-customer">Lorem Ipsum</div>
            <div class="order-status status-canceled">Canceled</div>
            <div class="order-amount">₹200.00</div>
          </div>
        </div>
      </section>
    </div>
  </div>

  
</body>
</html>
