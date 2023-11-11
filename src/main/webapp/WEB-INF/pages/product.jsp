
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<body>
<div class="container">
		<h2>List Products</h2>
		<div class="rows">
			<div class="col-sm-9">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Description</th>
							<th>Photo</th>
							<th>Name</th>
							<th>Price</th>
							<th>producer</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						 <c:forEach items="${listOfProducts}" var="product">
                            <tr>
                                <td>${product.id}</td>
                                <td>${product.description}</td>
                                <td>${product.image}</td>
                                 <td>${product.name}</td>
                                <td>${product.producer}</td>
                                <td>${product.price}</td>
                                <td>${product.producer}</td>
                                <td><a class="btn btn-primary btn-sm" href="">Buy Now</a>
                            </tr>
                         </c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</div>
</body>
</html>
