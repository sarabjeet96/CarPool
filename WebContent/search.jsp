<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search path between source and destination</title>
<link rel="stylesheet" type="text/css" href="style2.css"/>
</head>
<body>
 
<div>
this is search page when user gives us source and destination 
</div>
<table>
<tr>
<th>Name</th>
<th>Email</th>
<th>Contact</th>
</tr>
<%@ page  import="java.sql.*,project.*"%>
<% 
try
{
	String s=request.getParameter("source"); 
	String d=request.getParameter("destination");
	
	
	Connection con=Connectionprovider.getCon();
	PreparedStatement pst=con.prepareStatement("select * from car_users where user_source=? and user_destination=?");
	pst.setString(1,s);
	pst.setString(2,d);
	
	ResultSet rs=pst.executeQuery();
	boolean b=false;
	while(rs.next())
	{
		b=true;
		%>
		
		<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		</tr>
		<%
		
	}
	if(b==false)
	{
	out.println("Record not found");
	}
}
catch(Exception e)
{
	response.sendRedirect("Findaride.jsp?msg="+e.getMessage());
	
}
%>
</table>
</body>
</html>