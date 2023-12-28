<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lịch sử đặt hàng</title>
    <!-- Thêm các thư viện CSS Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4">Lịch sử đặt hàng</h2>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th class="text-center">Mã đặt hàng</th>
                <th class="text-center">Ngày đặt hàng</th>
                <th class="text-center">Sản phẩm</th>
                <th class="text-center">Trạng thái</th>
                <th class="text-center">Hành động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${orderList}" var="order">
                <tr>
                    <td class="text-center">${order.orderId}</td>
                    <td class="text-center">${order.orderDate}</td>
                      <td>
                                 <table class="table">
                                     <thead>
                                         <tr>
                                             <th>Tên sản phẩm</th>
                                              <th>Số lượng</th>
                                               <th>Giá tiền</th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                         <c:forEach items="${order.orderDetailEntityList}" var="orderDetail">
                                             <tr>
                                                 <td>
                                                     <!-- Hiển thị tên sản phẩm -->
                                                     <img src="${orderDetail.product.image}" alt="${orderDetail.product.productName}" style="width: 50px; height: 50px;">
                                                     ${orderDetail.product.productName}
                                                 </td>
                                                  <td>
                                                     <!-- Hiển thị số lượng sản phẩm -->
                                                     ${orderDetail.quantity}
                                                 </td>
                                                 <td>
                                                     <!-- Hiển thị giá tiền sản phẩm -->
                                                     ${orderDetail.product.price *  orderDetail.quantity}
                                                 </td>
                                             </tr>
                                         </c:forEach>
                                     </tbody>
                                 </table>
                             </td>
                    <td class="text-center">
                        <c:choose>
                            <c:when test="${order.status eq 'Cancel'}">
                                <span class="badge badge-danger">Đã hủy</span>
                            </c:when>
                            <c:otherwise>
                                <span class="badge badge-success">Hoàn thành</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td class="text-center">
                        <c:choose>
                            <c:when test="${order.status ne 'Cancel'}">
                                <form action="/user/cancel/${order.orderId}" method="post">
                                    <button type="submit" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn hủy đặt hàng?')">Hủy đặt hàng</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <span class="badge badge-secondary">Không thể hủy</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<!-- Thêm các thư viện JavaScript Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
