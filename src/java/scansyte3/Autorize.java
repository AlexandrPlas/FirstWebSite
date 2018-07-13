package scansyte3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
public class Autorize {
	private Connection con;
 
	public Autorize() {
        String url = "jdbc:mysql://localhost/scansytecdb?characterEncoding=utf8";
		String name = "root";
		String password = "1234";
		try {
			con = DriverManager.getConnection(url, name, password);
			System.out.println("Connected.");
			Statement st = con.createStatement();
			String query = "select * from loginuser";
			ResultSet rs = st.executeQuery(query);
			printResults(rs);
			System.out.println("Disconnected.");
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
 
	private void printResults(ResultSet rs) throws SQLException {
		String name, pass;
		while (rs.next()) {
			name = rs.getString("username");
			pass = rs.getString("password");
			if(name.equals("Admin") &&
					pass.equals("Admin")){
			System.out.println("User Authenticated");
			System.out.println("******************************");
			System.out.println("User: " + name);
			System.out.println("Password: " + pass);
			System.out.println("******************************");
			}
		}
	}
 
	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loading success!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Autorize Autor = new Autorize();
	}
}