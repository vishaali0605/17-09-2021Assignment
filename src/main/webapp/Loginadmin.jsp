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

String uuser=request.getParameter("uname");
String ppass=request.getParameter("pwd");



try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String jdbcurl = application.getInitParameter("url");
	String username = application.getInitParameter("usename");
	String password = application.getInitParameter("passwordss");
	Connection con=DriverManager.getConnection(jdbcurl,username,password);
	String query="select*from employee where uuser=? and  ppass=?";
	PreparedStatement st=con.prepareStatement(query);

	st.setString(1,uuser);
	st.setString(2, ppass);

	ResultSet rs=st.executeQuery();
	if(rs.next())
	{
		out.println("welcome to "+uuser);	
		response.sendRedirect("employee.jsp");
	}
	
	else {
		String message="invalid username and password";
		response.sendRedirect("index.jsp?msg="+message);
		
	}

} catch (ClassNotFoundException | SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>