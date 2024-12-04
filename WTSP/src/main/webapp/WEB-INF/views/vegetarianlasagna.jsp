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
  <title>Gourmet Bistro - Vegetarian Lasagna</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #eef5f9;
      color: #2d4059;
      margin: 0;
      padding: 0;
    }

    header {
      background-color: #1b263b;
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
      color: #f08a5d;
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
      background: #f08a5d;
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
      color: #2d4059;
    }

    footer {
      text-align: center;
      background-color: #1b263b;
      color: white;
      padding: 10px 0;
      margin-top: 20px;
    }
  </style>
</head>
<body>
<header>
  <h1>Gourmet Bistro - Vegetarian Lasagna</h1>
  <nav>
    <ul>
      <li><a href="main">Home</a></li>
      <li><a href="menu">Menu</a></li>
    </ul>
  </nav>
</header>

<section class="menu-section">
  <h2>Vegetarian Lasagna</h2>
  <img src="https://raw.githubusercontent.com/io-brewery/images/main/vegetarianlasagna.jpg" alt="Vegetarian Lasagna">

  <p>Our vegetarian lasagna is a delightful blend of roasted vegetables, creamy ricotta, and tangy marinara sauce layered with tender pasta sheets. Baked to golden perfection.</p>
  <h3>Origins & Inspiration</h3>
  <p>A modern twist on a classic Italian dish, this lasagna caters to vegetarians while delivering robust flavors that everyone can enjoy.</p>
  <h3>Ingredients</h3>
  <ul>
    <li>Roasted zucchini, eggplant, and bell peppers</li>
    <li>Fresh ricotta and mozzarella cheese</li>
    <li>Homemade marinara sauce</li>
    <li>Lasagna pasta sheets</li>
    <li>Fresh basil and spices</li>
  </ul>
  <h3>Serving Suggestions</h3>
  <p>Enjoy with a light red wine, such as Pinot Noir, or a refreshing sparkling water infused with mint.</p>
</section>

<footer>
  <p>&copy; 2024 Gourmet Bistro | All Rights Reserved</p>
</footer>
</body>
</html>

