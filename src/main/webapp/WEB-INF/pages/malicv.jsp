<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Malisha Kushwaha | Portfolio</title>
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

    .detail-line {
      margin-bottom: 8px;
    }

    .highlight-label {
      font-weight: 600;
      color: #861819;
    }
  </style>
</head>
<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<jsp:include page="header.jsp"></jsp:include>
  <div class="portfolio-container">

    <section class="header-section section">
      <h1>Malisha Kushwaha</h1>
      <div class="flex-group">
        <div class="info-block">
          <p class="detail-line"><strong class="highlight-label">Phone:</strong> +977 9841296566</p>
          <p class="detail-line"><strong class="highlight-label">Email:</strong> malishakushwaha5@gmail.com</p>
        </div>
      </div>
    </section>

    <section class="profile-section section">
      <h2 class="section-title">Profile</h2>
      <div>
        <p>I'm an IT student passionate about digital marketing and coding. I have experience managing social media platforms, and events, and building strong online communities. My involvement in Model United Nations has refined my event-handling skills, and I thrive in collaborative environments where I can apply my technical expertise and creativity.</p>
      </div>
    </section>

    <section class="experience-section section">
      <h2 class="section-title">Work Experience</h2>

      <div class="job">
        <p class="job-title">Salesforce Intern – Alfa Beta Institute</p>
        <p>June 2023 – September 2023</p>
        <p>Managed social media, supported targeted campaigns, and handled branding.</p>
      </div>

      <div class="job">
        <p class="job-title">Salesforce Intern – Gems Institute of Higher Education</p>
        <p>July 2021 – August 2023</p>
        <p>Supported digital marketing efforts and on-ground sales engagement activities.</p>
      </div>

      <div class="job">
        <p class="job-title">Salesforce Intern – Ing Skill Academy</p>
        <p>November 2024 – February 2025</p>
        <p>Provided customer service, promoted programs, and supported event coordination and outreach.</p>
      </div>

      <div class="job">
        <p class="job-title">Head of Dais and Delegate Affairs – KMC MUN</p>
        <p>April 2022 – September 2022</p>
        <p>Trained 150+ participants, allocated committees, and ensured certificate distribution.</p>
      </div>

      <div class="job">
        <p class="job-title">Under Secretary General – GEMS MUN</p>
        <p>2022</p>
        <p>Guided 200+ delegates, organized workshops, and ensured smooth committee operations.</p>
      </div>

      <div class="job">
        <p class="job-title">Event Management (Volunteer)</p>
        <p>2021 – 2024</p>
        <p>Volunteered for events like Orientation, Youth Fest (1500+ attendees), Marathons, AGMs, and Blood Drives under Leo Club of Kathmandu Kohinoor.</p>
      </div>

      <div class="job">
        <p class="job-title">Model United Nations Participation</p>
        <p>2021 – 2025</p>
        <p>Organized and participated in over 45 MUNs, collaborated with UN Nepal and delegates from diverse backgrounds.</p>
      </div>
    </section>

    <section class="education-section section">
      <h2 class="section-title">Education</h2>

      <div class="job">
        <p class="job-title">Islington College</p>
        <p>BSc (Hons) Computing | February 2024 – Present</p>
      </div>

      <div class="job">
        <p class="job-title">Cambridge A-Levels – CAIE</p>
        <p>GEMS Institute | Business, Economics, Mathematics, English General Paper</p>
      </div>
    </section>

    <section class="skills-section section">
      <h2 class="section-title">Skills</h2>
      <div class="flex-group">
        <div class="info-block">
          <p class="detail-line">Web Development</p>
          <p class="detail-line">Digital Marketing</p>
        </div>
        <div class="info-block">
          <p class="detail-line">Event Organizing</p>
          <p class="detail-line">Social Media Analysis</p>
        </div>
        <div class="info-block">
          <p class="detail-line">Time Management</p>
          <p class="detail-line">Public Speaking</p>
        </div>
      </div>
    </section>

    <section class="certifications-section section">
      <h2 class="section-title">Certifications</h2>

      <div class="job">
        <p>AWS Academy Machine Learning for Natural Language Processing</p>
        <p>AWS Academy Cloud Foundations</p>
        <p>AWS Academy Machine Learning Foundations</p>
        <p>AWS Academy Data Engineering</p>
      </div>
    </section>

  </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>