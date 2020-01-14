<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>UpdateProfile</title>
        <style>
        input[type=email],input[type=text],input[type=password],input[type=number]{
          padding: 3px 3px 3px 3px;
          border-radius: 5px;
        }
        .btn:hover{
            background-color:blueviolet;
        }
        body{
            background-image:url("");
            background-repeat: no-repeat;   
        }
        .btn{
            background-color:mediumslateblue;
            border-radius: 4px;
            color:white;
            position: relative;
        }
            a:hover{
           background-color:whitesmoke;
           border-radius: 2px; 
}
            .container{
            position: absolute;
            top:30%;
            right:37%;
            border-radius: 10px;
            background-color:dimgrey;
            padding: 15px 15px 15px 15px;
            }
            nav.p1{
                background-color: #3b5998; 
                text-decoration: none; 
            }
            a{
                text-decoration: none;
            }
        </style>
    </head>
<body bgcolor="#dfe3ee">
        <nav class="p1">
                <div><h1 style="color:white"><b><center>Car Pool</center></b></h1></div>
                        <center>
                        <a style="color: black" href="index.jsp" target="_self"><b>Home</b></a> |
                        <a style="color: black" href="contactUs.jsp" target="_blank"><b>Contact Us</b></a> |
                        <a style="color: black" href="AboutUs.jsp" target="_blank"><b>About Us</b></a> 
                        </center><hr>   
                </nav><br>
   <%@page import="java.sql.*,project.*" %>
                <% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            	String userid=(String)session.getAttribute("userid");
            	
            	Connection con=Connectionprovider.getCon();
            	PreparedStatement pst=con.prepareStatement("select * from car_users where user_name=?");
            	pst.setString(1,userid);
            	ResultSet rs=pst.executeQuery();
            	if(rs.next())
            	{
           
            	
            %>
                
                
    <center> <table class="container">
    <form action="update_profile.jsp" method="post">
            <div>
                <h2><b>Update your Profile</b></h2>
                    
                     <tr>
                   <td><label for="pass" >Username:</label></td>
                  <td><input type="text" name="Name" value="<%=rs.getString(1)%>" readonly="readonly"></td>
                </tr>
                    <tr>
                   <td><label for="pass" >Password:</label></td>
                  <td><input type="text" name="Pass" placeholder="Enter your Password.." value="<%=rs.getString(2)%>"></td>
                </tr>
                <tr>
                  <td><label for="Email">Email:</label></td>
                 <td><input type="text" name="Email" placeholder="Example@gmail.com.." value="<%=rs.getString(3)%>"></td>
                </tr>
                <tr>
                <td><label for="Number">Mob. Number:</label></td>
                 <td><input type="number" name="Number"placeholder="Enter your Mobile number" value="<%=rs.getString(4)%>"></td><br>
                </tr>
                <tr>
                    <td><label for="Carno">Car No:</label></td>
                    <td><input type="text" name="Carno" placeholder="Car Number.." value="<%=rs.getString(7)%>"></td>
                  </tr>
                  <tr>
                    <td>
                      <label for="carmodel">Car Model</label>
                    </td>
                    <td>
                      <input type="text" name="Carmodel" placeholder="Car Model" value="<%=rs.getString(8)%>">
                    </td>
                  </tr>
                  <tr>
                      <td>
                        <label>Source:</label>
                        </td>
                    <td><input type="text" name="Source" placeholder="From.." value="<%=rs.getString(9)%>">
                       </td> 
                    
                    </tr>
                  
                  <tr>
                      <td>
                        <label>Destination:</label></td>
                        <td><input type="text" name="Destination" placeholder="To.." value="<%=rs.getString(10)%>">
                        </td>
                    </tr>
                  
                  
                  <tr>
                      <td>
                        <label>Out Time:</label></td>
                        <td><input type="number" name="Outtime" placeholder="Departure time.." value="<%=rs.getString(11)%>">
                        </td>
                    </tr>
                  
                  
                  <tr>
                      <td>
                        <label>In Time:</label></td>
                        <td><input type="number" name="Intime" placeholder="Arrival time.." value="<%=rs.getString(12)%>">
                        </td>
                    </tr>
                  
                  
                       
                                  <tr>
                   
                        <td>
                          <label for="Age">Age:</label></td>
                          <td><input  value="<%=rs.getString(5)%>" style="width:66%;" name="Age" type="number" placeholder="Enter your Age...">
                        </td>
                      </tr>  
            
             <tr>
               <td><input  style="left: 15px;top: 8px;" type="submit" class="btn" value="Update">&nbsp;&nbsp;
                   <input style="left: 40px;top: 8px;"type="button" class="btn" value="Cancel" ></td>
            </tr>    
            </center>
            </div>
         </form>
     </table>
</center>    
<%} %>
</body>
</html>
    