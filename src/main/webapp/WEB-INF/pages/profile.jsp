<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.TechSansar.model.UserModel"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<%@ page import="com.TechSansar.model.UserModel"%>
<%
    UserModel user = (UserModel) request.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>

<html>

<head>

<title>My Account</title>

<link rel="stylesheet" href="css/profile.css" />

</head>

<body>

	<div class="container">

		<div class="profile-container">

			<!-- Sidebar -->

			<div class="sidebar">

				<div class="sidebar-header">

					<h2>Account Menu</h2>

				</div>

				<nav class="sidebar-menu">

					<a href="profile.jsp" class="menu-item active">Personal
						Information</a> <a href="cart.jsp" class="menu-item">My Cart</a> <a
						href="purchaseHistory.jsp" class="menu-item">Purchase History</a>

				</nav>

			</div>
			<!-- Content -->
			<div class="content">
				<div class="tab-content active">
					<div class="section-header">
						<h2 class="section-title">Personal Information</h2>
						<a href="editProfile.jsp" class="edit-button">Edit Information</a>
					</div>
					<h2>
						<strong>Full Name:</strong>
						<%= user.getFirstName() %>
						<%= user.getLastName() %></h2>

					<p>
						<strong>Email:</strong>
						<%= user.getEmail() %></p>

					<p>
						<strong>Username:</strong>
						<%= user.getUserName() %></p>

					<p>
						<strong>Gender:</strong>
						<%= user.getGender() %></p>

					<p>
						<strong>Phone:</strong>
						<%= user.getNumber() %></p>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
