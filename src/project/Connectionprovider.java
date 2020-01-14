package project;
import java.sql.*;
public class Connectionprovider {
public static Connection getCon(){
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/carpool","root","1234");
		return con;
	}
	catch(Exception e)
	{
		System.out.println(e);
		return null;	}
}
}
