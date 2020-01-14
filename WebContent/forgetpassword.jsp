<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            forget Password
        </title>
            <style>
            input[type=text]{
            padding: 4px;
            border-radius: 3px;
            }
            body{
            background-image:url("");
            background-repeat: no-repeat;   
        }
        .btn:hover{
            background-color:blueviolet;
        }
        .btn{
            background-color:mediumslateblue;
            border-radius: 4px;
            color:white;
        }
                a:hover{
                background-color:whitesmoke;
                border-radius: 4px;
                }
                section.s{
                    background-color: azure;
                    width: 40%;
                    height: 50%;
                    text-align: center;
                    padding:5px 10px 20px 10px;
                }
                body{
                 background-color:#dfe3ee; 
                }
                nav.p1{
                background-color:#3b5998;
                }
                a{
                 text-decoration: none;
                }  
            </style>
    </head>
    <body>
            <nav class="p1">
                <div><h1 style="color:white"><b><center>City Portal</center></b></h1></div>
                    <center>
                  <a style="color: black" href="index.jsp" target="_self"><b>Home</b></a> |
                            <a style="color: black" href="ContactUs.jsp" target="_blank"><b>Contact Us</b></a> |
                            <a style="color: black" href="AboutUs.jsp" target="_blank"><b>About Us</b></a> 
                              </center><hr>   
            </nav><br>
           		
            <center><section class="s">
                <form action="passrecover.jsp" method="post" target="_self">
                    <h1><b>Find Your Account</b></h1><hr>
                    <p>Please enter your username to search for your account.</p><br>
                    <input type="text" name="email" placeholder="username..." required><br><br><br><hr>
               	 	<input type="submit" class="btn" value="search"></a>&nbsp;
                    <input type="button" class="btn" value="cancel">
                		<%
							String msg=request.getParameter("msg");
							if(msg!=null)
							out.println(msg);
						%>
                </form>
            </center></section>
    </body>
</html>