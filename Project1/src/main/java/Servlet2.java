

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Servlet2 extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
       
    public Servlet2() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("Email");
		String Password = request.getParameter("Pass");
		
		try {
			Connection con = MyConnection.getconnecton();
			PreparedStatement pst = con.prepareStatement("Select * from user_password where email=? and password=?");
			pst.setString(1, email);
			pst.setString(2, Password);
			ResultSet rs = pst.executeQuery();
			if(rs.next()==true) {
				RequestDispatcher rd = request.getRequestDispatcher("NPAcademy/Home2.html");
				rd.forward(request, response);
			}else {
				out.print("You entered wrong credentials");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
