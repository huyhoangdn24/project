<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Display Products</title>
</head>
<body>
    <h2>How to fetch image from database using Spring MVC</h2>

    <table border="1">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Description</th>
            <th>Producer</th>
            <th>Price</th>
            <th>Image</th>
        </tr>
        <c:forEach var="product" items="${productList}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.producer}</td>
                <td>${product.price}</td>
                <td><img src="getProductImage/${product.id}" width="100" height="100" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
