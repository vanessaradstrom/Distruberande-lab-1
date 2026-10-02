<%@ page import="bo.Cart" %>
<%@ page import="bo.Item" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Shopping Cart</title>

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<header class="header">

    <div class="logo">
        Webshop
    </div>

    <nav class="nav">

        <a href="index.jsp">
            Home
        </a>

        <a href="items.jsp">
            Products
        </a>

        <a href="cart.jsp">
            Cart
        </a>

        <a href="login.jsp">
            Login
        </a>

    </nav>

</header>


<main class="container">

    <h1>My Shopping Cart</h1>

    <p class="subtitle">
        Here you can see the products you have added to your shopping cart.
    </p>


<%
    Cart cart = (Cart) session.getAttribute("cart");

    if (cart == null || cart.getItems().isEmpty()) {
%>

        <div class="cart">

            <h2>Your cart is empty</h2>

            <p>
                You have not added any products yet.
            </p>

            <a href="items.jsp" class="button">
                Start Shopping
            </a>

        </div>

<%
    } else {

        List<Item> items = cart.getItems();

        double total = 0;
%>

        <div class="cart">

<%
        for (Item item : items) {

            total = total + item.getPrice();

            String image = "";

            if (item.getName().equals("Laptop")) {
                image = "laptopdistru.jpeg";
            }
            else if (item.getName().equals("Mus")) {
                image = "datormusdistru.jpeg";
            }
            else if (item.getName().equals("Tangentbord")) {
                image = "tangentborddistru.jpeg";
            }
            else if (item.getName().equals("Skärm")) {
                image = "skarmdistru.jpeg";
            }
            else if (item.getName().equals("Hörlurar")) {
                image = "horlurardistru.webp";
            }
%>

            <div class="cart-item">

                <img src="img/<%= image %>"
                     alt="<%= item.getName() %>"
                     class="cart-image">


                <div class="cart-info">

                    <h2>
                        <%= item.getName() %>
                    </h2>

                    <p>
                        <%= item.getDesc() %>
                    </p>

                </div>


                <div class="cart-price">

                    <strong>
                        <%= String.format("%.2f", item.getPrice()) %> kr
                    </strong>

                </div>

            </div>

<%
        }
%>

            <div class="cart-total">

                <span>
                    Total
                </span>

                <strong>
                    <%= String.format("%.2f", total) %> kr
                </strong>

            </div>


            <div class="cart-buttons">

                <a href="items.jsp" class="button">
                    Continue Shopping
                </a>

                <a href="index.jsp" class="button secondary-button">
                    Back to Home
                </a>

            </div>

        </div>

<%
    }
%>

</main>


<footer class="footer">

    <p>
        © 2026 Webshop
    </p>

</footer>

</body>

</html>
