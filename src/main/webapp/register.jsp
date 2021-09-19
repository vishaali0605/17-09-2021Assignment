<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 align="center">Admin Insertion Of Employees</h3>
<form action="database.jsp" method="post">
<table>
<tr>
<td>
Enter employee name:
</td>
<td>
<input type="text" name="empname"/>
</td>
</tr>
<tr>
<td>
Enter employee user name:
</td>
<td>
<input type="text" name="uname"/>
</td>
</tr>
<tr>
<td>
Enter employee password:
</td>
<td>
<input type="password" name="pass"/>
</td>
</tr>
<tr>
<td>
<input type="submit" name="sub"/><br><br>
<input type="reset" name="res"/>
</td></tr>
</table>
</form>
</body>
</html>