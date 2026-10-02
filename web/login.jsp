<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title>Login</title>

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

    <div class="form-container">

        <h1>Login</h1>

        <p class="subtitle">
            Log in to continue to the webshop.
        </p>


        <form action="login.jsp" method="post">

            <label for="username">
                Username
            </label>

            <input
                    type="text"
                    id="username"
                    name="username"
                    placeholder="Enter your username"
                    required
            >


            <label for="password">
                Password
            </label>

            <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="Enter your password"
                    required
            >


            <input
                    type="submit"
                    value="Login"
            >

        </form>


<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username != null && password != null) {

        if (db.UserDB.login(username, password)) {
%>

            <div class="login-success">

                <h2>✓ Login successful!</h2>

                <p>
                    You are now logged in.
                </p>

                <a href="index.jsp" class="button">
                    Go to webshop
                </a>

            </div>

<%
        } else {
%>

            <div class="login-error">

                <h2>Incorrect login details</h2>

                <p>
                    The username or password is incorrect.
                </p>

            </div>

<%
        }
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
