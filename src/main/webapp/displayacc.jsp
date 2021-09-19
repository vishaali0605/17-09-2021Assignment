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
<form action="displayaccdetails.jsp" method="post">
<h3 align="center">Displaying Account Details</h3>
Enter customer username:<input type="text" name="cusname"/><br><br>
Enter customer mobile number:<input type="text" name="cusmob"/><br><br>
<input type="submit"/>
</form>
</body>
</html>