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
	PreparedStatement pst=con.prepareStatement("update car_users set USER_PASSWORD=?,USER_EMAIL=?,USER_MOBILE=?,USER_AGE=?,USER_GENDER=?,USER_CARNO=?,USER_CARMODEL=?,USER_SOURCE=?,USER_DESTINATION=?,USER_OUTTIME=?,USER_INTIME=?  where USER_NAME=?");
	
	pst.setString(1,pass);
	pst.setString(2,email);
	pst.setString(3,mob);
	pst.setString(4,age);
	pst.setString(5,gender);
	pst.setString(6,carno);
	pst.setString(7,model);
	pst.setString(8,source);
	pst.setString(9,destination);
	pst.setString(10,outtime);
	pst.setString(11,intime);
	pst.setString(12,name);
	
	pst.executeUpdate();
	con.close();
	response.sendRedirect("UpdateProfile.jsp?msg=Profile Updated");
}
catch(Exception e)
{
	response.sendRedirect("Update_Profile.jsp?msg="+e.getMessage());
	
}
%>
</body>
</html>