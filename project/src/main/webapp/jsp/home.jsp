<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
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
	<!-- Preloader -->
	<div id="preloader">
		<div class="preload-content">
			<div id="original-load"></div>
		</div>
	</div>

	<!-- ##### Header Area Start ##### -->
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<!-- ##### Header Area End ##### -->

	<!-- ##### Blog Wrapper Start ##### -->
	<div class="blog-wrapper section-padding-100-0 clearfix">
		<div class="container">
			<div class="row">

				<c:if test="${not empty products}">
					<c:forEach items="${products}" var="currentProduct">

						<div class="col-12 col-md-6 col-lg-4">

							<div class="single-blog-area blog-style-2 mb-100">
								<div class="single-blog-thumbnail">
									<img
										src="data:image/jpg;base64, ${currentProduct.encodedImage}"
										alt="cover" style="width: 350px; height: 455px;">
									<div class="post-date">
										<a href="#">${currentProduct.price}<span>$</span></a>
									</div>
								</div>
								<!-- Blog Content -->
								<div class="single-blog-content mt-50">
									<div class="line"></div>
									<a href="#" class="post-tag"><spring:message code='hello.magaz'/></a>
									<p>${currentProduct.publish_date}</p>
									<h4>
										<a href="#" class="post-headline">${currentProduct.pr_name}</a>
									</h4>
									<p>${currentProduct.description}</p>
									<div class="post-meta">
									
										<form:form action="${contextPath}/single-product" method="GET"
											enctype="multipart/form-data">
											<input type="hidden" value="${currentProduct.id}"
												name="productId">
							  			<button type="submit" class="btn original-btn"><spring:message code='button.open'/></button>
										</form:form>
											

										<security:authorize access="hasRole('ROLE_USER')">
										<form:form action="${contextPath}/bucket" method="POST"
											enctype="multipart/form-data">
											<input type="hidden" value="${currentProduct.id}"
												name="productId">

											<button type="submit" class="btn original-btn mb-15">
												<i class="fa fa-shopping-cart" aria-hidden="true"></i>
											</button>
										</form:form>
										
										<form:form action="${contextPath}/make-subsc" method="GET"
											enctype="multipart/form-data">
											<input type="hidden" value="${currentProduct.id}"
												name="productId">

											<button type="submit" class="btn original-btn mb-15"><spring:message code='button.subs'/></button>
										</form:form>
										</security:authorize>

									</div>
								</div>
							</div>

						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>

	<!-- ##### Blog Wrapper End ##### -->




	<!-- ##### Footer Area Start ##### -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- ##### Footer Area End ##### -->

</body>
</html>