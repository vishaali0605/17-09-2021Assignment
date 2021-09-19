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
String query="insert into customer(name,usname,password,mobno,address,balanceamount) values(?,?,?,?,?,?)";
PreparedStatement st=con.prepareStatement(query);
st.setString(1,name);
st.setString(2, usname);
st.setString(3, papass);
st.setLong(4, mobno);
st.setString(5, address);
st.setLong(6, balanceamt);
int i=st.executeUpdate();
if(i>0)
{
out.println("Successfull Insertion");

}
else {

out.println("Account not created sucessfully....Tryy Again!!!");

}

} catch (ClassNotFoundException | SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
%>
</body>
</html>