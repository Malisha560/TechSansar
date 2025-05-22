<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Aayush Shrestha | Portfolio</title>
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
	flex: 250px;
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
			<h1>Aayush Shrestha</h1>
			<div class="flex-group">
				<div class="info-block">
					<p class="detail-line">
						<strong class="highlight-label">Email:</strong>
						shresthaayush776@gmail.com
					</p>
					<p class="detail-line">
						<strong class="highlight-label">Phone:</strong> +977-9767304370
					</p>
					<p class="detail-line">
						<strong class="highlight-label">Location:</strong> Maharajgunj-03,
						Kathmandu, Nepal
					</p>
				</div>
				<div class="info-block">
					<p class="detail-line">
						<strong class="highlight-label">Languages:</strong> English,
						Nepali, Hindi
					</p>
				</div>
			</div>
		</section>

		<section class="profile-section section">
			<h2 class="section-title">Profile</h2>
			<div>
				<p>An innovative and dedicated graphic designer with over four
					years of experience in design, marketing, and event management.
					Adept at leveraging creative and technical expertise to drive
					impactful campaigns and manage international events.</p>
			</div>
		</section>

		<section class="education-section section">
			<h2 class="section-title">Education</h2>
			<div class="job">
				<p class="job-title">Islington College</p>
				<p>BSc (Hons) in Computing (2023–Present)</p>
			</div>
			<div class="job">
				<p class="job-title">Xavier Academy</p>
				<p>+2 Management (2021–2023) — GPA: 3.26</p>
			</div>
			<div class="job">
				<p class="job-title">Meridian International School</p>
				<p>SEE (2009–2019) — GPA: 3.25</p>
			</div>
		</section>

		<section class="experience-section section">
			<h2 class="section-title">Professional Experience</h2>
			<div class="job">
				<p class="job-title">Star Office International</p>
				<p>Graphic Designer & Digital Marketing (Aug 2024 – Jan 2025)</p>
				<p>Worked in WordPress, graphic design, video production, and
					contributed to digital campaigns.</p>
				<p>Skills: WordPress, Web Design, Graphic Design, Video Editing,
					Videography</p>
			</div>

			<div class="job">
				<p class="job-title">Xavier Academy MUN</p>
				<p>Secretary-General (2023–2024)</p>
				<p>Organized an international event for 150+ participants,
					managed a $20,000 budget, and secured $15,000 in sponsorships.</p>

				<p class="job-title">Deputy Secretary-General (2022–2023)</p>
				<p>Handled social media, web development, and graphic content
					creation for international audiences.</p>

				<p class="job-title">USG of Creatives (2022–2023)</p>
				<p>Created promotional content and managed event branding and
					design assets.</p>

				<p class="job-title">ECA Trainer (2023–2024)</p>
				<p>Trained students in global politics, research, public
					speaking, and UN procedure.</p>
			</div>
		</section>

		<section class="skills-section section">
			<h2 class="section-title">Skills</h2>
			<div class="flex-group">
				<div class="info-block">
					<p class="detail-line">Graphic Designing</p>
					<p class="detail-line">Web Development</p>
				</div>
				<div class="info-block">
					<p class="detail-line">Digital Marketing</p>
					<p class="detail-line">Event Organizing</p>
				</div>
				<div class="info-block">
					<p class="detail-line">Public Speaking</p>
					<p class="detail-line">Time Management</p>
				</div>
			</div>
		</section>

		<section class="references-section section">
			<h2 class="section-title">References</h2>
			<div class="job">
				<p class="job-title">Prakash Shrestha</p>
				<p>Vice Principal, Xavier Academy</p>
				<p>Phone: +977 9851025769</p>
				<p>Email: prakash.shrestha@xa.edu.np</p>
			</div>

			<div class="job">
				<p class="job-title">Shreeshav Bir Pradhan</p>
				<p>XAMUN Secretary-General 2022</p>
				<p>Phone: +977 9803486892</p>
				<p>Email: shreeshav.pradhan@gmail.com</p>
			</div>
		</section>

	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
