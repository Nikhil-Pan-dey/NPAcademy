<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NP Academy</title>
<link rel="stylesheet" href="NPAcademy/home.css">
<link rel="stylesheet" href="NPAcademy/signup.css">
</head>
<body>

	<%! 
	String mail;
	String FName;
	%>
	
	<% 
	mail = (String)session.getAttribute("umail");
	FName = (String)session.getAttribute("FName");
	
	%>
    <header id="div1">
        <img src="image/icon1.jpg" alt="icon" id="img1">

        <li id="li1">
            <a href="home.jsp" class="a">Home</a>
        </li>

        <li id="li2">
            <a href="course.jsp" class="a">Courses</a>
        </li>

        <li id="li3">
            <a href="cart.jsp" class="a">View Cart</a>
        </li>

        <li id="li4">
            <a href="contact.jsp" class="a">Contact Us</a>
        </li>
       <a href="login.jsp" class="a">
	            <button id="li5">
	            <% 
	            if(FName==null){
	            	out.print("Login");
	            }
	            else{
	            	out.println("<p style='font-size:15px; margin:0px;'>Welcome <br>"+FName+"</p>");
	            }
	            %>
	            </button>
	        </a>
        <!-- <li id="li5">
            <a href="login.html" class="a">Login/Signup</a>
        </li> -->
        
    </header>
    <div id="div2">
        <form action="Nikhil.jsp" method="Post" >
            <label for="First Name">First Name:</label> <br>
            <input type="text" placeholder="Enter Your First Name" name="Fname" required="required"> <br>

            <label for="Last Name">Last Name:</label> <br>
            <input type="text" placeholder="Enter Your Last Name" name="Lname"  required="required"> <br>

            <label for="Email Id">Email Id:</label> <br>
            <input type="text" placeholder="Enter Your Email Id" name="Email" required="required"> <br>

            <label for="Mobile No.">Mobile No:</label> <br>
            <input type="tel" placeholder="Enter Your Mobile No." name="Contact" required="required"> <br>

            <label for="Password">Password:</label> <br>
            <input type="password" name="Password"  required="required"> <br>

            <label for="Confirm Password">Confirm Password:</label> <br>
            <input type="password" style="margin-bottom: 10px;" name="Confirm_pass"  required="required"> <br>

            <a href="login.jsp" id="a2">Already have an account? Login here</a> <br>
            <input type="submit" name="" id="submit1">
            
        
        </form>
    </div>
</body>
</html>