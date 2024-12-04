<%--
  Created by IntelliJ IDEA.
  User: ashwanth
  Date: 22-11-2024
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gourmet Bistro - Home</title>
  <style>
    /* General Styles */
    body {
      font-family: 'Arial', sans-serif;
      line-height: 1.6;
      background-color: #f4f4f4;
      color: #333;
    }

    h2, h3 {
      color: #2c3e50;
    }

    /* Hero Section */
    .hero {
      position: relative;
      background: url("./assets/images/resturant interior.jpg") no-repeat center center/cover;
      height: 400px;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      color: white;
    }

    .hero-overlay {
      background-color: rgba(0, 0, 0, 0.6);
      padding: 20px;
      border-radius: 10px;
    }

    .cta-button, .order-button {
      background-color: #f4a261;
      color: white;
      padding: 12px 30px;
      font-size: 1.2rem;
      text-decoration: none;
      border-radius: 5px;
      transition: background-color 0.3s;
      margin-top: 10px;
    }

    .cta-button:hover, .order-button:hover {
      background-color: #e76f51;
    }

    /* Specials Section */
    .specials-section {
      background-color: #fff;
      padding: 50px 20px;
      text-align: center;
    }

    .special-item {
      background-color: #f4a261;
      padding: 20px;
      margin: 20px 0;
      border-radius: 8px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }

    .special-item h3 {
      font-size: 2rem;
      margin-bottom: 10px;
    }

    .special-item p {
      font-size: 1.2rem;
    }

    /* Header Navigation */
    header {
      background-color: #2c3e50;
      color: #fff;
      padding: 20px 0;
      text-align: center;
    }

    header .logo h1 {
      font-size: 3rem;
      /* background-image: url("logo.jpg"); */
    }

    nav ul {
      list-style: none;
      display: flex;
      justify-content: center;
      margin-top: 15px;
    }

    nav ul li {
      margin: 0 20px;
    }

    nav ul li a {
      color: #fff;
      text-decoration: none;
      font-size: 1.1rem;
    }

    nav ul li a:hover {
      color: #f4a261;
    }

    /* Footer */
    footer {
      background-color: #2c3e50;
      color: white;
      text-align: center;
      padding: 20px;
    }

    /* About Section */
    .about-section {
      padding: 50px 20px;
      text-align: center;
    }

    .about-content img {
      width: 80%;
      max-width: 600px;
      border-radius: 10px;
    }

    /* Contact Section */
    .contact-section {
      padding: 50px 20px;
      background-color: #fff;
      text-align: center;
    }

    #contact-form input,
    #contact-form textarea {
      width: 80%;
      padding: 10px;
      margin: 10px 0;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    #contact-form button {
      background-color: #f4a261;
      color: white;
      padding: 12px 30px;
      font-size: 1.2rem;
      text-decoration: none;
      border-radius: 5px;
      border: none;
      cursor: pointer;
      margin-top: 10px;
    }

    #contact-form button:hover {
      background-color: #e76f51;
    }
  </style>
</head>
<body>
<header>
  <div class="logo">
    <h1>Gourmet Bistro</h1>
  </div>
  <nav>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="menu">Menu</a></li> <!-- Link to the menu page -->
      <li><a href="#about">About</a></li>
      <li><a href="#contact">Contact</a></li>
      <li><a href="orderHistory">Orders</a></li>
      <li><a href="index">LogOut</a></li>
    </ul>
  </nav>
</header>

<center>
  <section class="hero">
    <div class="hero-overlay">
      <h2>Welcome to Gourmet Bistro</h2>
      <p>Experience exquisite dining with every bite.</p>
      <a href="menu" class="cta-button">Explore Our Menu</a> <!-- Link to menu page -->
      <br><br>
      <a href="order" class="order-button">Order Now</a> <!-- Link to order page -->
    </div>
  </section>
</center>

<!-- New Specials Section -->
<section id="specials" class="specials-section">
  <h2>Today's Specials</h2>
  <div class="special-item">
    <h3>Grilled Salmon</h3>
    <p>Lightly seasoned and grilled to perfection. Served with seasonal vegetables. - $22</p>
  </div>
  <div class="special-item">
    <h3>Ribeye Steak</h3>
    <p>Juicy and tender, cooked to your liking. Served with garlic mashed potatoes. - $30</p>
  </div>
  <div class="special-item">
    <h3>Chocolate Lava Cake</h3>
    <p>Decadent molten cake with a warm chocolate center. Served with vanilla ice cream. - $7</p>
  </div>
</section>

<section id="about" class="about-section">
  <h2>About Us</h2>
  <div class="about-content">
    <img src="https://raw.githubusercontent.com/io-brewery/images/main/resturant%20interior.jpg" alt="Restaurant Interior">

    <p>At Gourmet Bistro, we offer a perfect blend of contemporary culinary artistry and classic flavors. Whether you're here for a casual meal or a special occasion, we guarantee an unforgettable experience.</p>
  </div>
</section>

<section id="contact" class="contact-section">
  <h2>Contact Us</h2>
  <p>For reservations, inquiries, or feedback, reach out to us:</p>
  <form id="contact-form">
    <input type="text" id="name" placeholder="Your Name" required>
    <input type="email" id="email" placeholder="Your Email" required>
    <textarea id="message" placeholder="Your Message" required></textarea>
    <button type="submit">Send Message</button>
  </form>
</section>

<footer>
  <p>&copy; 2024 Gourmet Bistro | All Rights Reserved</p>
</footer>

<%--<script src="script.js"></script>--%>

</body>
</html>

