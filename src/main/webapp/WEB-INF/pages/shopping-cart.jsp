<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
            <link rel="icon" type="image/png" href="resources/images/icons/favicon.png"/>
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
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						Free shipping for standard order over $100
					</div>

					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m trans-04 p-lr-25">
							Help & FAQs
						</a>

						<a href="#" class="flex-c-m trans-04 p-lr-25">
							My Account
						</a>

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
                    						<img src="resources/images/icons/logo-01.png" alt="IMG-LOGO">
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
                    								<a href="shoping-cart.html">Features</a>
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
                    					<img src="resources/images/icons/icon-close2.png" alt="CLOSE">
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
                  <table class="table">
                      <thead>
                          <tr>
                              <th>Product</th>
                              <th>Image</th> <!-- Thêm cột cho ảnh sản phẩm -->
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
                                      <input class="quantityInput" type="number" value="${cartItem.quantity}" data-product-id="${cartItem.product.proId}">
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
                                <a href="/checkout" class="btn btn-primary">Proceed to Checkout</a>
                            </div>
                            <div class="col-lg-6 text-right">
                                <!-- Hiển thị tổng giá trị của giỏ hàng -->
                                <h4>Cart Total: $<span id="cartTotal"></span></h4>
                            </div>
                        </div>
                    </div>
                     <!-- Import các file JavaScript và cập nhật giá trị khi thay đổi số lượng sản phẩm -->
                     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                     <script>
                         $(document).ready(function() {
                             $('.quantityInput').on('change', function() {
                                 var productId = $(this).data('product-id');
                                 var quantity = $(this).val();
                                 var productPrice = $(this).closest('tr').find('td:nth-child(3)').text().replace('$', '');
                                 var newTotal = productPrice * quantity;
                                 $(this).closest('tr').find('td:nth-child(5)').text('$' + newTotal.toFixed(2));
                                 calculateCartTotal();
                             });
                             function calculateCartTotal() {
                                 var cartTotal = 0;
                                 $('.quantityInput').each(function() {
                                     var productPrice = $(this).closest('tr').find('td:nth-child(3)').text().replace('$', '');
                                     var quantity = $(this).val();
                                     var productTotal = productPrice * quantity;
                                     cartTotal += productTotal;
                                 });
                                   $.ajax({
                                               type: 'POST',
                                               url: '/updateCartTotal',
                                               data: { cartTotal: cartTotal },
                                               success: function(response) {
                                                   console.log('Tổng tiền giỏ hàng đã được lưu vào session');
                                               },
                                               error: function(error) {
                                                   console.error('Lỗi khi lưu tổng tiền giỏ hàng vào session: ', error);
                                               }
                                           });
                                 $('#cartTotal').text(cartTotal.toFixed(2));
                             }
                             calculateCartTotal();
                         });
                     </script>
                     <script>
                     document.addEventListener("DOMContentLoaded", function () {
                             var cartTotal = sessionStorage.getItem("cartTotal");
                             document.getElementById("cartTotal").value = cartTotal;
                     </script>

        <!--===============================================================================================-->
        	<script src="../resources/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        	<script src="../resources/vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        	<script src="../resources/vendor/bootstrap/js/popper.js"></script>
        	<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        	<script src="../resources/vendor/select2/select2.min.js"></script>
        	<script>
        		$(".js-select2").each(function(){
        			$(this).select2({
        				minimumResultsForSearch: 20,
        				dropdownParent: $(this).next('.dropDownSelect2')
        			});
        		})
        	</script>
        <!--===============================================================================================-->
        	<script src="../resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
        <!--===============================================================================================-->
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
        <!--===============================================================================================-->
        	<script src="../resources/js/main.js"></script>
    </body>

</html>
