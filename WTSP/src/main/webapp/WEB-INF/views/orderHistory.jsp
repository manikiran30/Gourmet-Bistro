<%-- Created by IntelliJ IDEA. User: ashwanth Date: 23-11-2024 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    if (username != null) {
        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurantdb", "root", "");

            PreparedStatement ps;
            boolean isAdmin = "root".equals(username) || "admin".equals(username);

            if (isAdmin) {
                // Fetch all orders for admin/root
                ps = conn.prepareStatement("SELECT username, order_item, order_date FROM user1");
            } else {
                // Fetch orders for the specific logged-in user
                ps = conn.prepareStatement("SELECT order_item, order_date FROM user1 WHERE username = ?");
                ps.setString(1, username);
            }

            ResultSet rs = ps.executeQuery();
%>
<h1><%= isAdmin ? "Orders You Received" : "Your Order History" %></h1>
<table>
    <thead>
    <tr>
        <% if (isAdmin) { %>
        <th>Username</th>
        <% } %>
        <th>Ordered Item</th>
        <th>Ordered Date</th>
    </tr>
    </thead>
    <tbody>
    <%
        while (rs.next()) {
            if (isAdmin) {
                // Display username, order item, and order date for admin/root
                String user = rs.getString("username");
                String orderItem = rs.getString("order_item");
                String orderDate = rs.getString("order_date");
    %>
    <tr>
        <td><%= user %></td>
        <td><%= orderItem %></td>
        <td><%= orderDate %></td>
    </tr>
    <%
    } else {
        // Display only order item and date for normal users
        String orderItem = rs.getString("order_item");
        String orderDate = rs.getString("order_date");
    %>
    <tr>
        <td><%= orderItem %></td>
        <td><%= orderDate %></td>
    </tr>
    <%
            }
        }
        conn.close();
    %>
    </tbody>
</table>
<%
        } catch (Exception e) {
            e.printStackTrace(); // Log the error for debugging
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching order history.");
        }
    } else {
        response.sendRedirect("index.jsp"); // Redirect to login if the session is invalid
    }
%>
</body>
</html>
