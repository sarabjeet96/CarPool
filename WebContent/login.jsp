<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="project.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
<% 
String userid=request.getParameter("Name");
String pass=request.getParameter("Pass");
try
{
	Connection con=Connectionprovider.getCon();
	PreparedStatement pst=con.prepareStatement("select * from car_users where user_name=? and user_password=?");
	pst.setString(1,userid);
	pst.setString(2,pass);
	
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("userid", userid);
		response.sendRedirect("Welcome.jsp");
	}
	else
	{
		response.sendRedirect("index.jsp?msg=Incorrect Username or Password");
	}
	con.close();
	
}
catch(Exception e)
{
System.out.println(e);
}
%>
</body>
</html>