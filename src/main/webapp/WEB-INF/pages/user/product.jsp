<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<table border="1">
    <tr>
        <th>Mã sản phẩm</th>
        <th>Tên sản phẩm</th>
        <th>Mô tả sản phẩm</th>
        <th>Nhà sản xuất</th>
        <th>Ảnh</th>
        <th>Giá</th>
    </tr>
    <c:forEach var="product" items="${listOfProducts}">
        <tr>
            <td>${product.proId}</td>
            <td>${product.productName}</td>
            <td>${product.productDescription}</td>
            <td>${product.producer}</td>
            <td align="center" width="120"><img src="${product.image}" width="100" height="100" alt="${product.productName}"></td>
            <td>${product.price}</td>
            <td><a class="btn btn-primary"href="">ADD Cart</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
