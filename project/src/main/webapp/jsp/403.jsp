<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>YourMagazine - online</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link href="<spring:url value=" css/style.css" />" rel="stylesheet"
	type="text/css">
</head>
<body>


	<div class="coming-soon-area bg-img background-overlay"
		style="background-image: url(img/bg-img/b9.jpg);">
		<!-- ##### Header Area Start ##### -->
		<header class="header-area">

			<!-- Top Header Area -->
			<div class="top-header">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<!-- Breaking News Area -->
						<div class="col-12 col-sm-8">
							<div class="breaking-news-area">
								<div id="breakingNewsTicker" class="ticker">
									<ul>
										<li><a href="#">Hello World!</a></li>
										<li><a href="#">Hello Universe!</a></li>
										<li><a href="#">Hello Original!</a></li>
										<li><a href="#">Hello Earth!</a></li>
										<li><a href="#">Hello Magazine!</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- Top Social Area -->
						<div class="col-12 col-sm-4">
							<div class="top-social-area">
								<a href="#" data-toggle="tooltip" data-placement="bottom"
									title="Pinterest"><i class="fa fa-pinterest"
									aria-hidden="true"></i></a> <a href="#" data-toggle="tooltip"
									data-placement="bottom" title="Facebook"><i
									class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"
									data-toggle="tooltip" data-placement="bottom" title="Twitter"><i
									class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#"
									data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i
									class="fa fa-dribbble" aria-hidden="true"></i></a> <a href="#"
									data-toggle="tooltip" data-placement="bottom" title="Behance"><i
									class="fa fa-behance" aria-hidden="true"></i></a> <a href="#"
									data-toggle="tooltip" data-placement="bottom" title="Linkedin"><i
									class="fa fa-linkedin" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Logo Area -->
			<div class="logo-area text-center">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12">
							<a href="/hello" class="original-logo"><img
								src="img/core-img/logo2.png" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- ##### Header Area End ##### -->

		<!-- ##### Wrong Area Start ##### -->
		<div class="coming-soon-timer text-center">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="coming-soon-content">
							<div class="sonar-wrapper">
								<div class="sonar-emitter">
									<div class="sonar-wave"></div>
								</div>
							</div>
							<p><spring:message code="403.title" /></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ##### Wrong Area End ##### -->

		<!-- ##### Back Area Start ##### -->
		<div class="contact-area section-padding-100">
			<div class="container">
				<div class="row">
					<div class="col-12">

						<div class="justify-content-center" style="display: flex;">
							
							<form id="logoutForm" method="POST"
								action="${contextPath}/logout">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<button type="submit" class="btn original-btn">
									<a href="<spring:url value='/home' />"><spring:message code="403.back" /></a>
								</button>
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Back Area End ##### -->


	<!-- ##### Footer Area Start ##### -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- ##### Footer Area End ##### -->
</body>
</html>