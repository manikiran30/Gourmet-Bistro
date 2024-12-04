package com.restaurantmanagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseConnection {

    private static Connection connection = null;

    private DataBaseConnection() {}

    public static Connection getConnection() throws SQLException {
        if (connection == null || connection.isClosed()) {
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Connect to MySQL
                String url = "jdbc:mysql://localhost:3306/restaurantdb";
                String user = "root";
                String password = "";

                connection = DriverManager.getConnection(url, user, password);
                initDB(connection);
            } catch (ClassNotFoundException e) {
                System.err.println("MySQL JDBC Driver not found.");
                e.printStackTrace();
            }
        }
        return connection;
    }

    public static void initDB(Connection con) {
        try {
            Statement st = con.createStatement();

            // Enable foreign key checks (default in MySQL)
            st.execute("SET FOREIGN_KEY_CHECKS=1;");

            // Create the users table
            String createUserTable = "CREATE TABLE IF NOT EXISTS user1 ("
                    + "id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, "
                    + "username VARCHAR(50) NOT NULL, "
                    + "email VARCHAR(100) NOT NULL, "
                    + "password VARCHAR(255) NOT NULL, "
                    + "order_item VARCHAR(100) NOT NULL, "
                    + "order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, "
                    + "role VARCHAR(20) DEFAULT 'user'"
                    + ") ENGINE=InnoDB;";

            st.executeUpdate(createUserTable);




        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void closeConnection() {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
