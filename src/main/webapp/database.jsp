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
String employeename=request.getParameter("empname");
String uuser=request.getParameter("uname");
String ppass=request.getParameter("pass");

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	String jdbcurl = application.getInitParameter("url");
	String username = application.getInitParameter("usename");
	String password = application.getInitParameter("passwordss");
	Connection con=DriverManager.getConnection(jdbcurl,username,password);
	String query="insert into employee values(?,?,?)";
	PreparedStatement st=con.prepareStatement(query);
	st.setString(1, employeename);
	st.setString(2,uuser);
	st.setString(3, ppass);
	int i=st.executeUpdate();
	if(i>0)
	{
		out.println("successfull insertion");
		
	}
	else {
		out.println("Invalid username and password");
		
	}

} catch (ClassNotFoundException | SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>