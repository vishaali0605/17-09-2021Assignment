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

String uuser=request.getParameter("cusname");
Long mobno=Long.parseLong(request.getParameter("cusmob"));



try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String jdbcurl = application.getInitParameter("url");
	String username = application.getInitParameter("usename");
	String password = application.getInitParameter("passwordss");
	Connection con=DriverManager.getConnection(jdbcurl,username,password);
	String query="select*from customer where usname=? and mobno=?";
	PreparedStatement st=con.prepareStatement(query);

	st.setString(1,uuser);
	st.setLong(2, mobno);

	ResultSet rs=st.executeQuery();
	if(rs.next()){
		out.println("Welcome to the customer "+uuser+"<br>");
		out.println("Name of the customer: "+rs.getString(1)+"<br/> Username of the customer: "+rs.getString(2)+"<br/>Password of the customer: "+rs.getString(3)+"<br/> Mobile number of the customer: "+rs.getString(4)+"<br/>Address of the customer:"+rs.getString(5)+"<br/> Account number of the customer: "+rs.getLong(6)+"<br/> balance amount of the customer:"+rs.getString(7));
		}
	else{
		String message="Invalid username and password";
		response.sendRedirect("displayacc.jsp?msg="+message);
		
	}
	}
		catch (ClassNotFoundException | SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>