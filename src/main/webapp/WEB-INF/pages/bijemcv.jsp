<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Bijem Shrestha | Portfolio</title>
  <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/footer.css" />
  <style>
    body {
      margin: 0;
      font-family: 'Roboto', sans-serif;
      background-color: #f4f4f4;
      color: #333;
    }

    .portfolio-container {
      max-width: 1000px;
      margin: 0 auto;
      padding: 40px 20px;
      background-color: #fff;
    }

    .section {
      margin-bottom: 40px;
    }

    .section-title {
      color: #861819;
      font-size: 24px;
      margin-bottom: 10px;
      border-bottom: 2px solid #861819;
      padding-bottom: 5px;
    }

    .header-section h1 {
      color: #861819;
      font-size: 32px;
      margin-bottom: 10px;
    }

    .flex-group {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
    }

    .info-block {
      flex: 1 1 250px;
    }

    .job {
      margin-bottom: 30px;
    }

    .job-title {
      font-weight: 600;
      color: #861819;
      margin-bottom: 5px;
    }

    .highlight-label {
      font-weight: 600;
      color: #861819;
    }

    .detail-line {
      margin-bottom: 8px;
    }
  </style>
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<jsp:include page="header.jsp"></jsp:include>
  <div class="portfolio-container">

    <section class="header-section section">
      <h1>Bijem Shrestha</h1>
      <div class="flex-group">
        <div class="info-block">
          <p class="detail-line"><strong class="highlight-label">Phone:</strong> +977 9863598240</p>
          <p class="detail-line"><strong class="highlight-label">Email:</strong> shresthabijem25@gmail.com</p>
        </div>
      </div>
    </section>

    <section class="profile-section section">
      <h2 class="section-title">Profile</h2>
      <div>
        <p>I’m an IT student with a passion for digital marketing and coding. I’ve managed social media platforms, organized events, and built active online communities. My experience in Model United Nations has helped me develop strong event management skills, and I enjoy working in team environments where I can use my technical skills and creativity.</p>
      </div>
    </section>

    <section class="experience-section section">
      <h2 class="section-title">Work Experience</h2>

      <div class="job">
        <p class="job-title">Salesforce Intern – Dynamic Staffing Solution</p>
        <p>June 2022 – September 2024</p>
        <p>Performed social media analysis and monitored customer engagement.</p>
        <p>Handled email and phone inquiries, ensuring clear client communication.</p>
        <p>Supervised meetings with international clients and provided guidance throughout sessions.</p>
        <p>Assisted during the interview process of over 700 candidates in presence of an international client.</p>
      </div>

      <div class="job">
        <p class="job-title">Event Manager</p>
        <p>2021 – 2023</p>
        <p>Managed Orientation, Fresher’s, and Youth Fest events from planning to execution.</p>
        <p>Coordinated guests, logistics, and volunteers to ensure smooth operations.</p>
        <p>Led events attended by 500+ participants with successful outcomes.</p>
      </div>

      <div class="job">
        <p class="job-title">CV Writer – Promise Service, Australia (Remote)</p>
        <p>Duration: 6 months</p>
        <p>Drafted and edited CVs, SOPs, and invitation letters for academic and visa applications.</p>
        <p>Worked closely with consultants to meet institutional and immigration standards.</p>
        <p>Maintained document confidentiality and personalized content for each client.</p>
      </div>
    </section>

    <section class="skills-section section">
      <h2 class="section-title">Skills</h2>
      <div class="flex-group">
        <div class="info-block">
          <p class="detail-line">Digital Marketing</p>
          <p class="detail-line">Social Media Strategy</p>
        </div>
        <div class="info-block">
          <p class="detail-line">Event Management</p>
          <p class="detail-line">CV & SOP Writing</p>
        </div>
        <div class="info-block">
          <p class="detail-line">Communication</p>
          <p class="detail-line">Client Coordination</p>
        </div>
      </div>
    </section>

  </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
