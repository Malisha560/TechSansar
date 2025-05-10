<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>

<%
// Initialize necessary objects and variables
HttpSession userSession = request.getSession(false);
String currentUser = (String) (userSession != null ? userSession.getAttribute("username") : null);
// need to add data in attribute to select it in JSP code using JSTL core tag
pageContext.setAttribute("currentUser", currentUser);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" 
href="<%= request.getContextPath() %>/css/header.css?v=<%= System.currentTimeMillis() %>">


</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
 <header>
    <!-- Navigation Bar -->
    <div class="top-nav-bar">
      <div class="top-nav-left">
        <p>Your Perfect Laptop, Just a Click Away</p>
      </div>
      <div class="top-nav-right">
        <a>Putalisadak, Kathmandu</a>
        <a href="${contextPath}/contactus">| Contact us |</a>
        <a href="${contextPath}/aboutus">| About Us |</a>
      </div>
    </div>


    <nav class="logo">
      <div class="logo-container">
        <a href="${contextPath}/home">
        <img src="${contextPath}/resources/images/logo.png" alt="Logo" /></a>
      </div>

      <div class="nav-links">
        <a href="${contextPath}/home">Home</a>
        <div class="dropdown">
          <a>Laptop</a>
          <div class="dropdown-content">
            <a href="${contextPath}/product?product_brand=AsusL">Asus</a>
            <a href="${contextPath}/product?product_brand=AcerL">Acer</a>
            <a href="${contextPath}/product?product_brand=AlienwareL">Alienware</a>
            <a href="${contextPath}/product?product_brand=DellL">Dell</a>
            <a href="${contextPath}/product?product_brand=AppleL">Apple</a>
          </div>
        </div>
        <div class="dropdown">
          <a>Desktops</a>
          <div class="dropdown-content">
          	<a href="${contextPath}/product?product_brand=AsusD">Asus</a>
            <a href="${contextPath}/product?product_brand=AcerD">Acer</a>
            <a href="${contextPath}/product?product_brand=AlienwareD">Alienware</a>
            <a href="${contextPath}/product?product_brand=AppleD">Apple</a>
            <a href="${contextPath}/product?product_brand=DellD">Dell</a>
          </div>
        </div>

        <div class="dropdown">
          <a>Accessories</a>
          <div class="dropdown-content">
            <a href="${contextPath}/product?product_brand=charger">Charger</a>
            <a href="${contextPath}/product?product_brand=airpods">Airpods</a>
            <a href="${contextPath}/product?product_brand=watch">Watch</a>
          </div>
        </div>


        <div class="dropdown">
          <a>Mobile Phones</a>
          <div class="dropdown-content">
            <a href="${contextPath}/product?product_brand=AppleP">Apple</a>
            <a href="${contextPath}/product?product_brand=SamsungP">Samsung</a>
            <a href="${contextPath}/product?product_brand=OnePlusP">OnePlus</a>
            <a href="${contextPath}/product?product_brand=VivoP">Vivo</a>
          </div>
        </div>

        <div class="dropdown">
          <a>Printers</a>
          <div class="dropdown-content">
            <a href="${contextPath}/product?product_brand=Epson">Epson</a>
            <a href="${contextPath}/product?product_brand=hp">HP</a>
            <a href="${contextPath}/product?product_brand=canon">Canon</a>
          </div>
        </div>


        <div class="search-container">
  <form action="search" method="Get">
    <i class="search-icon" onclick="toggleSearch()">
      <img src="${contextPath}/resources/images/search.png" alt="search" style="height: 35px;">
    </i>
    <input type="text" id="searchInput" name="query" placeholder="Search..." class="hidden-input" />
    <button type="submit" style="display:none;"></button> <!-- auto submits on Enter -->
  </form>
</div>

      </div>

      <div class="Icons">
        <div class="dropdown">
  <img src="${contextPath}/resources/images/myacc.png" alt="My Account icon">
  <div class="dropdown-content">
    <c:choose>
      <c:when test="${not empty sessionScope.username}">
        <span class="welcome-text">Welcome, ${sessionScope.username}!</span>
        <a href="${contextPath}/profile" class="nav-button">Profile</a>
        <form action="${contextPath}/logout" method="post">
          <input type="submit" class="nav-button" value="Logout" />
        </form>
      </c:when>
      <c:otherwise>
        <a href="${contextPath}/login">Login</a>
        <a href="${contextPath}/register">Register</a>
      </c:otherwise>
    </c:choose>
  </div>
</div>


        <div class="cart-icon">
          <a href="${contextPath}/mycart"><img src="${contextPath}/resources/images/mycart.png"></a>
        </div>
      </div>
    </nav>
  </header>
  <script>
  function toggleSearch() {
      const input = document.getElementById('searchInput');
      input.classList.toggle('show');
    }

    let slideIndex = 0;
    showSlides();

    function showSlides() {
      let i;
      let slides = document.getElementsByClassName("imageslider"); // updated class name
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
      }
      slideIndex++;
      if (slideIndex > slides.length) { slideIndex = 1 }
      slides[slideIndex - 1].style.display = "block";
      setTimeout(showSlides, 2000); // Change image every 2 seconds
    }

    const track = document.getElementById('carouselTrack');
    const left = document.getElementById('left');
    const right = document.getElementById('right');

    let scrollAmount = 0;
    const scrollStep = 400; // pixels

    right.addEventListener('click', () => {
      track.scrollBy({ left: scrollStep, behavior: 'smooth' });
    });

    left.addEventListener('click', () => {
      track.scrollBy({ left: -scrollStep, behavior: 'smooth' });
    });

    let offerEnd = new Date().getTime() + (
      (5 * 24 * 60 * 60 * 1000) +
      (17 * 60 * 60 * 1000) +
      (15 * 60 * 1000)
    );

    function updateCountdown1() {
      const now = new Date().getTime();
      const distance = offerEnd - now;

      if (distance < 0) {
        document.getElementById("countdown1").innerText = "00:00:00:00";
        return;
      }

      let days = Math.floor(distance / (1000 * 60 * 60 * 24))
      let hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      let minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
      let seconds = Math.floor((distance % (1000 * 60)) / 1000);

      document.getElementById("days1").innerText = String(days).padStart(2, '0');
      document.getElementById("hours1").innerText = String(hours).padStart(2, '0');
      document.getElementById("minutes1").innerText = String(minutes).padStart(2, '0');
      document.getElementById("seconds1").innerText = String(seconds).padStart(2, '0');
    }
    setInterval(updateCountdown1, 1000);
  </script>
</body>
</html>