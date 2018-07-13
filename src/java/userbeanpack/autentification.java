package userbeanpack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import userbeanpack.userbean1;

public class autentification {
	private boolean result = false;
	
	public boolean getResult(){
		return result;
	}
	public void setResult(boolean result){
		this.result=result;
	}
	
	public static boolean LogAccess(userbean1 User, HttpServletRequest request){
		String login = request.getParameter("username");
    	String pass = request.getParameter("password");
    	boolean res = false;
    	
    	try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    	try {
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/scansytecdb?characterEncoding=utf8", "root", "1234");
    		Statement st = con.createStatement();
			String query = "select * from loginuser";
			ResultSet rs = st.executeQuery(query);
			String name, pass1;
			while (rs.next()) {
				name = rs.getString("username");
				pass1 = rs.getString("password");
				if(name.equals(login) &&
						pass1.equals(pass)){
					res=true;
				}
			}
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return res;
	}
   
	public static boolean regAccess(userbean1 User, HttpServletRequest request){
		String name = request.getParameter("username");
    	String email = request.getParameter("email");
    	String phone = request.getParameter("phone");
    	String dateofbirth = request.getParameter("burndate");
    	String address = request.getParameter("adress");
    	String passreg = request.getParameter("password");
    	boolean res = true;
    	
    	try {
            Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
            e.printStackTrace();
	}
    	try {
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/scansytecdb?characterEncoding=utf8", "root", "1234");
    		Statement st = con.createStatement();
                Statement st2 = con.createStatement();
		String query = "select * from loginuser";
		ResultSet rs = st.executeQuery(query);
		String name2, email2;
		while (rs.next()) {
                    name2 = rs.getString("username");
                    email2 = rs.getString("email");
                    if(name2.equals(name)||email2.equals(email)){res=false;
		}}
		if(res){
		String sqlQuery = "INSERT INTO `scansytecdb`.`loginuser` (`username`, `password`, `email`, `phone`, `burndate`, `Adress`)" 
                       +" VALUES ('"+name+"','"+ passreg+"','"+ email+"','"+ phone+"','"+dateofbirth+"','"+address+"')";
		st.executeUpdate(sqlQuery);
		}
		con.close();
		} catch (SQLException e) {
                    e.printStackTrace();
		}
    	return res;
	}
	
	
        public static String regtoAccess(userbean1 User, HttpServletRequest request){
		String name = request.getParameter("username");
    	String email = request.getParameter("email");
    	String phone = request.getParameter("phone");
    	String dateofbirth = request.getParameter("burndate");
    	String address = request.getParameter("adress");
    	String passreg = request.getParameter("password");
        String sqlQuery=null;
    	boolean res = true;
    	
    	try {
            Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
            e.printStackTrace();
	}
    	try {
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/scansytecdb?characterEncoding=utf8", "root", "1234");
    		Statement st = con.createStatement();
                Statement st2 = con.createStatement();
		String query = "select * from loginuser";
		ResultSet rs = st.executeQuery(query);
		String name2, email2;
		while (rs.next()) {
                    name2 = rs.getString("username");
                    email2 = rs.getString("email");
                    if(name2.equals(name)||email2.equals(email)){res=false;
		}}
		if(res){
		sqlQuery = "INSERT INTO `scansytecdb`.`loginuser` (`username`, `password`, `email`, `phone`, `burtdate`, `Adress`)" 
                       +" VALUES ('"+name+"','"+ passreg+"','"+ email+"','"+ phone+"','"+ dateofbirth+"','"+ address+"')";
		//st2.executeUpdate(sqlQuery);
		}
		con.close();
		} catch (SQLException e) {
                    e.printStackTrace();
		}
    	return sqlQuery;
	}
        
	public static String[] LogUsers(){
		String[] res= new String[10];
    	
    	try {
			Class.forName("com.mysql.jdbc.Driver");
			res[0]="driver";
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			res[0]="driverErr";
		}
    	try {
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/scansytecdb?characterEncoding=utf8", "root", "1234");
    		res[1]="connect";
    		Statement st = con.createStatement();
			String query = "select * from loginuser";
			ResultSet rs = st.executeQuery(query);
			int i=2;
			String name2, pass2 , email2;
			while (rs.next()) {
				name2 = rs.getString("username");
				pass2 = rs.getString("password");
				email2 = rs.getString("email");
				i++;
				res[1]="123";
				res[i]=name2+" "+pass2+" "+email2; 
			}
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			res[1]="connectErr";
		}
    	return res;
	}

}
