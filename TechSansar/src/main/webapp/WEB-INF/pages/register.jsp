<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/register.css" />
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<jsp:include page="header.jsp"></jsp:include>
<section class="container">
<div>
<c:if test="${not empty error}">
    <div class="error-message">${error}</div>
</c:if>
<c:if test="${not empty success}">
    <div class="success-message">${success}</div>
</c:if>

<form action="${contextPath}/register" method="post"enctype="multipart/form-data">
       		<div class="row">
           		<div class="col">
               		<label for="firstName">First Name:</label> <input type="text"
                   	id="firstName" name="firstName" required>
           		</div>
           		<div class="col">
               		<label for="lastName">Last Name:</label> <input type="text"
                   	id="lastName" name="lastName"required>
           		</div>
       		</div>
       		<div class="row">
           		<div class="col">
               		<label for="username">Username:</label> <input type="text"
                   	id="username" name="username"  required>
           		</div>
       		</div>
       		<div class="row">
           		<div class="col">
               			<label for="gender">Gender:</label> <select id="gender"
                   		name="gender" required>
                   		<option value="male" ${gender == 'male' ? 'selected' : ''}>Male</option>
						<option value="female" ${gender == 'female' ? 'selected' : ''}>Female</option>
						<option value="other" ${gender == 'other' ? 'selected' : ''}>Other</option>
               		</select>
           		</div>
           		<div class="col">
               		<label for="email">Email:</label> <input type="email" id="email"
                   	name="email" required>
           		</div>
       		</div>
       		<div class="row">
           		<div class="col">
               		<label for="phoneNumber">Phone Number:</label> <input type="tel"
                   	id="phoneNumber" name="phoneNumber" required>
           		</div>
       		</div>
       		<div class="row">
           		<div class="col">
               		<label for="password">Password:</label> <input type="password"
                   	id="password" name="password" required>
           		</div>
           		<div class="col">
               		<label for="confirmPassword">Confirm Password:</label> <input
                   	type="password" id="confirmPassword" name="confirmPassword" required>
           		</div>
       		</div>
       	<button type="submit">Register A New Account</button>
   	</form>
   	<a href="${contextPath}/login.jsp" class="login-button">
   	Login If You Already Have An Account </a>
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>