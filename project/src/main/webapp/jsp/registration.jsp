<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- Title -->
<title>YourMagazine - online</title>

<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Style CSS -->
<link href="<spring:url value=" css/style.css" />" rel="stylesheet"
	type="text/css">

</head>

<body>
	<!-- ##### Header Area Start ##### -->
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<!-- ##### Header Area End ##### -->



	<!-- ##### Contact Area Start ##### -->
	<section class="contact-area">
		<div class="container">
			<div class="row justify-content-center">
				<!-- Contact Form Area -->
				<div class="col-12 col-md-10 col-lg-9">
					<div class="contact-form">
						<h5><spring:message code="reg.title" /></h5>

						<!-- Contact Form -->
						<form:form method="POST" modelAttribute="userForm">
							<div class="row">
								<div class="col-12 col-md-6">
									<div class="group">
										<spring:bind path="firstName">
											<div class="${status.error ? 'has-error' : ''}">
												<form:input type="text" path="firstName" class="firstName" name="firstName" id="firstName"
													autofocus="true"></form:input>
												<form:errors path="firstName"></form:errors>
												<span class="highlight"></span> <span class="bar"></span> <label><spring:message code="reg.fname" /></label>
											</div>
										</spring:bind>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="group">
										<spring:bind path="lastName">
											<div class="${status.error ? 'has-error' : ''}">
												<form:input type="text" path="lastName" class="lastName" name="lastName" id="lastName"
													autofocus="true"></form:input>
												<form:errors path="lastName"></form:errors>
												<span class="highlight"></span> <span class="bar"></span> <label><spring:message code="reg.lname" /></label>
											</div>
										</spring:bind>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="group">
										<spring:bind path="phone">
											<div class="${status.error ? 'has-error' : ''}">
												<form:input type="number" path="phone" class="phone"
													name="phone" id="phone" autofocus="true"></form:input>
												<form:errors path="phone"></form:errors>
												<span class="highlight"></span> <span class="bar"></span> <label><spring:message code="reg.phone" /></label>
											</div>
										</spring:bind>
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="group">
										<spring:bind path="email">
											<div class="${status.error ? 'has-error' : ''}">
												<form:input type="email" path="email" class="email"
													name="email" id="email" autofocus="true"></form:input>
												<form:errors path="email"></form:errors>
												<span class="highlight"></span> <span class="bar"></span> <label><spring:message code="login.email" /></label>
											</div>
										</spring:bind>
										
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="group">
										<spring:bind path="password">
											<div class="${status.error ? 'has-error' : ''}">
												<form:input type="password" path="password" class="password" name="password" id="password"></form:input>
												<form:errors path="password"></form:errors>
												<span class="highlight"></span> <span class="bar"></span> <label><spring:message code="login.password" /></label>
											</div>
										</spring:bind>
										
									</div>
								</div>
								<div class="col-12 col-md-6">
									<div class="group">
										<spring:bind path="passwordConfirm">
											<div class="form-group ${status.error ? 'has-error' : ''}">
												<form:input type="password" path="passwordConfirm"
													class="cpassword" name="cpassword" id="cpassword"></form:input>
												<form:errors path="passwordConfirm"></form:errors>
												<span class="highlight"></span> <span class="bar"></span> <label><spring:message code="reg.cpassword" /></label>
											</div>
										</spring:bind>
									</div>
								</div>
								<!--  <div class="col-12 justify-content-center"
									style="display: flex;">
									<span>${error}</span>
								</div>-->
								<div class="col-12 justify-content-center"
									style="display: flex;">
									<button type="submit" class="btn original-btn mb-15"><spring:message code="button.submit" /></button>
								</div>
								<div class="col-12 justify-content-center"
									style="display: flex;">
									<p class="message">
									<spring:message code="reg.alreg" /> <a href="${contextPath}/login"><spring:message code="login.signin" /></a>
									</p>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Contact Area End ##### -->


	<!-- ##### Footer Area Start ##### -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- ##### Footer Area End ##### -->

</body>
</html>