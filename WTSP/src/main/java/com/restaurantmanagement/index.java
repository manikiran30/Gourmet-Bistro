package com.restaurantmanagement;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Annotation to define the URL pattern
@WebServlet("/")
public class index extends HttpServlet {

    // Handles HTTP GET requests
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection con = DataBaseConnection.getConnection();
            DataBaseConnection.initDB(con);
            request.setAttribute("db", "DB INIT SUCCESSFUL");
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("db", "DB INIT FAILURE");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
        dispatcher.forward(request, response);
    }
}
