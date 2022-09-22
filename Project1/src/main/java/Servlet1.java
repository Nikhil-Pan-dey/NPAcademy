import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.catalina.connector.Response;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Servlet1 extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		 resp.setContentType("text/html");
		 PrintWriter out = resp.getWriter();
		 
		 String Fname = req.getParameter("Fname");
		 String Lname = req.getParameter("Lname");
		 String email = req.getParameter("Email");
		 String contact = req.getParameter("Contact");
		 long contact_no = Long.parseLong(contact);
		 String Password = req.getParameter("Password");
		 String Confirm_Password = req.getParameter("Confirm_pass");
		 try {
		 Connection con = MyConnection.getconnecton();
		 PreparedStatement pst = con.prepareStatement("Select email from users where email=?");
		 pst.setString(1, email);
		 ResultSet rs = pst.executeQuery();
		 if(rs.next()==false) {
			 if(Password.equals(Confirm_Password)) {
					con = MyConnection.getconnecton();
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
					RequestDispatcher rd = req.getRequestDispatcher("NPAcademy/Home2.html");
					rd.forward(req, resp);
					}
					else {
						resp.sendRedirect("NPAcademy/signup3.html");
					}
		 }else {
			 RequestDispatcher rd1 = req.getRequestDispatcher("NPAcademy/signup2.html");
			 rd1.forward(req, resp);
		 }
//		 out.println("Fname is"+Fname);
//		 out.println("Lname is"+Lname);
//		 out.println("email is"+email);
//		 out.println("Contact is"+contact);
//		 out.println("password is"+Password);
//		 out.println("confirm password is"+Confirm_Password);
//		 
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
			e.printStackTrace();
		}
		 
	}
}


//public class Servlet1 implements Servlet {
//
//	@Override
//	public void destroy() {
//		System.out.println("Destroy method is invoked");
//
//	}
//
//	@Override
//	public ServletConfig getServletConfig() {
//		return null;
//	}
//
//	@Override
//	public String getServletInfo() {
//		return null;
//	}
//
//	@Override
//	public void init(ServletConfig config) throws ServletException {
//		System.out.println("init method is invoked");
//
//
//	}
//
//	@Override
//	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
//		System.out.println("service method is invoked");
//
//
//	}
//
//}
