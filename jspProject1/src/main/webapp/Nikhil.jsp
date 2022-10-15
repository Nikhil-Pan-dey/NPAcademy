<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    
    <%!
     String Fname=null;
	 String Lname=null;
	 String email=null;
	 String contact=null;
	 long contact_no=0;
	 String Password=null;
	 String Confirm_Password=null;
	 Connection con=null;
	 PreparedStatement pst=null;
    %>
    
    <%
	    Fname = request.getParameter("Fname");
		Lname = request.getParameter("Lname");
		email = request.getParameter("Email");
		contact = request.getParameter("Contact");
		long contact_no = Long.parseLong(contact);
		Password = request.getParameter("Password");
		Confirm_Password = request.getParameter("Confirm_pass");  
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/npacademy","root","root");
		
		pst = con.prepareStatement("Insert into users values(?,?,?,?)");
		pst.setString(1, Fname);
		pst.setString(2, Lname);
		pst.setString(3, email);
		pst.setLong(4, contact_no);
		pst.executeUpdate();
		  
	 	pst = con.prepareStatement("Insert into user_password values (?,?)");
		pst.setString(1, email);
		pst.setString(2, Password);
		pst.executeUpdate();
		
		session.setAttribute("umail", email);
		session.setAttribute("FName", Fname);
		
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
	%>
</body>
</html>