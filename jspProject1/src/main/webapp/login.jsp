<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NP Academy</title>
<link rel="stylesheet" href="NPAcademy/login.css">
</head>
<body>
<%! 
	String mail;
	String FName;
%>
	
	<% 
  	mail = (String)session.getAttribute("umail");
	FName = (String)session.getAttribute("FName");
	if(mail!=null){
		RequestDispatcher rd = request.getRequestDispatcher("logout.jsp");
		rd.forward(request,response);
	}
	
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
    <div id="div2">
        <form action="Servlet2.jsp" method="Post" >
            <label for="Email Id">Email Id:</label> <br>
            <input type="email" placeholder="xyz@gmail.com" name = "Email"> <br>
            <label for="Password">Password:</label> <br>
            <input type="password" name="Pass"> <br>
            <br>
            <!-- <label for="forget password"></label> -->
            <a href="#" id="A1">Forget password</a>
            <a href="signup.jsp" id="a1">Create new account</a> <br>
            <!-- <button type="submit" name="" id="submit1" >submit</button> -->
            <input type= "submit" value= "Submit" id="submit1">
        </form>
    </div>
    <button type="submit"></button>
</body>
</html>