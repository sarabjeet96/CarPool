<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css;" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <title>Car Pool</title>
    <style>
        p{
        color: azure;
        }
        input[type=text]{
            padding: 2px 2px 2px 2px;
            border-radius: 3px;
        }
        .f{
            color: beige;
            float:left;
        }
        .btn:hover{
            background-color:blueviolet;
        }
        .btn{
            background-color:mediumslateblue;
            border-radius: 6px;
            color:white;
            padding:4px;
            border-radius: 5px;
        }
    a:hover{
    background-color:whitesmoke;
    border-radius: 2px;
    }
    nav.p1{ position:static;
    background-color:#3b5998;
    }
     a{
         text-decoration: none;
     }   
    div.left{ position: absolute;;
    width: 35%; 
    top: 30%;
    padding: 10px 5px 10px 10px;
    float: left;}

    div.right{position: absolute;
    border-radius: 10px;
    left:70%;
    top: 40%;
    width: 20%;
    height:46%; 
    background-color:dimgray;
    padding: 10px 5px 14px 14px;    
    float: right;
    }
    </style>
</head>
<body background="file:///C:/Users/pc/Desktop/MyProjectNew/CarPool/Images/CP1.jpg"> 
<nav class="p1">
<h1 style="color:white"><b><center>Car Pool</center></b></h1>
        <center>
        <a style="color: black" href="index.jsp" target="_self"><b>Home</b></a> |
        <a style="color: black" href="ContactUs.jsp" target="_blank"><b>Contact Us</b></a> |
        <a style="color: black" href="AboutUs.jsp" target="_blank"><b>About Us</b></a> 
        </center><hr>
</nav><br><center>
    <a href="Findaride.jsp"><input class="btn" type="button" value="Find a Ride"></a>
    <a href="Newuser.jsp"><input style="position: absolute;left: 90%; " class="btn" type="button" value="Sign in"></a>
</center>
<div class="left">
    <p>
    <h1 style="text-transform:uppercase;color:darkslategray;"><b>Car Pool</b></h1>    
<p><b>Car Pool</b> is a web based project that provides various information
      about car owners and their cars so that peoples can pool with others
      going for same path or destination.</p>

<p>There are various advantages of this project such as:</p>

<p>Reduce traffic from the road which is a very serious problem now days.</p>
<p>Reduce Pollution which is dangerous to our health.</p>
<p>Save the money as well.</p>  
</p>
</div>
<div class="right">
        <form action="login.jsp">
                <div>
                <center><h2 style="color:bisque;"><b>Login Form</b></h2><hr></center>
                <center>
                        <label for="uname"><b>Username:</b></label>    
                        <input type="text" name="Name" placeholder="Username.." required><br><br>
                        <label for="Password" ><b>Password:</b></label>
                        <input type="password" name="Pass" placeholder="Password.." required><br><br>
                           
                </center>
                <center>
                       <input type="submit" class="btn" value="Login">&nbsp;&nbsp;
                       <input type="button" class="btn" value="Cancel" >   
                </center>
            </div>
           	 			<%
							String msg=request.getParameter("msg");
							if(msg!=null)
							out.println(msg);
						%>
             </form>
             <div class="f">
    <center><span style="position: absolute;top:88%;">FORGET<a style="color:black;" href="forgetpassword.jsp">&nbsp;password?</a></span><br><br>
</center>
</div>
</div>
</form>    
</body>
</html>