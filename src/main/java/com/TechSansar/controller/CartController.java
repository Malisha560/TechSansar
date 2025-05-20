package com.TechSansar.controller;

import com.TechSansar.model.ProductModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@WebServlet("/mycart")
public class CartController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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

            session.setAttribute("cart", cart);

            String brand = request.getParameter("brand"); 
            response.sendRedirect(request.getContextPath() + "/mycart?success=true");
            return;
        }

        // Handle other actions: remove or update
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
            Iterator<ProductModel> iterator = cart.iterator();
            while (iterator.hasNext()) {
                ProductModel p = iterator.next();
                if (p.getName().equals(name)) {
                    int newQty = p.getStock() - 1;
                    if (newQty > 0) {
                        p.setStock(newQty);
                    } else {
                        iterator.remove();
                    }
                    break;
                }
            }
        }

        session.setAttribute("cart", cart);
        response.sendRedirect(request.getContextPath() + "/mycart");
    }
}
