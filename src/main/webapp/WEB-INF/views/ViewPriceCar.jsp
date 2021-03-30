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
<h3>Choose a car to buy</h3>
<form id="carsofPrice" action="BookCarByPrice">
	
		<table border="1">
            <tr>
                 <th></th>
                 <th>Brand</th>
                 <th>Model</th>
                 <th>Year</th>
                 <th>No. of Kms</th>
                 <th>Price</th>
                 <th>Fuel</th>
            </tr>

	
		     
		     <c:forEach var="car" items="${list}">
		     
		     <tr>
		           <td><input type="radio" name="choice" value="${car.cid}" required="required"></td>
	               <td><label for="choice" name="choice1">${car.brand}</label></td>
                   <td><label for="choice" name="choice2">${car.model}</label></td>
                   <td><label for="choice" name="choice3">${car.year}</label></td>
                   <td><label for="choice" name="choice4">${car.kms}</label></td>
                   <td><label for="choice" name="choice5">${car.price}</label></td>
                   <td><label for="choice" name="choice6">${car.fuel}</label></td>
                   
              </tr>
              
              </c:forEach>
	          
				
			<tr>
			    <td colspan="7" style="text-align:center">
			    <input type="submit" value="Book Car">
			    <a href="CarsByPrice"><button type="button" id="btn1">Back</button></a>
			    <a href="Hello"><button type="button" id="btn1">Home</button></a>
			    </td>
			</tr>
		</table>
</form>
</div>

</body>
</html>
