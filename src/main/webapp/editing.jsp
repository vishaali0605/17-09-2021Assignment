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
HttpSession b=request.getSession(false);
Long no=(Long)(b.getAttribute("num"));
System.out.println(no);

String name=request.getParameter("Cname");
String usname=request.getParameter("Cuname");
String papass=request.getParameter("Cpwd");
Long mobno=Long.parseLong(request.getParameter("Cmobile"));
String address=request.getParameter("Cadd");
Long balanceamt=Long.parseLong(request.getParameter("Cbal"));


try {
Class.forName("com.mysql.cj.jdbc.Driver");

String jdbcurl = application.getInitParameter("url");
String username = application.getInitParameter("usename");
String password = application.getInitParameter("passwordss");
Connection con=DriverManager.getConnection(jdbcurl,username,password);
String query="Update customer set name=?,usname=?,password=?,mobno=?,address=?,balanceamount=? where accno=?";
PreparedStatement st=con.prepareStatement(query);
st.setString(1,name);
st.setString(2, usname);
st.setString(3, papass);
st.setLong(4, mobno);
st.setString(5, address);
st.setLong(6, balanceamt);
st.setLong(7,no);
int i=st.executeUpdate();
if(i>0)
{
	out.println("Updated Successfully");

}
else {
out.println("Customer Cannot be Updated");

}


} catch (ClassNotFoundException | SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();} %>
</body>
</html>