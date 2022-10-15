<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
	String course_id;
	String mail;
	PreparedStatement ps;
%>

<%
	course_id =(String)request.getParameter("course");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/npacademy","root","root");
	mail = (String)session.getAttribute("umail");
	if(mail==null){
		out.println("<script type='text/javascript'>alert('You need to login to use cart');</script>");
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
	    rd.include(request,response);
	}else{
		ps = con.prepareStatement("select * from cart where email = ? and course_id =?");
		ps.setString(1, mail);
		ps.setString(2, course_id);
		ResultSet rs = ps.executeQuery();
		if(rs.next()==true){
			out.println("<script type='text/javascript'>alert('Already Added');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		    rd.include(request,response);
		}else{
			ps = con.prepareStatement("insert into cart values(?,?)");
			ps.setString(1, mail);
			ps.setString(2, course_id);
			ps.executeUpdate();
			out.println("<script type='text/javascript'>alert('Added To Cart');</script>");
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		    rd.include(request,response);
		}
		
	}
%>


<% 
/*
	course_id =(String)request.getParameter("course");
	session.setAttribute("course_id",course_id);
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/npacademy","root","root");
	PreparedStatement ps = con.prepareStatement("insert into cart values(?,?)");
	ps.setString(1, mail);
	ps.setString(2, course_id);
	ps.executeUpdate();
	out.println("<script type='text/javascript'>alert('Added To Cart');</script>");
	RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
    rd.forward(request,response);
    */
%>
</body>
</html>