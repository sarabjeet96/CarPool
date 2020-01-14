<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            <h1>
                Contact Us
            </h1>
        </title>
        <style>
           input[type=email],input[type=text], select, textarea {
            width: 100%;
            padding: 4px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
            }
            input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 8px 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            }

            input[type=submit]:hover {
            background-color: #45a049;
            }
            div.container{
                position: relative;
                left: 35%;
                width: 25%;
                height: 83%;
                border-radius: 10px;
                background-color: #f2f2f2;
                padding: 20px;
            }
            body{
            background-image:url("");
            background-repeat: no-repeat;   
        }    
            a:hover{
            background-color:whitesmoke;
            border-radius: 2px;
        }           
            nav.p1{
                background-color: #3b5998; 
            }
            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
            <nav class="p1">
                    <div><h1 style="color:white"><b><center>Car Pool</center></b></h1></div>
                            <center>
                              <a style="color: black" href="index.jsp" target="_self"><b>Home</b></a> |
                            <a style="color: black" href="ContactUs.jsp" target="_self"><b>Contact</b></a> |
                            <a style="color: black" href="AboutUs.jsp" target="_blank"><b>About Us</b></a> 
                          </center><hr>   
                    </nav><br> 
                    <div class="container"><center>  
                        <form id="" action="">
                            <center><h3><b>Contact Us</b></h3></center><hr>
                            <label for="Name">First Name</label>
                            <input type="text" id="Name" name="Name" placeholder="Enter Your name..." required ><br>
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" placeholder="Example@gmail.com"  required ><br>
                            <label for="subject">Subject</label>
                            <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
                            <input type="submit" value="Submit">
                        </form></center>
                    </div>
    </body>
</html>