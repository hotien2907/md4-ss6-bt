<%--
  Created by IntelliJ IDEA.
  User: Admin 88
  Date: 11/7/2023
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Discount Result</title>
</head>
<body>
<h1>Discount Result</h1>
<p>Product Description: ${param.description}</p>
<p>Discount Amount: <c:out value="${requestScope.discountAmount}" /></p>
<p>Discount Price: <c:out value="${requestScope.discountPrice}" /></p>
</body>
</html>