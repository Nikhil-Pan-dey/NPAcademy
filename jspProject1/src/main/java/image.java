

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FilterInputStream;
import java.io.IOException;

public class image extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public image() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("image/jpg");
		ServletOutputStream sout = response.getOutputStream();
		FileInputStream fin = new FileInputStream("C:\\Users\\Admin\\Pictures\\image.jpg");
		BufferedInputStream bin = new BufferedInputStream(fin);
		BufferedOutputStream bout = new BufferedOutputStream(sout);
		int ch=0;
		while((ch=bin.read())!=-1) {
			bout.write(ch);
		}
		
	}


}
