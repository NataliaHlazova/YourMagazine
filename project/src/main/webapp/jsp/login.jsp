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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
    
     <!-- ##### Contact Area Start ##### -->
    <section class="contact-area">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Contact Form Area -->
                <div class="col-12 col-md-10 col-lg-9">
                    <div class="contact-form">
                        <h5><spring:message code='login.title'/></h5>
                        <!-- Contact Form -->
                        <form method="POST" action="${contextPath}/login">
                        <div class="login-form ${error != null ? 'has-error' : ''}">
                            <div class="row">
                                <div class="col-12">
                                    <div class="group">
                                        <input type="email" name="email" id="email" name="email" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label><spring:message code='login.email'/></label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group">
                                        <input type="password" name="password" id="password" class="password" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label><spring:message code='login.password'/></label>
                                    </div>
                                </div>

                                <div class="col-12 justify-content-center" style="display: flex;">
                                    <span>${message}</span>
                                    <span>${error}</span>
                                </div>
                                
                                <div class="col-12 justify-content-center" style="display: flex;">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    <button type="submit" class="btn original-btn mb-15"><spring:message code='login.signin'/></button>
                                </div>
                                <div class="col-12 justify-content-center" style="display: flex;">
                                    <p class="message"><spring:message code='login.notreg'/>
                                        <a href="${contextPath}/registration"><spring:message code='login.create_account'/></a>
                                    </p>
                                </div>
                             </div>
                            </div>
                        </form>
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

<script src="${contextPath}/js/lang.js"></script>
</body>

</html>