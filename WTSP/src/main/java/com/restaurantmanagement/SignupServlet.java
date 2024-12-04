package com.restaurantmanagement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sign")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

// Database connection details
        String dbURL = "jdbc:mysql://localhost:3306/restaurantdb";
        String dbUser = "root";
        String dbPassword = "";

// Insert query
        String insertQuery = "INSERT INTO user1 (username, email, password, order_item, role) VALUES (?, ?, ?, '', 'user')";

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
             PreparedStatement ps = conn.prepareStatement(insertQuery)) {

            // Add parameters to the query
            ps.setString(1, username);
            ps.setString(2, email); // Set email parameter
            ps.setString(3, password);

            // Execute query
            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("index");
            } else {
                out.println("<h1>Signup failed. Please try again.</h1>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h1>Database error occurred. Please try again later.</h1>");
        }

    }
}

