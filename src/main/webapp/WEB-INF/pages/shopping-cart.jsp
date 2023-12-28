<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<%@taglib  uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
    <head>
            <link rel="icon" type="image/png" href="../resources/images/icons/favicon.png"/>
               	<link rel="stylesheet" type="text/css" href="../resources/vendor/bootstrap/css/bootstrap.min.css">
               	<link rel="stylesheet" type="text/css" href="../resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
               	<link rel="stylesheet" type="text/css" href="../resources/fonts/iconic/css/material-design-iconic-font.min.css">
               	<link rel="stylesheet" type="text/css" href="../resources/fonts/linearicons-v1.0.0/icon-font.min.css">
               	<link rel="stylesheet" type="text/css" href="../resources/vendor/animate/animate.css">
               	<link rel="stylesheet" type="text/css" href="../resources/vendor/css-hamburgers/hamburgers.min.css">
               	<link rel="stylesheet" type="text/css" href="../resources/vendor/animsition/css/animsition.min.css">
               	<link rel="stylesheet" type="text/css" href="../resources/vendor/select2/select2.min.css">
               	<link rel="stylesheet" type="text/css" href="../resources/vendor/daterangepicker/daterangepicker.css">
               	<link rel="stylesheet" type="text/css" href="../resources/vendor/slick/slick.css">
               	<link rel="stylesheet" type="text/css" href="../resources/vendor/MagnificPopup/magnific-popup.css">
               	<link rel="stylesheet" type="text/css" href="../resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
               	<link rel="stylesheet" type="text/css" href="../resources/css/util.css">
               	<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
               	<link rel="stylesheet" type="text/css" href="../resources/css/styleProduct.css">
    </head>

<body>
<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
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
			<div class="wrap-menu-desktop">
                    				<nav class="limiter-menu-desktop container">

                    					<!-- Logo desktop -->
                    					<a href="#" class="logo">
                    						<img src="../resources/images/icons/logo-01.png" alt="IMG-LOGO">
                    					</a>

                    					<!-- Menu desktop -->
                    					<div class="menu-desktop">
                    						<ul class="main-menu">
                    							<li class="active-menu">
                    								<a href="index">Home</a>

                    							</li>

                    							<li>
                    								<a href="product">Shop</a>
                    							</li>

                    							<li class="label1" data-label1="hot">
                    								<a href="shoping-cart">Features</a>
                    							</li>

                    							<li>
                    								<a href="blog">Blog</a>
                    							</li>

                    							<li>
                    								<a href="about">About</a>
                    							</li>

                    							<li>
                    								<a href="contact">Contact</a>
                    							</li>
                    						</ul>
                    					</div>

                    					<!-- Icon header -->
                    					<div class="wrap-icon-header flex-w flex-r-m">
                    						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                    							<i class="zmdi zmdi-search"></i>
                    						</div>

                    						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
                    							<i class="zmdi zmdi-shopping-cart"></i>
                    						</div>

                    						<a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
                    							<i class="zmdi zmdi-favorite-outline"></i>
                    						</a>
                    					</div>
                    				</nav>
                    			</div>
                    		</div>
                    		<!-- Modal Search -->
                    		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
                    			<div class="container-search-header">
                    				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
                    					<img src="../resources/images/icons/icon-close2.png" alt="CLOSE">
                    				</button>

                    				<form class="wrap-search-header flex-w p-l-15">
                    					<button class="flex-c-m trans-04">
                    						<i class="zmdi zmdi-search"></i>
                    					</button>
                    					<input class="plh3" type="text" name="searchInput" placeholder="Search...">
                    				</form>
                    			</div>
                    		</div>
        	</header>



      <div class="container">
          <div class="row">
              <div class="col-lg-12">
                  <h2>Shopping Cart</h2>
                   <a href="/index" class="stext-109 cl8 hov-cl1 trans-04">
                      Home
                      <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                  </a>
                  <a href="/product" class="stext-109 cl8 hov-cl1 trans-04">
                      Shop
                      <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
                  </a>
                  <table class="table">
                      <thead>
                          <tr>
                              <th>Product</th>
                              <th>Image</th>
                              <th>Price</th>
                              <th>Quantity</th>
                              <th>Total</th>
                              <th>Action</th>
                          </tr>
                      </thead>
                      <tbody>
                          <c:forEach items="${orderDetailEnittyList}" var="cartItem">
                              <tr>
                                  <td>${cartItem.product.productName}</td>
                                  <td>
                                      <img src="${cartItem.product.image}" alt="Product Image" style="width: 100px; height: auto;">
                                  </td>
                                  <td>$${cartItem.product.price}</td>
                                  <td>
                                  <form action="/updateQuantity/${cartItem.product.proId}" method="post" class="updateQuantityForm">
                                      <input type="number" name="newQuantity" class="quantityInput" value="${cartItem.quantity}" data-product-id="${cartItem.product.proId}">
                                  </form>

                                  </td>
                                  <td>$${cartItem.product.price * cartItem.quantity}</td>
                                  <td>
                                      <a href="/delete/${cartItem.product.proId}">Delete</a>
                                  </td>
                              </tr>
                          </c:forEach>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>

   <div class="container">
    <div class="row">
        <div class="col-lg-6">
            <!-- Nút chuyển đến trang thanh toán -->

              <a href="/user/payment" id="checkoutButton" class="btn btn-primary">Proceed to Checkout</a>

        </div>
        <div class="col-lg-6 text-right price-total">
            <!-- Hiển thị tổng giá trị của giỏ hàng -->
           <h4>Cart Total: $<span>${cartTotal}</span></h4>
        </div>
    </div>
