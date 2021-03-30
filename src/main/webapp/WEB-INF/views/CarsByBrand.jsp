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

table{
border:1px solid black;
align:center;
}
</style>
</head>
<body>
<div align="center">
<h2>Best Choice Cars</h2><br>
<h3>Choose brand to find available models</h3>
<form:form id="carByBrand" modelAttribute="car" action="FindBrand">
	
		<table>
			<tr>
				<td> <form:label path="brand">Brand : </form:label></td>
				<td> <form:select path="brand" name="brd">
				     <c:forEach var="b" items="${list}">
				     <form:option value="${b}"/>
				     </c:forEach>
				     </form:select>
				</td>
			</tr>
			<tr>
			    <td><input type="submit" value="Find Models"></td>
				<td><a href="Hello"><button type="button" id="btn1">Back</button></a></td>
				
			</tr>
		</table>
</form:form>
</div>
</body>
</html>
