<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>		
			section.container{
			 background-color:#dfe3ee;
			 position:absolute;
			 top:40%;
			 left:33%;
			 border-radius:3px;
             width: 30%;
             height: 30%;
             text-align: center;
             padding:5px 10px 20px 10px;
			}
            body{
                 background-color:azure; 
                }   
       	   }    
            a:hover{
            background-color:whitesmoke;
            border-radius: 2px;border-radius: 2px;
			}
         nav.p1{
                background-color: #3b5998; 
            }
            a{
                text-decoration: none;
            }
            .btn:hover{
            background-color:blueviolet;
        }
        .btn{
            background-color:#3369ff;
            border-radius: 6px;
            color:black;
            padding:6px;
            border-radius: 8px;
        }
        </style>
</head>
<body>

            <nav class="p1">
                    <div><h1 style="color:white"><b><center>Car Pool</center></b></h1></div>
                            <center>
                            <a style="color: black" href="index.jsp" target="_self"><b>Home</b></a> |
                            <a style="color: black" href="ContactUs.jsp" target="_blank"><b>Contact Us</b></a> |
                            <a style="color: black" href="AboutUs.jsp" target="_self"><b>About Us</b></a> 
                            </center><hr>   
                    </nav><br>
<section class="container"> <center><hr>
<h3><b>Welcome:<%=session.getAttribute("userid") %></b></h3>     <br>
<a href="UpdateProfile.jsp"><input class="btn" type="button" value="Update Profile"></a>&nbsp;
<a href="index.jsp"><input class="btn" type="button" value="Log Out"></a><hr>
</section>
</center>
</body>
</html>