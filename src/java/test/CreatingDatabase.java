package test;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CreatingDatabase {
	//Так мы создаем базу данных:
    private final static String createDatabaseQyery =
            "CREATE DATABASE bookstore CHARACTER SET utf8 COLLATE utf8_general_ci";
 
    public static void main(String[] args) {
 
        Connection connection = null;
        Statement statement = null;
        try {
            //Загружаем драйвер
            Class.forName("com.mysql.jdbc.Driver");
            //Нужно создать подключение к БД. У MySQL обязательно есть системная база,
            //к ней и будем создавать соединение.
            String url = "jdbc:mysql://localhost/mysql";
            connection = DriverManager.getConnection(url, "root", "1234");
            statement = connection.createStatement();
            //Обратите внимание, что создаем базу с помощью executeUpdate(). Об этом мы поговорим немного позже.
            statement.executeUpdate(createDatabaseQyery);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //позакрываем теперь все
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
