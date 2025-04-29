<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
  <!-- Sidebar -->
  <div class="sidebar">
    <div class="logo">
     <img src="${contextPath}/resources/images/system/whitelogo.png" alt="logo" style="width: 80px;">
    </div>
    <div class="menu">
      <div class="menu-item active">
        <i class="fas fa-tachometer-alt"></i>
        <span>Dashboard</span>
      </div>
      <div class="menu-item">
        <i class="fas fa-user"></i>
        <span>User Info</span>
      </div>
      <div class="menu-item">
        <i class="fas fa-box-open"></i>
        <span>Product Info</span>
      </div>
      <div class="menu-item">
        <i class="fas fa-truck"></i>
        <span>Delivery Stats</span>
      </div>
    </div>
  </div>

  <!-- Main Content -->
  <div class="main">
    <div class="header">
      <div class="header-title">
        <h1>Dashboard Overview</h1>
        <p>Welcome back, Admin</p>
      </div>
      <div class="user-info">
        <div class="avatar">A</div>
        <span class="user-name">Admin User</span>
      </div>
    </div>
  </div>
</body>
</html>