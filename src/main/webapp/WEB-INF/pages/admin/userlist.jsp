<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Registered Users</title>
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/admin/userlist.css?v=<%= System.currentTimeMillis() %>">
</head>
<body>
<div class="container">
    <!-- Sidebar -->
    <div class="sidebar">
      <h2>Inventory Management</h2>
      <a href="${pageContext.request.contextPath}/admin/dashboard" class="nav-link">Dashboard</a>
   	  <a href="${pageContext.request.contextPath}/admin/productinfo" class="nav-link">Product Information</a>
      <a href="${pageContext.request.contextPath}/admin/userlist" class="nav-link active">User Information</a>
      <a href="${pageContext.request.contextPath}/admin/addproduct" class="nav-link">Add Product</a>
    </div>
<div class="content">
  <h2 class="title">Registered Users</h2>

  <div class="user-list">
    <div class="user-header">
      <div class="user-cell firstname">First Name</div>
      <div class="user-cell lastname">Last Name</div>
      <div class="user-cell email">Email</div>
      <div class="user-cell number">Phone Number</div>
    </div>

    <c:forEach var="user" items="${users}">
      <c:if test="${not empty user.firstName}">
        <div class="user-row">
          <div class="user-cell firstname">${user.firstName}</div>
          <div class="user-cell lastname">${user.lastName}</div>
          <div class="user-cell email">${user.email}</div>
          <div class="user-cell number">${user.number}</div>
        </div>
      </c:if>
    </c:forEach>
  </div>
</div>
</div>
</body>
</html>
