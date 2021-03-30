<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:#ff8c69;
}

</style>
</head>
<body>
<div align="center">
<h2>Best Choice Cars</h2><br>
<h3>Choose price range to find available cars</h3>
<form id="carByPrice" modelAttribute="car" action="FindPriceCar">
<input type="radio" name="price" value="less"><5lakh</input><br>
<input type="radio" name="price" value="more" checked="true">>5lakh</input><br>
<input type="submit" value="Find Your Car" />
<a href="Hello"><button type="button" id="btn1">Back</button></a>
</form>
</div>
</body>
</html>