</div>
                     <!-- Import các file JavaScript và cập nhật giá trị khi thay đổi số lượng sản phẩm -->
                     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                    <script>
                       // Lấy tất cả các input có class là 'quantityInput'
                       const quantityInputs = document.querySelectorAll('.quantityInput');

                       // Đặt sự kiện 'change' cho mỗi input
                       quantityInputs.forEach(input => {
                           input.addEventListener('change', function(event) {
                               // Lấy giá trị mới của input khi người dùng thay đổi
                               const newQuantity = event.target.value;

                               // Lấy ID của sản phẩm từ thuộc tính 'data-product-id'
                               const productId = event.target.dataset.productId;

                               // Gửi request AJAX để cập nhật số lượng sản phẩm
                               // Sử dụng XMLHttpRequest hoặc Fetch API để gửi request đến server
                               // Ví dụ sử dụng Fetch API:
                               fetch(`/updateQuantity/${productId}`, {
                                   method: 'POST',
                                   headers: {
                                       'Content-Type': 'application/json'
                                   },
                                   body: JSON.stringify({ newQuantity: newQuantity })
                               })
                               .then(response => {
                                   // Xử lý phản hồi từ server (nếu cần)
                                   // Cập nhật lại UI nếu có thay đổi
                               })
                               .catch(error => {
                                   // Xử lý lỗi nếu có
                               });
                           });
                       });
                    </script>
        	<script src="../resources/vendor/jquery/jquery-3.2.1.min.js"></script>
        	<script src="../resources/vendor/animsition/js/animsition.min.js"></script>
        	<script src="../resources/vendor/bootstrap/js/popper.js"></script>
        	<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
        	<script src="../resources/vendor/select2/select2.min.js"></script>
        	<script>
        		$(".js-select2").each(function(){
        			$(this).select2({
        				minimumResultsForSearch: 20,
        				dropdownParent: $(this).next('.dropDownSelect2')
        			});
        		})
        	</script>
        	<script src="../resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
        	<script src="../resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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

        	<script src="../resources/js/main.js"></script>
        		<footer class="bg3 p-t-75 p-b-32">
                     		<div class="container">
                     			<div class="row">
                     				<div class="col-sm-6 col-lg-3 p-b-50">
                     					<h4 class="stext-301 cl0 p-b-30">
                     						Categories
                     					</h4>

                     					<ul>
                     						<li class="p-b-10">
                     							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                     								Women
                     							</a>
                     						</li>

                     						<li class="p-b-10">
                     							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                     								Men
                     							</a>
                     						</li>

                     						<li class="p-b-10">
                     							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                     								Shoes
                     							</a>
                     						</li>

                     						<li class="p-b-10">
                     							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                     								Watches
                     							</a>
                     						</li>
                     					</ul>
                     				</div>

                     				<div class="col-sm-6 col-lg-3 p-b-50">
                     					<h4 class="stext-301 cl0 p-b-30">
                     						Help
                     					</h4>

                     					<ul>
                     						<li class="p-b-10">
                     							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                     								Track Order
                     							</a>
                     						</li>

                     						<li class="p-b-10">
                     							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                     								Returns
                     							</a>
                     						</li>

                     						<li class="p-b-10">
                     							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                     								Shipping
                     							</a>
                     						</li>

                     						<li class="p-b-10">
                     							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
                     								FAQs
                     							</a>
                     						</li>
                     					</ul>
                     				</div>

                     				<div class="col-sm-6 col-lg-3 p-b-50">
                     					<h4 class="stext-301 cl0 p-b-30">
                     						GET IN TOUCH
                     					</h4>

                     					<p class="stext-107 cl7 size-201">
                     						Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
                     					</p>

                     					<div class="p-t-27">
                     						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                     							<i class="fa fa-facebook"></i>
                     						</a>

                     						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                     							<i class="fa fa-instagram"></i>
                     						</a>

                     						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                     							<i class="fa fa-pinterest-p"></i>
                     						</a>
                     					</div>
                     				</div>

                     				<div class="col-sm-6 col-lg-3 p-b-50">
                     					<h4 class="stext-301 cl0 p-b-30">
                     						Newsletter
                     					</h4>

                     					<form>
                     						<div class="wrap-input1 w-full p-b-4">
                     							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
                     							<div class="focus-input1 trans-04"></div>
                     						</div>

                     						<div class="p-t-18">
                     							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
                     								Subscribe
                     							</button>
                     						</div>
                     					</form>
                     				</div>
                     			</div>

                     			<div class="p-t-40">
                     				<div class="flex-c-m flex-w p-b-18">
                     					<a href="#" class="m-all-1">
                     						<img src="../resources/images/icons/icon-pay-01.png" alt="ICON-PAY">
                     					</a>

                     					<a href="#" class="m-all-1">
                     						<img src="../resources/images/icons/icon-pay-02.png" alt="ICON-PAY">
                     					</a>

                     					<a href="#" class="m-all-1">
                     						<img src="../resources/images/icons/icon-pay-03.png" alt="ICON-PAY">
                     					</a>

                     					<a href="#" class="m-all-1">
                     						<img src="../resources/images/icons/icon-pay-04.png" alt="ICON-PAY">
                     					</a>

                     					<a href="#" class="m-all-1">
                     						<img src="../resources/images/icons/icon-pay-05.png" alt="ICON-PAY">
                     					</a>
                     				</div>

                     				<p class="stext-107 cl6 txt-center">
                     					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                     Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> &amp; distributed by <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                     <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

                     				</p>
                     			</div>
                     		</div>
                     	</footer>

    </body>

</html>
