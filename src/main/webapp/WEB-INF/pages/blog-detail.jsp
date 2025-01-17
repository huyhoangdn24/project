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
            			<!-- breadcrumb -->
                        	<div class="container">
                        		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
                        			<a href="index" class="stext-109 cl8 hov-cl1 trans-04">
                        				Home
                        				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                        			</a>

                        			<a href="blog" class="stext-109 cl8 hov-cl1 trans-04">
                        				Blog
                        				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                        			</a>

                        			<span class="stext-109 cl4">
                        				8 Inspiring Ways to Wear Dresses in the Winter
                        			</span>
                        		</div>
                        	</div>


                        	<!-- Content page -->
                        	<section class="bg0 p-t-52 p-b-20">
                        		<div class="container">
                        			<div class="row">
                        				<div class="col-md-8 col-lg-9 p-b-80">
                        					<div class="p-r-45 p-r-0-lg">
                        						<!--  -->
                        						<div class="wrap-pic-w how-pos5-parent">
                        							<img src="resources/images/blog-04.jpg" alt="IMG-BLOG">

                        							<div class="flex-col-c-m size-123 bg9 how-pos5">
                        								<span class="ltext-107 cl2 txt-center">
                        									22
                        								</span>

                        								<span class="stext-109 cl3 txt-center">
                        									Jan 2018
                        								</span>
                        							</div>
                        						</div>

                        						<div class="p-t-32">
                        							<span class="flex-w flex-m stext-111 cl2 p-b-19">
                        								<span>
                        									<span class="cl4">By</span> Admin
                        									<span class="cl12 m-l-4 m-r-6">|</span>
                        								</span>

                        								<span>
                        									22 Jan, 2018
                        									<span class="cl12 m-l-4 m-r-6">|</span>
                        								</span>

                        								<span>
                        									StreetStyle, Fashion, Couple
                        									<span class="cl12 m-l-4 m-r-6">|</span>
                        								</span>

                        								<span>
                        									8 Comments
                        								</span>
                        							</span>

                        							<h4 class="ltext-109 cl2 p-b-28">
                        								8 Inspiring Ways to Wear Dresses in the Winter
                        							</h4>

                        							<p class="stext-117 cl6 p-b-26">
                        								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet est vel orci luctus sollicitudin. Duis eleifend vestibulum justo, varius semper lacus condimentum dictum. Donec pulvinar a magna ut malesuada. In posuere felis diam, vel sodales metus accumsan in. Duis viverra dui eu pharetra pellentesque. Donec a eros leo. Quisque sed ligula vitae lorem efficitur faucibus. Praesent sit amet imperdiet ante. Nulla id tellus auctor, dictum libero a, malesuada nisi. Nulla in porta nibh, id vestibulum ipsum. Praesent dapibus tempus erat quis aliquet. Donec ac purus id sapien condimentum feugiat.
                        							</p>

                        							<p class="stext-117 cl6 p-b-26">
                        								Praesent vel mi bibendum, finibus leo ac, condimentum arcu. Pellentesque sem ex, tristique sit amet suscipit in, mattis imperdiet enim. Integer tempus justo nec velit fringilla, eget eleifend neque blandit. Sed tempor magna sed congue auctor. Mauris eu turpis eget tortor ultricies elementum. Phasellus vel placerat orci, a venenatis justo. Phasellus faucibus venenatis nisl vitae vestibulum. Praesent id nibh arcu. Vivamus sagittis accumsan felis, quis vulputate
                        							</p>
                        						</div>

                        						<div class="flex-w flex-t p-t-16">
                        							<span class="size-216 stext-116 cl8 p-t-4">
                        								Tags
                        							</span>

                        							<div class="flex-w size-217">
                        								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                        									Streetstyle
                        								</a>

                        								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                        									Crafts
                        								</a>
                        							</div>
                        						</div>

                        						<!--  -->
                        						<div class="p-t-40">
                        							<h5 class="mtext-113 cl2 p-b-12">
                        								Leave a Comment
                        							</h5>

                        							<p class="stext-107 cl6 p-b-40">
                        								Your email address will not be published. Required fields are marked *
                        							</p>

                        							<form>
                        								<div class="bor19 m-b-20">
                        									<textarea class="stext-111 cl2 plh3 size-124 p-lr-18 p-tb-15" name="cmt" placeholder="Comment..."></textarea>
                        								</div>

                        								<div class="bor19 size-218 m-b-20">
                        									<input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" name="name" placeholder="Name *">
                        								</div>

                        								<div class="bor19 size-218 m-b-20">
                        									<input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" name="email" placeholder="Email *">
                        								</div>

                        								<div class="bor19 size-218 m-b-30">
                        									<input class="stext-111 cl2 plh3 size-116 p-lr-18" type="text" name="web" placeholder="Website">
                        								</div>

                        								<button class="flex-c-m stext-101 cl0 size-125 bg3 bor2 hov-btn3 p-lr-15 trans-04">
                        									Post Comment
                        								</button>
                        							</form>
                        						</div>
                        					</div>
                        				</div>

                        				<div class="col-md-4 col-lg-3 p-b-80">
                        					<div class="side-menu">
                        						<div class="bor17 of-hidden pos-relative">
                        							<input class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55" type="text" name="search" placeholder="Search">

                        							<button class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04">
                        								<i class="zmdi zmdi-search"></i>
                        							</button>
                        						</div>

                        						<div class="p-t-55">
                        							<h4 class="mtext-112 cl2 p-b-33">
                        								Categories
                        							</h4>

                        							<ul>
                        								<li class="bor18">
                        									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                        										Fashion
                        									</a>
                        								</li>

                        								<li class="bor18">
                        									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                        										Beauty
                        									</a>
                        								</li>

                        								<li class="bor18">
                        									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                        										Street Style
                        									</a>
                        								</li>

                        								<li class="bor18">
                        									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                        										Life Style
                        									</a>
                        								</li>

                        								<li class="bor18">
                        									<a href="#" class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4">
                        										DIY & Crafts
                        									</a>
                        								</li>
                        							</ul>
                        						</div>

                        						<div class="p-t-65">
                        							<h4 class="mtext-112 cl2 p-b-33">
                        								Featured Products
                        							</h4>

                        							<ul>
                        								<li class="flex-w flex-t p-b-30">
                        									<a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
                        										<img src="resources/images/product-min-01.jpg" alt="PRODUCT">
                        									</a>

                        									<div class="size-215 flex-col-t p-t-8">
                        										<a href="#" class="stext-116 cl8 hov-cl1 trans-04">
                        											White Shirt With Pleat Detail Back
                        										</a>

                        										<span class="stext-116 cl6 p-t-20">
                        											$19.00
                        										</span>
                        									</div>
                        								</li>

                        								<li class="flex-w flex-t p-b-30">
                        									<a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
                        										<img src="resources/images/product-min-02.jpg" alt="PRODUCT">
                        									</a>

                        									<div class="size-215 flex-col-t p-t-8">
                        										<a href="#" class="stext-116 cl8 hov-cl1 trans-04">
                        											Converse All Star Hi Black Canvas
                        										</a>

                        										<span class="stext-116 cl6 p-t-20">
                        											$39.00
                        										</span>
                        									</div>
                        								</li>

                        								<li class="flex-w flex-t p-b-30">
                        									<a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
                        										<img src="resources/images/product-min-03.jpg" alt="PRODUCT">
                        									</a>

                        									<div class="size-215 flex-col-t p-t-8">
                        										<a href="#" class="stext-116 cl8 hov-cl1 trans-04">
                        											Nixon Porter Leather Watch In Tan
                        										</a>

                        										<span class="stext-116 cl6 p-t-20">
                        											$17.00
                        										</span>
                        									</div>
                        								</li>
                        							</ul>
                        						</div>

                        						<div class="p-t-55">
                        							<h4 class="mtext-112 cl2 p-b-20">
                        								Archive
                        							</h4>

                        							<ul>
                        								<li class="p-b-7">
                        									<a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                        										<span>
                        											July 2018
                        										</span>

                        										<span>
                        											(9)
                        										</span>
                        									</a>
                        								</li>

                        								<li class="p-b-7">
                        									<a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                        										<span>
                        											June 2018
                        										</span>

                        										<span>
                        											(39)
                        										</span>
                        									</a>
                        								</li>

                        								<li class="p-b-7">
                        									<a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                        										<span>
                        											May 2018
                        										</span>

                        										<span>
                        											(29)
                        										</span>
                        									</a>
                        								</li>

                        								<li class="p-b-7">
                        									<a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                        										<span>
                        											April  2018
                        										</span>

                        										<span>
                        											(35)
                        										</span>
                        									</a>
                        								</li>

                        								<li class="p-b-7">
                        									<a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                        										<span>
                        											March 2018
                        										</span>

                        										<span>
                        											(22)
                        										</span>
                        									</a>
                        								</li>

                        								<li class="p-b-7">
                        									<a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                        										<span>
                        											February 2018
                        										</span>

                        										<span>
                        											(32)
                        										</span>
                        									</a>
                        								</li>

                        								<li class="p-b-7">
                        									<a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                        										<span>
                        											January 2018
                        										</span>

                        										<span>
                        											(21)
                        										</span>
                        									</a>
                        								</li>

                        								<li class="p-b-7">
                        									<a href="#" class="flex-w flex-sb-m stext-115 cl6 hov-cl1 trans-04 p-tb-2">
                        										<span>
                        											December 2017
                        										</span>

                        										<span>
                        											(26)
                        										</span>
                        									</a>
                        								</li>
                        							</ul>
                        						</div>

                        						<div class="p-t-50">
                        							<h4 class="mtext-112 cl2 p-b-27">
                        								Tags
                        							</h4>

                        							<div class="flex-w m-r--5">
                        								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                        									Fashion
                        								</a>

                        								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                        									Lifestyle
                        								</a>

                        								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                        									Denim
                        								</a>

                        								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                        									Streetstyle
                        								</a>

                        								<a href="#" class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5">
                        									Crafts
                        								</a>
                        							</div>
                        						</div>
                        					</div>
                        				</div>
                        			</div>
                        		</div>
                        	</section>
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
