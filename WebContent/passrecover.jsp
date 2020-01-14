<%@page import="java.sql.*,project.*" %>
<% 
String userid=request.getParameter("email");
try
{
	Connection con=Connectionprovider.getCon();
	PreparedStatement pst=con.prepareStatement("select * from car_users where user_name=?");
	pst.setString(1,userid);
	
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("forgetpassword.jsp?msg=Your Password is:"+rs.getString(2));
	}
	else
	{
		response.sendRedirect("forgetpassword.jsp?msg=Incorrect Username");
	}
	con.close();
	
}
catch(Exception e)
{
System.out.println(e);
}
%>
             
    