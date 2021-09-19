<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String m=request.getParameter("msg");
if(m!=null){
	out.print(m);
}
%>
<form action="./Loginadmin">
<h3 align="center">Admin Module and Employee login</h3>
Enter employee username:<input type="text" name="uname"/><br><br>
Enter employee Password:<input type="password" name="pwd"/><br><br>
<input type="submit"/><br><br>
New Employee Registeration?<a href="register.jsp">Click here</a>
</form>
</body>
</html>