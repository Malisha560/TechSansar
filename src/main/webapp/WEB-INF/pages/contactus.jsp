<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Us</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/contactus.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css" />

  <!-- JavaScript for form validation and popup -->
  <script type="text/javascript">
    function showConfirmationPopup() {
      alert("Message received! We will get back to you soon.");
    }

    // Validate form before submitting
    function validateForm() {
      const name = document.getElementById('name').value;
      const email = document.getElementById('email').value;
      const message = document.getElementById('message').value;

      if (name === "" || email === "" || message === "") {
        alert("Please fill out all required fields.");
        return false;
      }
      return true;
    }
  </script>
</head>
<body>
  <c:set var="contextPath" value="${pageContext.request.contextPath}" />
  <jsp:include page="header.jsp"></jsp:include>

  <!-- Contact form -->
  <section class="contact-form">
    <div class="form-container">
      <h2>Your Details</h2>
      <form action="${contextPath}/contactus" method="POST" onsubmit="return validateForm()">
        <label for="name">Name: </label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email: </label>
        <input type="email" id="email" name="email" required>

        <label for="phone">Phone: </label>
        <input type="tel" id="phone" name="phone">

        <label for="message">Message: </label>
        <textarea id="message" name="message" rows="4" required></textarea>

        <button type="submit" class="submit-button">Submit</button>
      </form>
    </div>
  </section>

  <!-- Display success message popup if contactSuccess is set -->
  <c:if test="${contactSuccess != null}">
    <script type="text/javascript">
      window.onload = function() {
        alert("Message received! We will get back to you soon.");
      }
    </script>
  </c:if>

  <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
