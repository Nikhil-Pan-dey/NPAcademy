<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NP Academy</title>
<link rel="stylesheet" href="NPAcademy/contact.css">

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
        <img src="image/icon1.jpg" alt="icon10" id="img1">  
        <!-- doubt -->

        <li id="li1">
            <a href="home.jsp" class="a">Home</a>
        </li>

        <li id="li2">
            <a href="course.jsp" class="a">Courses</a>
        </li>

        <li id="li3">
            <a href="Cart.jsp" class="a">View Cart</a>
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
	<h3>Hello Everyone, My name is Nikhil <br>
	You can contact me at 9891957689 <br>
	or can mail me at nikhilpandey515@gmail.com <br>
	follow me on instagram nikhilpandey515
	</h3>
	<iframe src="https://www.google.com/maps/d/embed?mid=1B1lAsUpYFg82Je7XN1_cxRPf1UU&hl=en_US&ehbc=2E312F" width="640" height="480"></iframe>

</body>
</html>