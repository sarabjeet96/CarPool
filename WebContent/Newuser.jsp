<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NewUser</title>
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
            position:static;
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
                        <a style="color: black" href="contactUs.jsp" target="_blank"><b>Contact</b></a> |
                        <a style="color: black" href="AboutUs.jsp" target="_blank"><b>About Us</b></a> 
                        </center><hr>   
                </nav><br>
               
<center> <table class="container">
    <form action="regdb.jsp" method="post">
            <div>
                <h2><b>Registration Form</b></h2>
                <tr>
                   <td><label for="Name">Name:</label></td>
            
                  <td><input type="text" name="Name" placeholder="Enter Your Name.."></td>
                </tr>
                <tr>
                   <td><label for="pass" >Password:</label></td>
                  <td><input type="password" name="Pass" placeholder="Enter your Password.."></td>
                </tr>
                <tr>
                  <td><label for="Email">Email:</label></td>
                 <td><input type="text" name="Email" placeholder="Example@gmail.com.." ></td>
                </tr>
                <tr>
                <td><label for="Number">Mob. Number:</label></td>
                 <td><input type="number" name="Number"placeholder="Enter your Mob. no."></td><br>
                </tr>
                <tr>
                    <td><label for="Carno">Car No:</label></td>
                    <td><input type="text" name="Carno" placeholder="Enter your Car No.."></td>
                  </tr>
                  <tr>
                    <td>
                      <label for="carmodel">Car Model</label>
                    </td>
                    <td>
                      <input type="text" name="Carmodel" placeholder="Enter your Car Model..">
                    </td>
                  </tr>
                  <tr>
                      <td>
                        <label>Source:</label>
                        </td>
                    <td><input type="text" name="Source" placeholder="From..">
                       </td> 
                    
                    </tr>
                  
                  <tr>
                      <td>
                        <label>Destination:</label></td>
                        <td><input type="text" name="Destination" placeholder="To..">
                        </td>
                    </tr>
                  
                  
                  <tr>
                      <td>
                        <label>Out Time:</label></td>
                        <td><input type="number" name="Outtime" placeholder="Departure time(AM/PM)..">
                        </td>
                    </tr>
                  
                  
                  <tr>
                      <td>
                        <label>In Time:</label></td>
                        <td><input type="number" name="Intime" placeholder="Arrival time(AM/PM)..">
                        </td>
                    </tr>
                  
                  
                  <tr>
                      <td>
                        <label for="Gender">Gender:</label></td>
                        <td><input type="radio" name="Gender"value="Male">Male
                        <input type="radio" name="Gender"value="Female">Female
                      </td>
                    </tr>
                  
                  
                  
                    <tr>
                   
                        <td>
                          <label for="Age">Age:</label></td>
                          <td><input style="width:66%;" name="Age" type="number" placeholder="Enter your Age...">
                        </td>
                      </tr>  
            
             <tr>
               <td><input  style="left: 15px;top: 8px;" type="submit" class="btn" value="Register">&nbsp;&nbsp;
                   <input style="left: 40px;top: 8px;"type="button" class="btn" value="Cancel" ></td>
            </tr>    
            </center>
            </div>
         </form>
     </table>
</center>    
<section>
 			<% 
            	String msg=request.getParameter("msg");
            	if(msg!=null)
            	out.println(msg);
            %>
</section>
</body>
</html>
    