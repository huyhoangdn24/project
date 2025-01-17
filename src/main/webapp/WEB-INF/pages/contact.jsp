<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>

<%@taglib  uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <meta charset="UTF-8">
        <meta name="description" content="Male_Fashion Template">
        <meta name="keywords" content="Male_Fashion, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Home Page</title>
       <link rel="icon" type="image/png" href="resources/images/icons/favicon.png"/>
       	<link rel="stylesheet" type="text/css" href="resources/vendor/bootstrap/css/bootstrap.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/fonts/linearicons-v1.0.0/icon-font.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/animate/animate.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/css-hamburgers/hamburgers.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/animsition/css/animsition.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/select2/select2.min.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/daterangepicker/daterangepicker.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/slick/slick.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/MagnificPopup/magnific-popup.css">
       	<link rel="stylesheet" type="text/css" href="resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
       	<link rel="stylesheet" type="text/css" href="resources/css/util.css">
       	<link rel="stylesheet" type="text/css" href="resources/css/main.css">

    </head>

    <body>
    <div class="container-menu-desktop">
            			<!-- Topbar -->
            			<div class="top-bar">
            				<div class="content-topbar flex-sb-m h-full container">
            					<div class="left-top-bar">
            						 <p>
                                        <sec:authorize access="isAuthenticated()">
                                            Authenticated as
                                            <sec:authentication property="principal.username" />
                                        </sec:authorize>
                                    </p>
            					</div>

            					<div class="right-top-bar flex-w h-full">
            					<a href="#" class="flex-c-m trans-04 p-lr-25">
                                    Help & FAQs
                                </a>
            						  <sec:authorize access="isAuthenticated()">
                                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                                        <a href="<c:url value='/admin/home' />"class="flex-c-m trans-04 p-lr-25">Admin Home</a>
                                    </sec:authorize>
                                    <a href="<c:url value='/logout' />"class="flex-c-m trans-04 p-lr-25">Logout</a>
                                </sec:authorize>

                                <!-- If not logged in, show the Login Page -->
                                <sec:authorize access="!isAuthenticated()">
                                    <a href="<c:url value='/login' />"class="flex-c-m trans-04 p-lr-25">Login</a>
                                </sec:authorize>
                                <a href="#" class="flex-c-m trans-04 p-lr-25">
                                    EN
                                </a>

                                <a href="#" class="flex-c-m trans-04 p-lr-25">
                                    USD
                                </a>
            					</div>
            				</div>
            			</div>
            			<!-- Title page -->
                        	<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('resources/images/bg-01.jpg');">
                        		<h2 class="ltext-105 cl0 txt-center">
                        			Contact
                        		</h2>
                        	</section>
                        	 <div class="container">
                                <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
                                    <a href="index" class="stext-109 cl8 hov-cl1 trans-04">
                                        Home
                                        <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                                    </a>
                                    <a href="product" class="stext-109 cl8 hov-cl1 trans-04">
                                        Shop
                                        <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>


                        	<!-- Content page -->
                        	<section class="bg0 p-t-104 p-b-116">
                        		<div class="container">
                        			<div class="flex-w flex-tr">
                        				<div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
                        					<form>
                        						<h4 class="mtext-105 cl2 txt-center p-b-30">
                        							Send Us A Message
                        						</h4>

                        						<div class="bor8 m-b-20 how-pos4-parent">
                        							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="email" placeholder="Your Email Address">
                        							<img class="how-pos4 pointer-none" src="resources/images/icons/icon-email.png" alt="ICON">
                        						</div>

                        						<div class="bor8 m-b-30">
                        							<textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg" placeholder="How Can We Help?"></textarea>
                        						</div>

                        						<button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                        							Submit
                        						</button>
                        					</form>
                        				</div>

                        				<div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
                        					<div class="flex-w w-full p-b-42">
                        						<span class="fs-18 cl5 txt-center size-211">
                        							<span class="lnr lnr-map-marker"></span>
                        						</span>

                        						<div class="size-212 p-t-2">
                        							<span class="mtext-110 cl2">
                        								Address
                        							</span>

                        							<p class="stext-115 cl6 size-213 p-t-18">
                        								Coza Store Center 8th floor, 379 Hudson St, New York, NY 10018 US
                        							</p>
                        						</div>
                        					</div>

                        					<div class="flex-w w-full p-b-42">
                        						<span class="fs-18 cl5 txt-center size-211">
                        							<span class="lnr lnr-phone-handset"></span>
                        						</span>

                        						<div class="size-212 p-t-2">
                        							<span class="mtext-110 cl2">
                        								Lets Talk
                        							</span>

                        							<p class="stext-115 cl1 size-213 p-t-18">
                        								+1 800 1236879
                        							</p>
                        						</div>
                        					</div>

                        					<div class="flex-w w-full">
                        						<span class="fs-18 cl5 txt-center size-211">
                        							<span class="lnr lnr-envelope"></span>
                        						</span>

                        						<div class="size-212 p-t-2">
                        							<span class="mtext-110 cl2">
                        								Sale Support
                        							</span>

                        							<p class="stext-115 cl1 size-213 p-t-18">
                        								contact@example.com
                        							</p>
                        						</div>
                        					</div>
                        				</div>
                        			</div>
                        		</div>
                        	</section>


                        	<!-- Map -->
                        	<div class="map">
                        		<div class="size-303" id="google_map" data-map-x="40.691446" data-map-y="-73.886787" data-pin="images/icons/pin.png" data-scrollwhell="0" data-draggable="1" data-zoom="11"></div>
                        	</div>



                        	<!-- Back to top -->
                            	<div class="btn-back-to-top" id="myBtn">
                            		<span class="symbol-btn-back-to-top">
                            			<i class="zmdi zmdi-chevron-up"></i>
                            		</span>
                            	</div>

                            <!--===============================================================================================-->
                            	<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
                            <!--===============================================================================================-->
                            	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
                            <!--===============================================================================================-->
                            	<script src="resources/vendor/bootstrap/js/popper.js"></script>
                            	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
                            <!--===============================================================================================-->
                            	<script src="resources/vendor/select2/select2.min.js"></script>
                            	<script>
                            		$(".js-select2").each(function(){
                            			$(this).select2({
                            				minimumResultsForSearch: 20,
                            				dropdownParent: $(this).next('.dropDownSelect2')
                            			});
                            		})
                            	</script>
                            <!--===============================================================================================-->
                            	<script src="resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
                            <!--===============================================================================================-->
                            	<script src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
                            	<script>
                            		$('.js-pscroll').each(function(){
                            			$(this).css('position','relative');
                            			$(this).css('overflow','hidden');
                            			var ps = new PerfectScrollbar(this, {
                            				wheelSpeed: 1,
                            				scrollingThreshold: 1000,
                            				wheelPropagation: false,
                            			});

                            			$(window).on('resize', function(){
                            				ps.update();
                            			})
                            		});
                            	</script>
                            <!--===============================================================================================-->
                            	<script src="resources/js/main.js"></script>

	</body>
	</html>
