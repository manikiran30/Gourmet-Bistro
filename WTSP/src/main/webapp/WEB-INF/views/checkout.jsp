<%--
  Created by IntelliJ IDEA.
  User: ashwanth
  Date: 22-11-2024
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Checkout - Gourmet Bistro</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f9f9f9;
      margin: 0;
      padding: 0;
    }

    .checkout-container {
      max-width: 900px;
      margin: 50px auto;
      padding: 30px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    h2 {
      color: #2c3e50;
      text-align: center;
      margin-bottom: 20px;
    }

    .checkout-item {
      display: flex;
      justify-content: space-between;
      padding: 15px;
      border-bottom: 1px solid #ddd;
      margin-bottom: 10px;
    }

    .checkout-item p {
      margin: 0;
      font-size: 1.1rem;
    }

    .total {
      text-align: right;
      font-size: 1.5rem;
      font-weight: bold;
      margin-top: 30px;
    }

    .confirm-button {
      padding: 15px 30px;
      background-color: #f4a261;
      color: white;
      border: none;
      cursor: pointer;
      border-radius: 5px;
      font-size: 1.2rem;
      width: 100%;
      margin-top: 20px;
      transition: background-color 0.3s;
    }

    .confirm-button:hover {
      background-color: #e76f51;
    }

    .empty-cart {
      text-align: center;
      font-size: 1.2rem;
      color: #e74c3c;
      display: none;
    }
  </style>
</head>
<body>
<div class="checkout-container">
  <h2>Checkout</h2>

  <!-- Items ordered will be displayed here -->
  <div id="cartItems"></div>

  <!-- Total price section -->
  <div class="total">
    Total: $<span id="totalAmount">0</span>
  </div>

  <!-- Confirm order button -->
  <button class="confirm-button" onclick="confirmOrder()">Confirm Order</button>

  <!-- Empty cart message -->
  <div class="empty-cart" id="emptyCartMessage">
    Your cart is empty. Please add some items to proceed.
  </div>
</div>

<script>
  function getUrlParams() {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.getAll('items[]');
  }

  function displayCartItems() {
    const items = getUrlParams();
    const cartItemsContainer = document.getElementById('cartItems');
    const emptyCartMessage = document.getElementById('emptyCartMessage');
    const totalAmountSpan = document.getElementById('totalAmount');
    let totalAmount = 0;

    if (items.length === 0) {
      emptyCartMessage.style.display = 'block';
      cartItemsContainer.style.display = 'none';
      return;
    }

    emptyCartMessage.style.display = 'none';

    items.forEach(item => {
      const [name, price] = item.split('-');
      const priceValue = parseFloat(price.slice(1));
      const itemElement = document.createElement('div');
      itemElement.classList.add('checkout-item');
      itemElement.innerHTML = `<p>${name}</p><p>$${priceValue.toFixed(2)}</p>`;
      cartItemsContainer.appendChild(itemElement);
      totalAmount += priceValue;
    });

    totalAmountSpan.textContent = totalAmount.toFixed(2);
  }

  function confirmOrder() {
    alert('Thank you for your order! Redirecting to order status page...');
    window.location.href = 'order-status.html';
  }

  window.onload = displayCartItems;
</script>
</body>
</html>

