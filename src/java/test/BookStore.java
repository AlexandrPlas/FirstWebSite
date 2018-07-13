package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
public class BookStore {
	private Connection con;
 
	public BookStore() {
		String name = "root";
		String password = "1234";
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost/scansytecdb?characterEncoding=utf8", name, password);
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
		String author, title, comment,price;

		while (rs.next()) {
			author = rs.getString("username");
			title = rs.getString("password");
			comment = rs.getString("email");
			price = rs.getString("phone");
			System.out.println("******************************");
			System.out.println("Author: " + author);
			System.out.println("Title: " + title);
			System.out.println("Price: " + price);
			System.out.println("comment: " + comment);
			System.out.println("******************************");
		}
	}
 
	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loading success!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		BookStore bookStore = new BookStore();
	}
}