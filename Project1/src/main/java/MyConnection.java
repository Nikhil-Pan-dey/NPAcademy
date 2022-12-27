<<<<<<< HEAD
import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	static public Connection getconnecton(){
		
		Connection con = null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://ugklfhsz2j6devws:yNcvzGd0bCtVC8q2Veyo@bnjnbf0zxao8xxx0blqe-mysql.services.clever-cloud.com:3306/bnjnbf0zxao8xxx0blqe","ugklfhsz2j6devws","yNcvzGd0bCtVC8q2Veyo");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
}
=======
import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	static public Connection getconnecton(){
		
		Connection con = null;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://ugklfhsz2j6devws:yNcvzGd0bCtVC8q2Veyo@bnjnbf0zxao8xxx0blqe-mysql.services.clever-cloud.com:3306/bnjnbf0zxao8xxx0blqe","ugklfhsz2j6devws","yNcvzGd0bCtVC8q2Veyo");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
}
>>>>>>> parent of fc9b14f (updating mysql connection)
