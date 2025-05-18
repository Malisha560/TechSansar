package com.TechSansar.controller;

import com.TechSansar.model.ProductModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/cart", "/mycart"})
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        request.setAttribute("cartItems", cart);
        request.getRequestDispatcher("/WEB-INF/pages/mycart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String image = request.getParameter("image");
        int price = Integer.parseInt(request.getParameter("price"));

        ProductModel product = new ProductModel();
        product.setName(name);
        product.setImageUrl(image);
        product.setPrice(price);
        product.setStock(1); // quantity

        HttpSession session = request.getSession();
        List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        boolean found = false;
        for (ProductModel p : cart) {
            if (p.getName().equals(name)) {
                p.setStock(p.getStock() + 1);
                found = true;
                break;
            }
        }

        if (!found) {
            cart.add(product);
        }

        session.setAttribute("cart", cart);
        response.sendRedirect("mycart");
    }
}
