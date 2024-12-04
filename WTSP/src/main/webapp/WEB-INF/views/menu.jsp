<%--
  Created by IntelliJ IDEA.
  User: ashwanth
  Date: 22-11-2024
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Menu</title>
    <link rel="stylesheet" href="../../assets/css/style.css">
    <style>
        body {
            background-color: #333;
            color: #fff;
            font-family: Arial, sans-serif;
        }

        header {
            text-align: center;
            padding: 20px 0;
        }

        header h1 {
            font-size: 3rem;
            color: #f1c40f; /* Gold color */
        }

        header h2 {
            font-size: 1.5rem;
            margin-top: 10px;
        }

        section {
            margin: 20px;
            padding: 20px;
            background-color: #222;
            border-radius: 10px;
        }

        section h3 {
            color: #f1c40f; /* Gold color */
        }

        section ul {
            list-style: none;
            padding: 0;
        }

        section li {
            margin-bottom: 10px;
        }

        section a {
            color: #fff;
            text-decoration: none;
        }

        section a:hover {
            text-decoration: underline;
        }

        footer {
            text-align: center;
            padding: 10px;
            background-color: #222;
            color: #fff;
        }
    </style>
</head>
<body>
<header>
    <h1>Gourmet Bistro</h1>
    <h2>Good Food</h2>
</header>

<section>
    <h3>Appetizers</h3>
    <ul>
        <li><a href="bruschetta">Bruschetta</a> - $8</li>
        <li><a href="calamari">Calamari</a> - $12</li>
        <li><a href="stuffedmushrooms">Stuffed Mushrooms</a> - $10</li>
    </ul>
</section>

<section>
    <h3>Main Courses</h3>
    <ul>
        <li><a href="grilledsalmon">Grilled Salmon</a> - $22</li>
        <li><a href="ribeyesteak">Ribeye Steak</a> - $30</li>
        <li><a href="vegetarianlasagna">Vegetarian Lasagna</a> - $18</li>

    </ul>
</section>

<section>
    <h3>Desserts</h3>
    <ul>
        <li><a href="chocolava">Chocolate Lava Cake</a> - $7</li>
        <li><a href="tiramisu">Tiramisu</a> - $6</li>
        <li><a href="cremebrulee">Creme Brulee</a> - $8</li>

    </ul>
</section>
<section>
    <h3>Drinks</h3>
    <ul>
        <li><a href="#">Raspberry Lemonade</a> - $2</li>
        <li><a href="#">Shirley Temple</a> - $2</li>
        <li><a href="#">Margarita</a> - $2</li>
    </ul>
</section>

<footer>
    <p>&copy; 2024 Gourmet Bistro | All Rights Reserved</p>
</footer>
</body>
</html>
