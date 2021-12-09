<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<!-- ##### Header Area Start ##### -->
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<!-- ##### Header Area End ##### -->
	<div class="blog-wrapper section-padding-100-0 clearfix">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="single-blog-area blog-style-2 mb-100">
						<div class="elem d-flex mb-50 justify-content-center">
							<div class="single-blog-thumbnail mr-15 ml-15">
								<img src="data:image/jpg;base64, ${product.encodedImage}"
									alt="cover" style="width: 350px; height: 455px;">
								<div class="post-date">
									<a href="#">${product.price}<span>$</span></a>
								</div>
							</div>
							<!-- Blog Content -->
							<div class="single-blog-content mt-50">
								<div class="line"></div>
								<a href="#" class="post-tag"><spring:message
										code="hello.magaz" /></a>
								<p>${product.publish_date}</p>
								<h4>
									<a href="#" class="post-headline">${product.pr_name}</a>
								</h4>
								<p>${product.description}</p>
							</div>
						</div>


						<div class="modal-content">
							<div class="modal-body">
								<h5 class="title mb-30">
									<spring:message code="make-subs.title" />
									"${product.pr_name}"
								</h5>

								<form:form action="${contextPath}/subscribe"
									class="newsletterForm" method="POST"
									enctype="multipart/form-data">

										<div class="group">
											<input type="email" name="email" id="subscribesForm2"
												placeholder="Your e-mail here"> <span
												class="highlight"></span> <span class="bar"></span> <label><spring:message
													code="login.email" /></label>
										</div>
										<div class="group">
											<input type="number" name="phone" id="subscribesForm2"
												placeholder="Your phone here"> <span
												class="highlight"></span> <span class="bar"></span> <label><spring:message
													code="reg.phone" /></label>
										</div>
										<div class="group">
											<input type="number" name="period" id="subscribesForm2"
												max="12" min="1" value="1"> <span class="highlight"></span>
											<span class="bar"></span> <label><spring:message
													code="subsctibe.period" /></label>
										</div>

										<input type="hidden" value="${product.id}" name="productId">
										<button type="submit" class="btn original-btn mb-15">
											<spring:message code="button.subs" />
										</button>
								</form:form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ##### Footer Area Start ##### -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- ##### Footer Area End ##### -->

</body>
</html>