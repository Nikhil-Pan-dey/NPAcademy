<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NP Academy</title>
<link rel="stylesheet" href="NPAcademy/cart.css">
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
    
    <p style=" font-size: 35px; color: red; margin-left: 90px; margin-top:50px;"> Shopping Cart </p> 
    <% 
    if(mail==null){
    	out.print("<p>You need to login first! To access Cart</p>");
    	out.print("<a href='login.jsp' >Login</a>");
    }
    else{
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/npacademy","root","root");
    	
    }
    %>
    <table>
    <tr> 
    <td> </td> <td> </td> <td> </td> <td> </td>
    </tr>
    </table>
    
</body>
</html>