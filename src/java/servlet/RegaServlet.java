package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import javax.servlet.RequestDispatcher;

public class RegaServlet extends HttpServlet{
	String url = "jdbc:mysql://localhost/scansytecdb?characterEncoding=utf8";
    private Connection con=null;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String name = request.getParameter("name");
    	String email = request.getParameter("email");
    	String phone = request.getParameter("phone");
    	String dateofbirth = request.getParameter("dateofbirth");
    	String address = request.getParameter("address");
    	String pass1 = request.getParameter("pass1");
    	
    	try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loading success!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    	try {
    		con = DriverManager.getConnection(url, "root", "1234");
			System.out.println("Connected.");
			Statement st = con.createStatement();
			String query = "select * from loginuser";
			ResultSet rs = st.executeQuery(query);
			String name2; 
			boolean fl1=true;
			while (rs.next()) {
				name2 = rs.getString("username");
				if(name2.equals(name)){fl1=false;
			}}
			if(fl1){
			String sqlQuery = "INSERT INTO  loginuser (username, password) "
	                + "VALUES ('"+name+"','"+ pass1+"')";
			st.executeUpdate(sqlQuery);
			}
			System.out.println("Disconnected.");
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	
    }
}
