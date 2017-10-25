<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div {
    width: 600px;
    border: 5px solid black;
    padding: 25px;
    margin: auto;
    box-shadow: 10px 10px grey;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<center><h1>Trainee Management System</h1></center>
	<table bgcolor="#FAEBD7" align="center" border="1">
			<tr><th colspan="2">Pick Your Operation</th></tr>
			<tr>
				<th>Add a Trainee</th>
				<td><a href="add.obj">ADD</a></td>
			</tr>
			<tr>
				<th>Delete a Trainee</th>
				<td><a href="delete.obj">DELETE</a></td>
			</tr>
			<tr>
				<th>Modify a Trainee</th>
				<td><a href="modify.obj">MODIFY</a></td>
			</tr>
			<tr>
				<th>Retrieve One Trainee</th>
				<td><a href="retrieveOne.obj">RETRIEVE</a></td>
			</tr>
			<tr>
				<th>Retrieve All Trainee</th>
				<td><a href="retrieveAll.obj">RETRIEVE</a></td>
			</tr>
		</table>
</div>
</body>
</html>