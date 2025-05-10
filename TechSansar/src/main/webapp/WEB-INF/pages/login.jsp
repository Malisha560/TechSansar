<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/login.css" />
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<jsp:include page="header.jsp"></jsp:include>
<form action="${contextPath}/login" method="post">
    <div class="row">
        <div class="col">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
    </div>
    <button type="submit">Login to Your Account</button>
    <a href="${contextPath}/register" class="register-button">
	Register If You Don’t Have An Account</a>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>