<%--
  Created by IntelliJ IDEA.
  User: ashwanth
  Date: 22-11-2024
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order - Gourmet Bistro</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .order-container {
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

        .order-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            border-bottom: 1px solid #ddd;
        }

        .order-item p {
            margin: 0;
            font-size: 1.1rem;
        }

        .order-item input {
            margin-left: 15px;
        }

        .total {
            text-align: right;
            font-size: 1.5rem;
            font-weight: bold;
            margin-top: 30px;
        }

        .order-button {
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

        .order-button:hover {
            background-color: #e76f51;
        }
    </style>
</head>
<body>
<div class="order-container">
    <h2>Order Your Meal</h2>

    <form id="orderForm" action="checkout" method="GET">
        <!-- Appetizers -->
        <div class="order-item">
            <p>Bruschetta - $8</p>
            <input type="checkbox" name="items[]" value="Bruschetta-$8">
        </div>
        <div class="order-item">
            <p>Calamari - $12</p>
            <input type="checkbox" name="items[]" value="Calamari-$12">
        </div>
        <div class="order-item">
            <p>Stuffed Mushrooms - $10</p>
            <input type="checkbox" name="items[]" value="Stuffed Mushrooms-$10">
        </div>

        <!-- Main Courses -->
        <div class="order-item">
            <p>Grilled Salmon - $22</p>
            <input type="checkbox" name="items[]" value="Grilled Salmon-$22">
        </div>
        <div class="order-item">
            <p>Ribeye Steak - $30</p>
            <input type="checkbox" name="items[]" value="Ribeye Steak-$30">
        </div>
        <div class="order-item">
            <p>Vegetarian Lasagna - $18</p>
            <input type="checkbox" name="items[]" value="Vegetarian Lasagna-$18">
        </div>

        <!-- Desserts -->
        <div class="order-item">
            <p>Chocolate Lava Cake - $7</p>
            <input type="checkbox" name="items[]" value="Chocolate Lava Cake-$7">
        </div>
        <div class="order-item">
            <p>Tiramisu - $6</p>
            <input type="checkbox" name="items[]" value="Tiramisu-$6">
        </div>
        <div class="order-item">
            <p>Creme Brulee - $8</p>
            <input type="checkbox" name="items[]" value="Creme Brulee-$8">
        </div>
        <div class="order-item">
            <p>Raspberry Lemonade - $2</p>
            <input type="checkbox" name="items[]" value="Raspberry Lemonade-$2">
        </div>
        <div class="order-item">
            <p>Shirley Temple - $2</p>
            <input type="checkbox" name="items[]" value="Shirley-$2">
        </div>
        <div class="order-item">
            <p>Margarita - $2</p>
            <input type="checkbox" name="items[]" value="Margarita-$2">
        </div>

        <div class="total">
            Total: $<span id="totalAmount">0</span>
        </div>
<%--        <label for="email">Enter Your Email:</label>--%>
<%--        <input type="email" id="email" name="email" required>--%>


        <button type="submit" class="order-button">Proceed to Checkout</button>
    </form>
</div>

<script>
    const form = document.getElementById('orderForm');
    const totalAmountSpan = document.getElementById('totalAmount');

    form.addEventListener('change', () => {
        let total = 0;
        const selectedItems = form.querySelectorAll('input[type="checkbox"]:checked');
        selectedItems.forEach(item => {
            const price = parseFloat(item.value.split('-')[1].slice(1));  // Extract price from the value
            total += price;
        });
        totalAmountSpan.textContent = total.toFixed(2);
    });
</script>
</body>
</html>

