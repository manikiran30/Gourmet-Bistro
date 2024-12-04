<%--
  Created by IntelliJ IDEA.
  User: ashwanth
  Date: 22-11-2024
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gourmet Bistro - Tiramisu</title>
    <style>
        body {
            font-family: 'Verdana', sans-serif;
            background-color: #f0f4f1;
            color: #2d4059;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #d35400;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        header h1 {
            font-size: 2.5rem;
            margin: 0;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 15px 0 0;
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        nav ul li {
            margin: 0;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
            font-size: 1.2rem;
            transition: color 0.3s;
        }

        nav ul li a:hover {
            color: #f39c12;
        }

        .menu-section {
            max-width: 800px;
            margin: 20px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
        }

        .menu-section img {
            width: 100%;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .menu-section h2 {
            color: #2c3e50;
            font-size: 2.5rem;
            margin: 15px 0;
        }

        .menu-section p {
            font-size: 1.1rem;
            color: #555;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .menu-section ul {
            list-style: none;
            font-size: 1rem;
            color: #333;
            padding-left: 0;
        }

        .menu-section ul li {
            margin-bottom: 10px;
            padding-left: 20px;
            position: relative;
        }

        .menu-section ul li::before {
            content: '☕';
            position: absolute;
            left: 0;
            top: 0;
            font-size: 1.5rem;
        }

        footer {
            text-align: center;
            background-color: #d35400;
            color: white;
            padding: 15px 0;
            margin-top: 40px;
        }

        .cta-button {
            background-color: #f39c12;
            color: white;
            padding: 12px 30px;
            font-size: 1.2rem;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        .cta-button:hover {
            background-color: #e67e22;
        }
    </style>
</head>
<body>
<header>
    <h1>Gourmet Bistro - Tiramisu</h1>
    <nav>
        <ul>
            <li><a href="main">Home</a></li>
            <li><a href="menu">Menu</a></li>
        </ul>
    </nav>
</header>

<section class="menu-section">
    <h2>Tiramisu</h2>
    <img src="https://raw.githubusercontent.com/io-brewery/images/main/tiramisu.jpg" alt="Tiramisu">

    <p>Our signature tiramisu is the perfect balance of rich coffee-soaked ladyfingers, velvety mascarpone cream, and a dusting of cocoa powder. An irresistible classic Italian dessert that will melt your heart.</p>

    <h3>Origins & Inspiration</h3>
    <p>Hailing from Italy, Tiramisu has been a beloved dessert for generations. It combines simple ingredients into a wonderfully rich treat that is perfect for any occasion.</p>

    <h3>Ingredients</h3>
    <ul>
        <li>Ladyfingers soaked in espresso</li>
        <li>Mascarpone cheese</li>
        <li>Cocoa powder</li>
        <li>Egg yolks, sugar, and vanilla</li>
        <li>Dark rum or coffee liqueur</li>
    </ul>

    <h3>Serving Suggestions</h3>
    <p>Pair with a cappuccino or a glass of dessert wine like Vin Santo for an unforgettable indulgence.</p>

    <a href="menu" class="cta-button">Back to Menu</a>
</section>

<footer>
    <p>&copy; 2024 Gourmet Bistro | All Rights Reserved</p>
</footer>
</body>
</html>
