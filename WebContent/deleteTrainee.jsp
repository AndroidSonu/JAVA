<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div {
    width: 600px;
    border: 5px solid black;
    padding: 25px;
    margin: auto;
    box-shadow: 10px 10px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trainee Application</title>
</head>
<body>
<div>
<c:url var="myAction" value="deleteNow.obj"></c:url>
<sf:form action="${myAction}" method="post" modelAttribute="trainee">
	<center>
	<h2>Please Enter the Trainee ID</h2>
	<br>
	<sf:input path="traineeId"></sf:input> <br>
	<input type="submit" value="Delete" /></center>
</sf:form>

<c:if test="${isFirst!=true}">
	<u>
	<h2 align="center">Trainee Information</h2>
	</u>
	<sf:form action="deleteFinally.obj" method="post" modelAttribute="trainee">
	<table border="1" align="center">
		<tr>
			<th bgcolor="bisque">Trainee Id</th>
			<th bgcolor="bisque">Trainee Name</th>
			<th bgcolor="bisque">Trainee Location</th>
			<th bgcolor="bisque">Trainee Domain</th>
		</tr>
		<tr>
			 <td><sf:input path="traineeId" value="${trainee.traineeId }" readonly="true"/></td>
      		 <td><sf:input path="traineeName" value="${trainee.traineeName }"readonly="true"/></td>
      		 <td><sf:input path="traineeLocation" value="${trainee.traineeLocation }"readonly="true"/></td>
      		 <td><sf:input path="traineeDomain" value="${trainee.traineeDomain }"readonly="true"/></td>
		</tr>
		<tr>
			
			<td colspan="5" align="center"><input type="submit" value="delete"/></td>
		</tr>
	</table>
</sf:form>
</c:if>
</div>
</body>
</html>