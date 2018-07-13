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
 
public class LoginServlet extends HttpServlet {
	String url = "jdbc:mysql://localhost/scansytecdb?characterEncoding=utf8";
    private Connection con=null;
	
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String login = request.getParameter("login");
    	String pass = request.getParameter("password");
    	
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
			String name, pass1;
			while (rs.next()) {
				name = rs.getString("username");
				pass1 = rs.getString("password");
				if(name.equals(login) &&
						pass1.equals(pass)){
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
			System.out.println("Disconnected.");
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	
    }
    
    
}