package com.TechSansar.controller;

import com.TechSansar.model.CartModel;
import com.TechSansar.model.ProductModel;
import com.TechSansar.service.CartService;
import com.TechSansar.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/mycart")
public class CartController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CartService cartService = new CartService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve user data from session
        String username = (String) SessionUtil.getAttribute(request, "username");
        Integer userId = (Integer) SessionUtil.getAttribute(request, "userId");

        // If userId is null, redirect to login
        if (userId == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return; // Ensure that no further processing occurs after the redirect
        }

        // If the user is logged in, proceed with cart handling
        HttpSession session = request.getSession();
        List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        String success = request.getParameter("success");
        if ("true".equals(success)) {
            request.setAttribute("message", "Item added to cart successfully!");
        }

        request.setAttribute("cartItems", cart);
        request.getRequestDispatcher("/WEB-INF/pages/mycart.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve user data from session
        String username = (String) SessionUtil.getAttribute(request, "username");
        Integer userId = (Integer) SessionUtil.getAttribute(request, "userId");

        // If userId is null, redirect to login
        if (userId == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return; // Ensure that no further processing occurs after the redirect
        }

        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        if (action == null) {
            // No action param means "add to cart"
            String name = request.getParameter("name");
            String image = request.getParameter("image");
            int price = Integer.parseInt(request.getParameter("price"));

            ProductModel product = new ProductModel();
            product.setName(name);
            product.setImageUrl(image);
            product.setPrice(price);
            product.setStock(1); // quantity

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

            // Save to database
            CartModel cartModel = new CartModel();
            cartModel.setUserId(userId);  // Use the session's userId
            cartModel.setProductName(name);
            cartModel.setImageUrl(image);
            cartModel.setPrice(price);
            cartModel.setQuantity(1); // Default quantity is 1, can be updated later.
            cartService.addProductToCart(cartModel);

            session.setAttribute("cart", cart);
            response.sendRedirect(request.getContextPath() + "/mycart?success=true");
            return;
        }

        // Handle other actions (remove or update)
        String name = request.getParameter("name");
        if ("remove".equals(action)) {
            // Remove product from cart
            cart.removeIf(p -> p.getName().equals(name));
        } else if ("increase".equals(action)) {
            for (ProductModel p : cart) {
                if (p.getName().equals(name)) {
                    p.setStock(p.getStock() + 1);
                    break;
                }
            }
        } else if ("decrease".equals(action)) {
            cart.removeIf(p -> p.getName().equals(name) && p.getStock() == 0);
            for (ProductModel p : cart) {
                if (p.getName().equals(name)) {
                    p.setStock(p.getStock() - 1);
                    break;
                }
            }
        }

        session.setAttribute("cart", cart);
        response.sendRedirect(request.getContextPath() + "/mycart");
    }

}
