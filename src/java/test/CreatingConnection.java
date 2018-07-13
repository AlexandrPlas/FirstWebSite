package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CreatingConnection {
	public static void main(String[] args) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loading success!");
            String url = "jdbc:mysql://localhost/scansytecdb?characterEncoding=utf8";
            String name = "root";
            String password = "1234";
            try {
                Connection con = DriverManager.getConnection(url, name, password);
                System.out.println("Connected.");
                con.close();
                System.out.println("Disconnected.");
            } catch (SQLException e) {
                e.printStackTrace();
            }
 
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
