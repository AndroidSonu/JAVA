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
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<center><h1>Login Page</h1></center>
	<form action="login.obj" method="post">
		<table bgcolor="#DCDCDC" align="center" border="1">
			<tr>
				<th>Username<span style="color: red;">*</span></th>
				<td><input type="text" name="username" placeholder="Enter username" required></td>
			</tr>
			<tr>
				<th>Password<span style="color: red;">*</span></th>
				<td><input type="password" name="password" placeholder="Enter password" required></td>
			</tr>
			<tr>
				<th></th>
				<td><input type="submit" value="Submit"/></td>
			</tr>
		</table>
	</form>
</div>	
</body>
</html>