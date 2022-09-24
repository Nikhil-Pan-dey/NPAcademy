import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnection {
	static public Connection getconnecton() throws ClassNotFoundException, SQLException {
		Connection con;
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://ugklfhsz2j6devws:yNcvzGd0bCtVC8q2Veyo@bnjnbf0zxao8xxx0blqe-mysql.services.clever-cloud.com:3306/bnjnbf0zxao8xxx0blqe","ugklfhsz2j6devws","yNcvzGd0bCtVC8q2Veyo");
		return con;
		
	}
}
