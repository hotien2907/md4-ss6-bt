<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h1>Product Discount Calculator</h1>
<form action="discount_servlet" method="post">
    Product Description: <input type="text" name="description"><br>
    List Price: <input type="text" name="listPrice"><br>
    Discount Percent: <input type="text" name="discountPercent"><br>
    <button type="submit"> Calculate Discount </button>
</form>
</body>
</html>