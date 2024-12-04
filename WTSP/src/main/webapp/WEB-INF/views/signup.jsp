<%--
  Created by IntelliJ IDEA.
  User: ashwanth
  Date: 22-11-2024
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>

    <style>
        <%@ include file="/WEB-INF/views/assets/css/style2.css" %>

        header {
            background-color: #273286;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            border-radius: 12px;
        }

        header .logo h1 {
            font-size: 3rem;
            /* background-image: url("logo.jpg"); */
        }
    </style>
</head>
<body>
<header>
    <div class="logo">
        <h1>Gourmet Bistro</h1>
    </div>
</header>
<div class="signup-container">
    <div class="signup-form">
        <h2>Sign Up</h2>
        <form action="sign" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit" name="action" value="signup">Sign Up</button>
        </form>

        <p>Already have an account? <a href="index">Login Here</a></p>
    </div>
</div>
</body>
</html>

