<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.TechSansar.model.UserModel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>

<%
    UserModel user = (UserModel) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>User Profile</title>
  <link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/header.css?v=<%= System.currentTimeMillis() %>">
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/css/profile.css?v=<%= System.currentTimeMillis() %>">
<link rel="stylesheet" type="text/css"
	href="<%= request.getContextPath() %>/css/footer.css?v=<%= System.currentTimeMillis() %>" />
  
</head>

<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<jsp:include page="header.jsp"></jsp:include>
	

  <div class="container">
    <div class="profile-card">
      <div class="profile-info">
        <div class="profile-image">
          <img src="" alt="Profile Image" id="profilePreview" />
        </div>
        <div class="profile-text">        
<div class="name"><%= user.getFirstName() %> <%= user.getLastName() %></div>
<div class="email"><%= user.getEmail() %></div>
        </div>
      </div>
       <button onclick="showEditForm()" class="edit-btn">Edit</button>
      <form action="logout" method="post" style="margin-left: 20px;">
    <button class="edit-btn" type="submit" style="background-color: #fff; color: #861819;">
        Logout
    </button>
</form>
      
    </div>
  </div>

  <!-- Modal -->
  <div id="editSection" style="display: none;">
  <form action="profile" method="post" enctype="multipart/form-data">
  <div class="modal-content">
    <h2>Edit Profile</h2>
    <div class="form-grid">
      <div class="field-fullname">
        <label>Full Name</label>
        <input type="text" name="fullName" value="${user.firstName} ${user.lastName}" />
      </div>
      <div class="field-username">
        <label>Username</label>
        <input type="text" name="username" value="${user.userName}" readonly />
      </div>
      <div class="field-gender">
        <label>Gender</label>
        <select name="gender">
  <option value="">Select Gender</option>
  <option value="Male" ${user.gender == "Male" ? "selected" : ""}>Male</option>
  <option value="Female" ${user.gender == "Female" ? "selected" : ""}>Female</option>
  <option value="Other" ${user.gender == "Other" ? "selected" : ""}>Other</option>
</select>
      </div>
      <div class="field-phone">
        <label>Phone Number</label>
        <input type="tel" name="phone" value="${user.number}" />
      </div>
      <div class="field-image">
                <p>Profile Pic:</p>
<c:if test="${not empty user.profile_pic}">
  <img src="${pageContext.request.contextPath}/${user.profile_pic}" width="100" />
</c:if>
<input type="file" name="profilePic" accept="image/*" />      
      </div>
    </div>

    <div class="email-display">
      Email is not changeable
    </div>

    <div class="modal-footer">
      <button type="submit" class="save-button">Save Now</button>
    </div>
  </div>
</form>
</div> 
<jsp:include page="footer.jsp"></jsp:include> 
<script>
  function showEditForm() {
    document.getElementById("editSection").style.display = "block";
    window.scrollTo({ top: document.getElementById("editSection").offsetTop, behavior: "smooth" });
  }
</script>
</body>
</html>
