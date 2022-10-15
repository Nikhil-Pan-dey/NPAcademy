<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NP Academy</title>
<link rel ="stylesheet" href='NPAcademy/courses.css'>

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
	<table id='table1' >
   		<tr>
    		<td> 
    			<div class='div5'>
				    <image  src='image/html_course_thumb.png' class="img3"> </img> 
				    <span class = "span1">HTML Course</span> <br> <br>
				    This course is designed for beginner to advance concepts.
				    This series will cover all minor or major topics of HTML and CSS
				    <a href='#'>
				    <button class='button2'>ADD TO CART</button>
				    </a>
			    </div> 
			 </td>
    		<td>  
    			<div class='div5'>
    				<img src='image/javascript_course_thumb.png' class="img3"> </img>
					    <span class="span1">JavaScript Course</span> <br> <br>
					    This course is designed for beginner to advance concepts.
					    This series will cover all minor or major topics of JavaScript
					    <a href='#'>
					    <button class='button2'>ADD TO CART</button>
					    </a>
				 </div>
			</td>
    		<td>
    			<div class='div5'>
    				<img  src='image/java_course_thumb.png' class="img3"> </img> 
				    <span class = "span1">Java Course</span> <br> <br>
				    This course is designed for beginner to advance concepts.
				    This series will cover all minor or major topics of Java. It will also include Swing,AWT, 
				    File handling and other important aspects.
				    <br>
				    <a href='#'>
				    <button class='button2' id='button2id'>ADD TO CART</button>
				    </a>
				 </div>
			</td>
	    </tr>
	 </table>
</body>
</html>