package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TheConnection
{
	public static Connection dbcon()
	{
		Connection con = null ;
		String driver = "com.ibm.db2.jcc.DB2Driver";
		String url = "jdbc:db2://localhost:50000/GETMSHOW";
		String username = "WarER";
		String pass = "m4a12683";
		
		try {
			Class.forName(driver);
			try {
				con = DriverManager.getConnection(url,username,pass);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con ;
	}

}
