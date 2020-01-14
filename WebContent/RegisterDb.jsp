<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegisterDb</title>
</head><body>

<%@ page import="java.sql.*,project.*"%>
 <% try { 
	 	String u=request.getParameter("user"); 
 		String e=request.getParameter("email"); 
 		Connection con=Connectionprovider.getCon(); 
 		PreparedStatement pst=con.prepareStatement("select password from users where username=? and email=?"); 
 		pst.setString(1,u);
 		pst.setString(2,e); 
 		ResultSet rs=pst.executeQuery(); 
 		if(rs.next()) 
 		{ 
 			response.sendRedirect("forgotpass.jsp?msg=Your Password is:"+rs.getString(1));
 		}else 
 		{ 
 			response.sendRedirect("forgotpass.jsp?msg=Invalid username/email"); 
 			} 
 		}catch(Exception e) { 
 			response.sendRedirect("newuser.jsp?msg="+e.getMessage()); 
 		} %> 
</body>
</html>
