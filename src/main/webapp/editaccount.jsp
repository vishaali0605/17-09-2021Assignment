<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Long num=Long.parseLong(request.getParameter("no"));
HttpSession a=request.getSession();
a.setAttribute("num",num);
System.out.println(num);
%>
<form action="editing.jsp">
<table>
<tr>
<td>
Enter Customer Name:
</td>
<td>
<input type="text" name="Cname"/>
</td>
</tr>
<tr>
<td>
Enter Customer Username:
</td>
<td>
<input type="text" name="Cuname"/>
</td>
</tr>
<tr>
<td>
Enter Customer password:
</td>
<td>
<input type="password" name="Cpwd"/>
</td>
</tr>
<tr>
<td>
Enter customer Mobile No:
</td>
<td>
<input type="text" name="Cmobile"/>
</td>
</tr>
<tr>
<td>
Enter Customer Address:
</td>
<td>
<textarea rows="5" cols="30" name="Cadd"></textarea>
</td>
</tr>
<tr>
<td>
Enter Customer Balance Amount:
</td>
<td>
<input type="text" name="Cbal"/>
</td>
</tr>
<tr>
<td>
<input type="submit" name="Submit"/><br><br>
<input type="reset" name="Reset"/>
</td></tr>
</table>
</form>

</body>
</html>