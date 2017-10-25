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
<c:url var="myAction" value="retrieveOneFinal.obj"></c:url>
<sf:form action="${myAction}" method="post" modelAttribute="trainee">
	<h1><center>Retrieve Operation</center></h1>
	<table align="center">
		<tr bgcolor="bisque">
			<th>Please Enter the Trainee ID</th>
			<td><sf:input path="traineeId"></sf:input> <br></td>
		</tr>
		<tr>
			<td><input type="submit" value="Retreive" /></td>
		</tr>
	</table>
</sf:form>

<c:if test="${isFirst!=true}">
	<u>
	<h2 align="center">Trainee Information</h2>
	</u>
	<table border="1" align="center">
		<tr>
			<th bgcolor="bisque">Trainee Id</th>
			<th bgcolor="bisque">Trainee Name</th>
			<th bgcolor="bisque">Trainee Location</th>
			<th bgcolor="bisque">Trainee Domain</th>
		</tr>
		<tr>
			<td>${trainee.traineeId }</td>
			<td>${trainee.traineeName }</td>
			<td>${trainee.traineeLocation }</td>
			<td>${trainee.traineeDomain }</td>
		</tr>
	</table>
</c:if>
<center><a href="index.jsp">Home</a></center>
</div>
</body>
</html>