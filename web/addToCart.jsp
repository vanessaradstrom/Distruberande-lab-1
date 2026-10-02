<%@ page import="bo.Cart" %>
<%@ page import="bo.Item" %>
<%@ page import="bo.ItemFacade" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    Cart cart = (Cart) session.getAttribute("cart");

    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }

    Item item = ItemFacade.getItemById(id);

    if (item != null) {
        cart.addItem(item);
    }

    response.sendRedirect("cart.jsp");
%>
