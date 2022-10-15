<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NP Academy</title>
</head>
<body>

<%! 
String email;
String Password;
String Fname;
Connection con;
PreparedStatement pst;
ResultSet rs1;
ResultSet rs2;
%>

<%
	email = request.getParameter("Email");
	Password = request.getParameter("Pass");
	
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/npacademy","root","root");
	
	pst = con.prepareStatement("Select * from user_password where email=? and password=?");
	pst.setString(1, email);
	pst.setString(2, Password);
	rs1 = pst.executeQuery();
	if(rs1.next()==true) {

		pst = con.prepareStatement("Select * from users where email=?");
		pst.setString(1, email);
		rs2 = pst.executeQuery();
		
		while(rs2.next()){
			Fname = rs2.getString(1);
			session.setAttribute("FName", Fname);
			session.setAttribute("umail", email);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
	}else {
		out.println("<script type='text/javascript'>alert('You entered wrong credentials');</script>");
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.include(request, response);
	}
%>

</body>
</html>

		
		