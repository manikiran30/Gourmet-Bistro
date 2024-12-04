<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Linking a CSS file -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style2.css">

<%--    <!-- Adding an image -->--%>
<%--    <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="Logo">--%>

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
<div class="login-container">
    <div class="login-form">
        <h2>Login</h2>
        <form action="log" method="POST">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit" name="action" value="login">Sign In</button>
        </form>

        <p>Don't Have an Account? <a href="signup">Create your Account</a></p>
        <p><a href="index">Forget Password?</a></p>
    </div>

</div>
</body>
</html>
