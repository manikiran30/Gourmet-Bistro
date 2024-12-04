<%--
  Created by IntelliJ IDEA.
  User: ashwanth
  Date: 22-11-2024
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gourmet Bistro - Ribeye Steak</title>
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
      width: 95vh;
      height: 80vh;
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
  <h1>Gourmet Bistro - Ribeye Steak</h1>
  <nav>
    <ul>
      <li><a href="main">Home</a></li>
      <li><a href="menu">Menu</a></li>
    </ul>
  </nav>
</header>

<section class="menu-section">
  <h2>Ribeye Steak</h2>
  <img src="https://raw.githubusercontent.com/io-brewery/images/main/ribeye%20steak.jpg" alt="Ribeye Steak">

  <p>Our ribeye steak is perfectly marbled, tender, and cooked to your liking. Served with garlic mashed potatoes and a side of steamed vegetables.</p>
  <h3>Origins & Inspiration</h3>
  <p>The ribeye steak, known for its rich flavor and juiciness, is a true classic. At Gourmet Bistro, we bring out its natural essence with just the right seasoning and preparation.</p>
  <h3>Ingredients</h3>
  <ul>
    <li>Prime ribeye steak</li>
    <li>Garlic mashed potatoes</li>
    <li>Steamed seasonal vegetables</li>
    <li>Herb-infused butter</li>
  </ul>
  <h3>Serving Suggestions</h3>
  <p>Best paired with a bold red wine, such as Cabernet Sauvignon or Malbec, to complement its rich flavors.</p>
</section>

<footer>
  <p>&copy; 2024 Gourmet Bistro | All Rights Reserved</p>
</footer>
</body>
</html>

