package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionMgr {

	private static final String URL =
		    "jdbc:mysql://localhost:3306/jejugroup_test?serverTimezone=UTC";

		private static final String USER = "jejugroup_test";
		private static final String PASSWORD = "만들때설정한비밀번호";
		
		public static Connection getConnection() {
				try {
						return DriverManager.getConnection(URL, USER, PASSWORD);
				} catch (SQLException e) {
		        e.printStackTrace();
						return null;
        }
    }
}