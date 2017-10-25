<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Insert title here</title>
</head>
<body>
<div>
	<u>
	<h2 align="center">Trainee Information</h2>
	</u>
	<table border="1" align="center">
		<tr>
			<th bgcolor="bisque">Trainee Id</th>
			<th bgcolor="bisque">Trainee Name</th>
			<th bgcolor="bisque">Trainee Location</th>
			<th bgcolor="bisque">Trainee Domain</th>
			<th bgcolor="bisque">DELETE</th>
			<th bgcolor="bisque">UPDATE</th>
		</tr>
		<c:forEach var="List" items="${list}">
		<tr>
			 <td>${List.traineeId }</td>
      		 <td>${List.traineeName }</td>
      		 <td>${List.traineeLocation }</td>
      		 <td>${List.traineeDomain }</td>
      		 <td><a href="deleteNow.obj?traineeId=${List.traineeId }">DELETE</a></td>
      		 <td><a href="modifyNow.obj?traineeId=${List.traineeId }">MODIFY</a></td>
		</tr>
		</c:forEach>
	</table>
	<center><a href="index.jsp">Home</a></center>
</div>	
</body>
</html>