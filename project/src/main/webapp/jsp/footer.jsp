<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

    <!DOCTYPE html>
    <html>

    <head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Style CSS -->
    <!-- <link href="<spring:url value=" css/style.css" />" rel="stylesheet" type="text/css"> --> 
    </head>

    <body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="preload-content">
            <div id="original-load"></div>
        </div>
    </div>

    <!-- ##### Instagram Feed Area Start ##### -->
    <div class="instagram-feed-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="insta-title">
                        <h5><spring:message code='footer.title'/></h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Instagram Slides -->
        <div class="instagram-slides owl-carousel">
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/1.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i
                            class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/2.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i
                            class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/3.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i
                            class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/4.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i
                            class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/5.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i
                            class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/6.png" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i
                            class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="img/instagram-img/7.jfif" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i
                            class="fa fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Instagram Feed Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area text-center">
        <div class="container">
            <div class="row">
                <div class="col-12">

                    <!-- Footer Nav Area -->
                    <div class="classy-nav-container breakpoint-off">
                        <!-- Classy Menu -->
                        <nav class="classy-navbar justify-content-center">

                            <!-- Navbar Toggler -->
                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>

                            <!-- Menu -->
                            <div class="classy-menu">

                                <!-- close btn -->
                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>

                                <!-- Nav Start -->
                                <div class="classynav">
                                    <ul>
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Lifestyle</a></li>
                                        <li><a href="#">Magazine</a></li>
                                        <li><a href="#">App</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </div>
                                <!-- Nav End -->
                            </div>
                        </nav>
                    </div>

                    <!-- Footer Social Area -->
                    <div class="footer-social-area mt-30">
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i
                                class="fa fa-pinterest" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i
                                class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter"
                                aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Dribbble"><i
                                class="fa fa-dribbble" aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Behance"><i class="fa fa-behance"
                                aria-hidden="true"></i></a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Linkedin"><i
                                class="fa fa-linkedin" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>

        Copyright &copy;
        <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i
            class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#" target="_blank">NataliiaHlazova</a>

    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="${contextPath}/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="${contextPath}/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${contextPath}/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="${contextPath}/js/plugins.js"></script>
    <!-- Active js -->
    <script src="${contextPath}/js/active.js"></script>
	<script src="${contextPath}/js/lang.js"></script>

</body>

</html>