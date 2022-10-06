<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<style>
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

@media ( max-width : 670px) {
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
<body>
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
			<div class="s1">
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
			<div class="s2">
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
			<div class="s3">
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
			<div class="s4">
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
			<div class="s5">
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
			<div class="s6">
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
</body>
</html>