<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="<spring:url value=" css/style.css" />" rel="stylesheet"
	type="text/css">
</head>

<body>

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
						<a href="<spring:url value='/home' />" class="original-logo"><img
							src="img/core-img/logo.png" alt=""></a>
					</div>
				</div>
			</div>
		</div>

		<!-- Nav Area -->
		<div class="original-nav-area" id="stickyNav">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Classy Menu -->
					<nav class="classy-navbar justify-content-between">
					
					<div class="subscribe-btn">
					<c:if test="${pageContext.request.userPrincipal.name != null}">
                         
                            <form:form action="${contextPath}/my-account" method="GET"
										enctype="multipart/form-data">
							<input type="hidden" value="${pageContext.request.userPrincipal.name}" name="email">
							<button type="submit" class="btn original-btn"><spring:message code='header.welcome'/> ${pageContext.request.userPrincipal.name}</button>
							</form:form>
                            
                    </c:if>
                    </div>					       
						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- Menu -->
						<div class="classy-menu" id="originalNav">
							<!-- close btn -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<ul>
									<li><a href="<spring:url value='/home'/>"><spring:message code="header.home" /></a></li>
									<security:authorize access="hasRole('ROLE_USER')">
									<li><a href="#"><spring:message code="header.pages" /></a>
										<ul class="dropdown">
											
											<li><a href="/buckets"><spring:message code="header.bucket" /></a></li>
											<li><a href="/subscribes"><spring:message code="header.subscribe" /></a></li>
											
										</ul></li></security:authorize>
									<li><a href="<spring:url value='/about-us'/>"><spring:message code="header.aboutus" /></a></li>
									<security:authorize access="hasRole('ROLE_ADMIN')">
									<li><a href="<spring:url value='/create-product'/>"><spring:message code="header.create_magazine" /></a></li>
									</security:authorize>
									<security:authorize access="hasRole('ROLE_USER')  or hasRole('ROLE_ADMIN')">
									<li>
								
									<form:form action="${contextPath}/my-account" method="GET"
											enctype="multipart/form-data">
											<input type="hidden" value="${pageContext.request.userPrincipal.name}"
												name="email">
							  		<button type="submit" class="butt"><spring:message code="header.myaccount" /></button>
										</form:form>
									</li>
									</security:authorize>
									<security:authorize access="hasRole('ROLE_USER')  or hasRole('ROLE_ADMIN')">
									<li><form id="logoutForm" method="POST" action="${contextPath}/logout">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										</form><a onclick="document.forms['logoutForm'].submit()"><spring:message code="header.logout" /></a></li>
									</security:authorize>
									<security:authorize access="not(hasRole('ROLE_USER')  or hasRole('ROLE_ADMIN'))">
									<li><a href="<spring:url value='/login' />"><spring:message code="login.signin" /></a></li>
									</security:authorize>
									<li>
									
									<select id="locales">
									<option value="ua">Укр</option>
									<option value="en"  selected="selected">Eng</option>
									</select>
									
									</li>
								</ul>

								<!-- Search Form  -->
								<div id="search-wrapper">
									<form action="#">
										<input type="text" id="search"
											placeholder="<spring:message code='header.search'/>">
										<div id="close-icon"></div>
										<!-- <input class="d-none" type="submit" value=""> -->
									</form>
								</div>
							</div>
							<!-- Nav End -->
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ##### Header Area End ##### -->

<script src="${contextPath}/js/lang.js"></script>
</body>

</html>