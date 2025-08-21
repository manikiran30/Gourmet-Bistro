package com.restaurantmanagement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/checkout")
public class checkout extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/restaurantdb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        // Get the session and retrieve the username
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username"); // Retrieve username from session

        // Validate that the username exists in the session
        if (username == null || username.trim().isEmpty()) {
            response.getWriter().println("<h1>Error: You must be logged in to place an order!</h1>");
            return;
        }

        // Get the selected items
        String[] selectedItems = request.getParameterValues("items[]");

        // Validate selected items
        if (selectedItems == null || selectedItems.length == 0) {
            response.getWriter().println("<h1>Error: No items selected</h1>");
            return;
        }

        // Join the items into a single string for storage
        String orderItems = String.join(", ", selectedItems);

        // Database query to update order items for the given username
        String updateOrderQuery = "UPDATE user1 SET order_item = ? WHERE username = ?";

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            System.out.println("Connected to database");

            PreparedStatement ps = conn.prepareStatement(updateOrderQuery);

            // Set parameters for the update query
            ps.setString(1, orderItems); // The selected items
            ps.setString(2, username); // The username from session

            // Execute the query
            int rowsUpdated = ps.executeUpdate();

            if (rowsUpdated > 0) {
                response.setContentType("text/html");
                response.getWriter().println("<html><body>");
                response.getWriter().println("<h1>Order Successful!</h1>");
                response.getWriter().println("<script type='text/javascript'>");
                response.getWriter().println("setTimeout(function() { window.location.href = 'main'; }, 2000);"); // Redirect after 2 seconds
                response.getWriter().println("</script>");
                response.getWriter().println("</body></html>");
            } else {
                System.out.println("No matching username found for: " + username);
                response.getWriter().println("<h1>Error: Username not found!</h1>");
            }
        } catch (SQLException e) {
            System.out.println("SQL Exception: " + e.getMessage());
            e.printStackTrace();
            response.getWriter().println("<h1>Database error occurred!</h1>");
        }
    }
}
