package com.TechSansar.controller;

import com.TechSansar.model.ProductModel;
import com.TechSansar.service.AdminProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/productinfo")
public class AdminProductController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final AdminProductService productService = new AdminProductService(); // ✅ Use correct class

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
    		throws ServletException, IOException {
        List<ProductModel> products = productService.getAllProducts();
        req.setAttribute("products", products);
        req.getRequestDispatcher("/WEB-INF/pages/admin/productinfo.jsp").forward(req, resp); // Fix path if needed
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if ("edit".equals(action)) {
            String name = req.getParameter("name");
            ProductModel product = productService.getProductByName(name); //  instance, no static call
            req.setAttribute("editProduct", product);
            req.setAttribute("products", productService.getAllProducts());
            req.getRequestDispatcher("/WEB-INF/pages/admin/productinfo.jsp").forward(req, resp);

        } else if ("save".equals(action)) {
            String originalName = req.getParameter("originalName");
            String product_name = req.getParameter("name");
            int product_price = Integer.parseInt(req.getParameter("price"));
            int stock = Integer.parseInt(req.getParameter("stock"));
            String product_description = req.getParameter("description");
            String imageUrl = req.getParameter("imageUrl");

            ProductModel updatedProduct = new ProductModel(product_name, imageUrl, product_price, product_description, stock, null);
            productService.updateProductByName(originalName, updatedProduct);
            resp.sendRedirect(req.getContextPath() + "/admin/productinfo");

        } else if ("delete".equals(action)) {
            String productName = req.getParameter("name");
            productService.deleteProductByName(productName);
            resp.sendRedirect(req.getContextPath() + "/admin/productinfo");
        }
    }
}
