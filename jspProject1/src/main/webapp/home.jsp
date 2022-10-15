<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NP Academy</title>
<link rel="stylesheet" href="NPAcademy\home.css">
</head>
<body>

	<%! 
	String mail;
	String FName;
	%>
	
	<% 
	mail = (String)session.getAttribute("umail");
	FName = (String)session.getAttribute("FName");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/npacademy","root","root");
	%>
	<header id="div1">
        <img src="image\icon1.jpg" alt="icon" id="img1">
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
    <div id="div2" class="div2_3">
        <p><span id="span1">Welcome to</span> <span id="span2"> NP Academy</span><br> 
            I am going to launch various courses for free. 
            In which I will provide lectures for physics chemistry and maths for CBSE board.
            Along with this I will also launch courses for programming languages such as c++, java, html, css, javascript etc.
            Here you will get notes also for all courses mentioned above. <br>

        </p>
        <a href="course.jsp" class="a">
        	<button id="button1">Go To Courses</button>
        </a>
    </div>

    <div id="div3" class="div2_3">
        <img src="image\download.jpg" alt="An Image of Girl Studying" id="img2">
    </div>
    <div id="div4">
        Courses To Start With 
    </div>
    
    <table id='table1' >
   		<tr>
    		<td> 
    			<div class='div5'>
				    <img  src='image/html_course_thumb.png' class="img3"> 
				    <span class = "span1">HTML Course</span> <br> <br>
				    This course is designed for beginner to advance concepts.
				    This series will cover all minor or major topics of HTML and CSS
				    <form action='AddToCart.jsp'>
				    <input type='hidden' name='course' value='HTML1'>
					<button type='submit' class='button2'>ADD TO CART</button>
				    </form>
			    </div> 
			 </td>
    		<td>  
    			<div class='div5'>
    				<img src='image/javascript_course_thumb.png' class="img3">
					    <span class="span1">JavaScript Course</span> <br> <br>
					    This course is designed for beginner to advance concepts.
					    This series will cover all minor or major topics of JavaScript
					    <form action='AddToCart.jsp'>
				    	<input type="hidden" name="course" value="JavaScript1">
				    	<button type="submit" class='button2'>ADD TO CART</button>
				    	</form>
				 </div>
			</td>
    		<td>
    			<div class='div5'>
    				<img  src='image/java_course_thumb.png' class="img3">
				    <span class = "span1">Java Course</span> <br> <br>
				    This course is designed for beginner to advance concepts.
				    This series will cover all minor or major topics of Java. It will also include Swing,AWT, 
				    File handling and other important aspects.
				    <br>
					<form action='AddToCart.jsp'>
				    <input type="hidden" name="course" value="Java1">
				    <button type="submit" class='button2' style="margin-top:46px;">ADD TO CART</button>
				    </form>
				 </div>
			</td>
	    </tr>
	 </table>
</div>

<a href="image">click me</a>

</body>
</html>