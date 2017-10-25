<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center><h1>Enter Trainee Details</h1></center>
	<form action="addNow.obj" method="post">
		<table bgcolor="#DCDCDC" align="center" border="1">
			<tr>
				<th>Trainee Id</th>
				<td><input type="number" name="traineeId" placeholder="Enter Trainee Id" required></td>
			</tr>
			<tr>
				<th>Trainee Name</th>
				<td><input type="text" name="traineeName" placeholder="Enter Trainee Name" required></td>
			</tr>
			<tr>
				<th>Trainee Location</th>
				<td><input type="radio" name="traineeLocation" value="CHENNAI" required> Chennai
  					<input type="radio" name="traineeLocation" value="BANGALORE"> Bangalore
  					<input type="radio" name="traineeLocation" value="PUNE"> Pune
  					<input type="radio" name="traineeLocation" value="MUMBAI"> Mumbai
  				</td>
			</tr>
			<tr>
				<th>Trainee Domain</th>
				<td><select name="traineeDomain">
  						<option>Please Select</option>
  						<option value="JEE">JEE</option>
 						<option value="SAP">SAP</option>
  						<option value="HTML">HTML</option>
					</select>
  				</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="AddTrainee"/></td>
			</tr>
		</table>
	</form>
</body>
</html>