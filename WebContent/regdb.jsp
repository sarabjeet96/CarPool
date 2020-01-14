<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page  import="java.sql.*,project.*"%>
<% 
String name=request.getParameter("Name");
String pass=request.getParameter("Pass");
String email=request.getParameter("Email");
String mob=request.getParameter("Number");
String carno=request.getParameter("Carnumber");
String model=request.getParameter("Carmodel");
String source=request.getParameter("Source");
String destination=request.getParameter("Destination");
String outtime=request.getParameter("Outtime");
String intime=request.getParameter("Intime");
String age=request.getParameter("Age");
String gender=request.getParameter("Gender");

try
{
	Connection con=Connectionprovider.getCon();
	PreparedStatement pst=con.prepareStatement("insert into car_users values(?,?,?,?,?,?,?,?,?,?,?,?)");
	pst.setString(1,name);
	pst.setString(2,pass);
	pst.setString(3,email);
	pst.setString(4,mob);
	pst.setString(5,age);
	pst.setString(6,gender);
	pst.setString(7,carno);
	pst.setString(8,model);
	pst.setString(9,source);
	pst.setString(10,destination);
	pst.setString(11,outtime);
	pst.setString(12,intime);
	pst.executeUpdate();
	con.close();
	response.sendRedirect("Newuser.jsp?msg=You Are Registered");
}
catch(Exception e)
{
	response.sendRedirect("Newuser.jsp?msg="+e.getMessage());
	
}
%>
</body>
</html>