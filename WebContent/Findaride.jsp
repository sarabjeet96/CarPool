<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>
            FindaRide
        </title>
        <style> 
                .btn{
                background-color:mediumslateblue;
                border-radius: 6px;
                color:white;
                position: relative;
        }    
                .btn:hover{
                background-color:blueviolet;
        }
                input[type=text]{
                    padding: 10px;
                    border-radius: 10px;
                }
                .container{
                position: absolute;
                top: 40%;
                left: 32%;
                }
                a:hover{
                background-color:whitesmoke;
                border-radius: 2px;
                }
                nav.p1{ position:static;
                background-color:#3b5998;
                }
            
                </style>
    </head>
    <body>
            <img src="" alt=""> 
<nav class="p1">
<h1 style="color:white"><b><center>Car Pool</center></b></h1>
        <center>
    <a style="color: black" href="index.jsp" target="_self"><b>Home</b></a> |
                            <a style="color: black" href="contactUs.jsp" target="_self"><b>Contact Us</b></a> |
                            <a style="color: black" href="AboutUs.jsp" target="_self"><b>About Us</b></a> 
        </center><hr>
</nav><br>
            <div class="container"> <center>
                    <h2 style="color: gray"><b>Find a Ride</b></h2>
                    <form action="search.jsp" method="post">
                    <label for="From"><b>From:</b></label>
                    <input type="text" name="source" placeholder="Enter your starting Point..">&nbsp;
                    <label for="destination"><b>To:</b></label>
                    <input type="text" name="destination" placeholder="Enter your destination.."><br><br>
                    <input class="btn" type="submit" value="Search">
                    </form>
                </div>
    </body>
</html>