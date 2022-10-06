<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
.container {
	margin: 0 auto;
	max-width: 1100px;
}

/* header------------------------- */

/* 헤더 */
header {
	width: 100%;
	margin-bottom: 20px;
}

nav {
	display: flex;
	align-items: center;
	padding: 20px;
}

.menubar {
	display: flex;
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	padding-left: 30px;
}

.menubar ul {
	margin: 0;
	padding: 0;
}

.menubar li {
	list-style-type: none;
	display: inline-block;
	padding: 0 10px;
}

.menubar li :hover {
	border-bottom: 2px solid black;
	cursor: pointer;
}

.head-banner {
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: flex-end;
	align-items: center;
	box-sizing: border-box;
	height: 400px;
	background-image: url(https://i.ibb.co/zGSDGCL/slide1.png);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	padding-bottom: 50px;
}

.head-banner div {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

.head-banner h2 {
	margin: 0;
}

.btn a {
	cursor: pointer;
	display: inline-block;
	border: 0;
	padding: 10px 20px;
	background-color: #262626;
	color: #fff;
	font-size: 15px;
	font-weight: bold;
}

@media ( max-width : 670px) {
	.menubar {
		display: none;
	}
}

/* main------------------------ */
.body {
	box-sizing: border-box;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.s1 {
	display: flex;
	justify-content: space-between;
	margin-bottom: 40px;
	box-sizing: border-box;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	line-height: 1.5;
	width: 100%;
}

.s1>div>img {
	width: 100%;
}

.s1>div>p {
	overflow: hidden;
	text-overflow: ellipsis;
	word-break: break-all;
	padding-right: 25px;
}

.s1>div {
	height: 50%;
	box-sizing: border-box;
	height: 50%;
	width: 24%;
}

.s1>div>h3 {
	margin-bottom: 5px;
	box-sizing: border-box;
	font-size: 1.17em;
	font-weight: bold;
}

.s1>div>a {
	display: inline-block;
	padding-top: 10px;
	color: #0067b8;
	text-transform: uppercase;
	font-weight: bold;
	text-decoration: none;
	box-sizing: border-box;
	cursor: pointer;
	font-size: 15px;
}

.s2 {
	background: url("https://i.ibb.co/tBJGPD9/xbox.png") no-repeat center
		center;
	background-size: cover;
	width: 100%;
	height: 400px;
	margin-bottom: 20px;
	box-sizing: border-box;
}

.s2>.content {
	width: 40%;
	padding: 50px 0 0 30px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.s2>.content>h2 {
	box-sizing: border-box;
	font-size: 1.5em;
	font-weight: bold;
}

.s2>.content>p {
	margin: 10px 0 20px;
	box-sizing: border-box;
	line-height: 1.5;
	font-size: 15px;
}

.s2>.content>a {
	text-decoration: none;
	border: 1px solid #262626;
	background-color: #262626;
	color: white;
	padding: 10px 20px;
	font-size: 15px;
	font-weight: bold;
	display: inline-block;
}

.s3 {
	background: url("https://i.ibb.co/72cgtsz/carbon.jpg") center no-repeat;
	background-size: cover;
	width: 100%;
	height: 40vh;
	margin-bottom: 20px;
	box-sizing: border-box;
	color: white;
}

.s3>.content {
	width: 75%;
	padding: 100px 0 0 30px;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.s3>.content>h2 {
	box-sizing: border-box;
	font-size: 1.5em;
	font-weight: bold;
}

.s3>.content>p {
	margin: 10px 0 20px;
	box-sizing: border-box;
	line-height: 1.5;
	font-size: 15px;
}

.s3>.content>a {
	text-decoration: none;
	border: 1px solid #262626;
	background-color: #f4f4f4;
	color: #333;
	padding: 10px 20px;
	font-size: 15px;
	font-weight: bold;
	display: inline-block;
}

@media ( max-width : 700px) {
	.s2>.content>p {
		display: none;
	}
	.s1 {
		flex-wrap: wrap;
	}
	.s1 div {
		flex: none;
		width: 48%;
	}
}

@media ( max-width : 500px) {
	.s1 div {
		width: 100%;
	}
}

/* footer------------------------- */
footer {
	padding: 10px 26px;
	display: flex;
	flex-direction: column;
	background: #f2f2f2;
	color: #616161;
	font-size: 12px;
}

footer ul {
	margin: 0;
}

footer  ul  li {
	list-style: none;
	line-height: 2.8;
}

footer ul li a {
	color: #262626;
	text-decoration: none;
	font-size: 1em;
	word-break: keep-all;
}

footer div {
	display: flex;
	flex-direction: row;
}

.f1 {
	width: 100%;
	justify-content: space-around;
}

.f2 {
	font-size: 12px;
	padding: 2% 0 5% 0;
	justify-content: space-around;
}

.f2 ul {
	padding: 0;
	display: flex;
	flex-wrap: wrap;
	align-items: center;
	justify-content: space-around;
	width: 75%;
}

.f2 ul li {
	margin: 0.5em;
}

.english {
	display: flex;
	white-space: nowrap;
	width: 100px;
	align-items: center;
}

@media ( max-width : 700px) {
	.english {
		white-space: break-spaces;
	}
	footer {
		padding: 3rem;
	}
	footer ul {
		padding: 0;
	}
	.f1 {
		display: flex;
		flex-direction: row;
		flex-wrap: wrap;
		width: 100%;
	}
	.f1 div {
		width: 49%;
	}
	.f1 div {
		justify-content: flex-start;
	}
	.f2 ul {
		flex-wrap: wrap;
		width: 100%;
	}
	.f2 li {
		margin: 0.5em;
		flex-basis: 1;
	}
	.f2 ul span {
		display: flex;
		flex-wrap: wrap;
		flex: 1;
	}
}

@media ( max-width : 500px) {
	.f1 {
		display: flex;
		flex-direction: column;
		flex-wrap: wrap;
		width: 100%;
	}
}

.f0>ul {
	display: flex;
	background-color: white;
	justify-content: space-between;
	width: 250px;
	list-style: none;
}
</style>
</head>
<body>
	<!-- header--------------------- -->

	<div class="container">

		<header>
			<nav>
				<img src="https://i.ibb.co/wwLhz98/logo.png" width="130px" />
				<div class="menubar">
					<ul>
						<li><a>Office</a></li>
						<li><a>Windows</a></li>
						<li><a>Surface</a></li>
						<li><a>Xbox</a></li>
						<li><a>Deals</a></li>
						<li><a>Support</a></li>
					</ul>
				</div>
			</nav>
			<div class="head-banner">
				<div class="title">
					<h2>Surface Deals</h2>
				</div>
				<div>
					<p>Select Surfaces are on sale now - save while supplies last</p>
				</div>
				<div class="btn">
					<a>Shop Now</a>
				</div>
			</div>
		</header>

		<!-- main----------------------- -->
		<div class="body">
			<main>
				<section class="s1">
					<c:forEach items="${list}" var="item1">
						<c:if test="${item1.category == 1}">
							<div>
								<img src="${item1.img}" alt="">
								<h3>${item1.head }</h3>
								<p>${item1.content }</p>
								<a href="#">${item1.link}</a>
							</div>
						</c:if>
					</c:forEach>
				</section>
				<section class="s2">
					<div class="content">
						<h2>Xbox Game Pass Ultimate</h2>
						<p>Xbox Game Pass Ultimate Xbox Live Gold and over 100
							high-quality console and PC games. Play together with friends and
							discover your next favorite game.</p>
						<a href="#">Join Now</a>
					</div>
				</section>
				<section class="s1">
					<c:forEach items="${list}" var="item2">
						<c:if test="${item2.category == 2}">
							<div>
								<img src="${item2.img}" alt="">
								<h3>${item2.head }</h3>
								<p>${item2.content }</p>
								<a href="#">${item2.link}</a>
							</div>
						</c:if>
					</c:forEach>
				</section>
				<section class="s3">
					<div class="content">
						<h2>Commiting To Carbon Negative</h2>
						<p>Microsoft will be carbon negative by 2030 and by 2050 we
							will remove all carbon the company has emitted since it was
							founded in 1975</p>
						<a href="#">Learn More</a>
					</div>
				</section>
			</main>
		</div>


		<div class="f0">
			<ul>
				<li>Follow Microsoft</li>
				<li><a href="https://www.facebook.com/"><img
						src="https://i.ibb.co/LrVMXNR/social-fb.png"></a></li>
				<li><a href="https://twitter.com/"><img
						src="https://i.ibb.co/vJvbLwm/social-twitter.png"></a></li>
				<li><a href="https://www.linkedin.com/"><img
						src="https://i.ibb.co/b30HMhR/social-linkedin.png"></a></li>
			</ul>
		</div>


		<footer>
			<div class="f1">
				<!-- <aside class="sidebar1"> -->
				<div>
					<ul>
						<li><h2>What's New</h2></li>
						<li><a href="#">Surface ProX</a></li>
						<li><a href="#">Surface Laptop3</a></li>
						<li><a href="#">Surface Pro7</a></li>
						<li><a href="#">Windows 10apps</a></li>
						<li><a href="#">Office apps</a></li>
					</ul>
				</div>
				<!-- </aside> -->
				<!-- <aside class="sidebar2"> -->
				<div>
					<ul>
						<li><h2>Microsoft Store</h2></li>
						<li><a href="#">Account Profile</a></li>
						<li><a href="#">Download Center</a></li>
						<li><a href="#">Microsoft Store support</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Older tracking</a></li>
					</ul>
				</div>
				<!-- </aside> -->
				<!-- <aside class="sidebar3"> -->
				<div>
					<ul>
						<li><h2>Education</h2></li>
						<li><a href="#">Microsfot in education</a></li>
						<li><a href="#">Office for students</a></li>
						<li><a href="#">Office 365 for schools</a></li>
						<li><a href="#">Deals for studentss</a></li>
						<li><a href="#">Microsfot Azure</a></li>
					</ul>
				</div>
				<!-- </aside> -->
				<!-- <aside class="sidebar4"> -->
				<div>
					<ul>
						<li><h2>Enterprise</h2></li>
						<li><a href="#">AppSource</a></li>
						<li><a href="#">Automotive</a></li>
						<li><a href="#">Government</a></li>
						<li><a href="#">Healthcare</a></li>
					</ul>
				</div>
				<!-- </aside> -->
				<!-- <aside class="sidebar5"> -->
				<div>
					<ul>
						<li><h2>Developer</h2></li>
						<li><a href="#">Visual Studio</a></li>
						<li><a href="#">Windowszs Dev Center</a></li>
						<li><a href="#">Developer Network</a></li>
						<li><a href="#">TechNet</a></li>
						<li><a href="#">Microsoft Developer</a></li>
					</ul>
				</div>
				<!-- </aside> -->
				<!-- <aside class="sidebar6"> -->
				<div>
					<ul>
						<li><h2>Company</h2></li>
						<li><a href="#">Careers</a></li>
						<li><a href="#">Company news</a></li>
						<li><a href="#">Privacy at Microsoft</a></li>
						<li><a href="#">Inverstors</a></li>
					</ul>
				</div>
				<!-- </aside> -->
			</div>
			<div class="f2">
				<div class="english">English (United States)</div>
				<ul>
					<li><a href="#">Sitemap</a></li>
					<li><a href="#">Contact Microsoft</a></li>
					<li><a href="#">Privacy & cookies</a></li>
					<li><a href="#">Terms of use</a></li>
					<li><a href="#">Trademarks</a></li>
					<li><a href="#">Safety & eco</a></li>
					<li><a href="#">About our ads</a></li>
					<li><a href="#">Microsoft 2020</a></li>
				</ul>
			</div>
		</footer>
	</div>
</body>
</html>