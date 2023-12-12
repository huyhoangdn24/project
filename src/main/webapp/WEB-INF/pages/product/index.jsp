<%@page isELIgnored="false"%>
<html>
<body>
<h2>How to insert image in database using Spring MVC</h2>

<form action="/user/insertProduct" method="post" enctype="multipart/form-data">

<pre>
	 Name: <input type="text" name="name">
                Description: <input type="text" name="description">
                Producer: <input type="text" name="producer">
                Price: <input type="number" name="price">
                Image: <input type="file" name="image">
	            <input type="submit" value="Submit">
</pre>

</form>

<p>${msg}</p>

</body>
</html>
