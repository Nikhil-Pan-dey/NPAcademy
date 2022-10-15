import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.*;

public class filter1 implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain fc)
			throws IOException, ServletException {
		
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 
		 request.getParameter("Fname");
		 request.getParameter("Lname");
		 String email = request.getParameter("Email");
		 String contact = request.getParameter("Contact");
		 Long.parseLong(contact);
		 String Password = request.getParameter("Password");
		 String Confirm_Password = request.getParameter("Confirm_pass");
		 
		 try {
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/npacademy","root","root");
		 PreparedStatement pst = con.prepareStatement("Select email from users where email=?");
		 pst.setString(1, email);
		 ResultSet rs = pst.executeQuery();
		 if(rs.next()==false) {
			 if(Password.equals(Confirm_Password)) {
					fc.doFilter(request, response);
					}
					else {
						out.print("confirm password should be same");
						RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
						rd.include(request, response);
					}
		 }else {
			 out.print("Email already exists proceed to login");
			 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			 rd.include(request, response);
			 
		 }
			
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}

	}

}
