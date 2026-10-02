<%@ page import="ui.ItemController" %>
<%@ page import="ui.ItemInfo" %>
<%@ page import="java.util.Collection" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Products</title>

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

    <h1>Products</h1>

    <p class="subtitle">
        Choose a product and add it to your shopping cart.
    </p>

    <div class="products">

<%
    Collection<ItemInfo> items = ItemController.getItems();

    for (ItemInfo item : items) {

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
            image = "skarmdistru.webp";
        }
        else if (item.getName().equals("Hörlurar")) {
            image = "horlurardistru.jpeg";
        }
%>

        <div class="product">

            <img src="img/<%= image %>"
                 alt="<%= item.getName() %>"
                 class="product-image">

            <h2>
                <%= item.getName() %>
            </h2>

            <p>
                <%= item.getDescription() %>
            </p>

            <a href="addToCart.jsp?id=<%= item.getId() %>"
               class="button">
                Add to cart
            </a>

        </div>

<%
    }
%>

    </div>

</main>


<footer class="footer">

    <p>
        © 2026 Webshop
    </p>

</footer>

</body>

</html>
