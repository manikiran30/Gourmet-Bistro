package com.restaurantmanagement;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/log")
public class MainServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve user inputs
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Establish database connection
        try (Connection conn = DataBaseConnection.getConnection()) {
            // Prepare SQL to validate user
            String query = "SELECT * FROM user1 WHERE username = ? AND password = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            // Validate user credentials
            if (rs.next()) {
                // Valid user, store username in session
                HttpSession session = request.getSession();
                session.setAttribute("username", username);

                // Redirect to main page or dashboard
                response.sendRedirect("main");
            } else {
                // Invalid user
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<h1>Invalid Credentials</h1>");
                out.println("<p>Please try again.</p>");
                // Optionally redirect to login page after a delay
                response.setHeader("Refresh", "2; URL=index");
            }

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Error while validating user credentials.");
        }
    }
}

