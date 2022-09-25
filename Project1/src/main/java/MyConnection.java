import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	static public Connection getconnecton(){
		
		Connection con = null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://upg7iw6sbso9rrci:sw3oYx152QKHZKPeZLVw@bqbi412k797vxk1korpl-mysql.services.clever-cloud.com:3306/bqbi412k797vxk1korpl","upg7iw6sbso9rrci","sw3oYx152QKHZKPeZLVw");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
}
