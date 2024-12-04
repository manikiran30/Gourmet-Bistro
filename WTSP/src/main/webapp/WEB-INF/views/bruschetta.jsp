<%--
  Created by IntelliJ IDEA.
  User: ashwanth
  Date: 22-11-2024
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gourmet Bistro - Bruschetta</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #2c3e50;
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
            color: #f4a261;
        }

        .menu-section {
            max-width: 800px;
            margin: 20px auto;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .menu-section img {
            width: 100%;
            height: auto;
        }

        .menu-section h2 {
            background: #f4a261;
            color: white;
            padding: 15px;
            margin: 0;
            text-align: center;
        }

        .menu-section p,
        .menu-section ul {
            padding: 20px;
        }

        .menu-section ul {
            list-style: square;
        }

        footer {
            text-align: center;
            background-color: #2c3e50;
            color: white;
            padding: 10px 0;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<header>
    <h1>Gourmet Bistro - Bruschetta</h1>
    <nav>
        <ul>
            <li><a href="main">Home</a></li>
            <li><a href="menu">Menu</a></li>
        </ul>
    </nav>
</header>

<section class="menu-section">
    <h2>Bruschetta</h2>
    <img src="https://raw.githubusercontent.com/io-brewery/images/main/bruschetta.jpg" alt="Bruschetta">

    <p>Bruschetta is a classic Italian appetizer made with toasted bread, fresh tomatoes, garlic, basil, and a drizzle of olive oil. It’s a delightful starter, combining simple ingredients with robust flavors.</p>

    <h3>Origins & Inspiration</h3>
    <p>Hailing from Italy, Bruschetta was traditionally a way to use up stale bread. Over time, it has become a globally adored appetizer, known for its freshness and simplicity.</p>

    <h3>Ingredients</h3>
    <ul>
        <li>Fresh tomatoes</li>
        <li>Garlic</li>
        <li>Fresh basil</li>
        <li>Olive oil</li>
        <li>Toasted bread</li>
        <li>Balsamic vinegar (optional)</li>
    </ul>

    <h3>Serving Suggestions</h3>
    <p>Bruschetta pairs wonderfully with a chilled glass of Prosecco or a light white wine. It’s perfect for a casual gathering or as a refined start to your meal.</p>
</section>

<footer>
    <p>&copy; 2024 Gourmet Bistro | All Rights Reserved</p>
</footer>
</body>
</html>

