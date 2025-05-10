package com.TechSansar.controller;

import com.TechSansar.model.ProductModel;
import com.TechSansar.service.ProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = { "/product" })
public class ProductController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final ProductService productService;

    public ProductController() {
        this.productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String brand = req.getParameter("product_brand"); // e.g., ?brand=Asus
        int page = 1;
        int itemsPerPage = 6;

        if (req.getParameter("page") != null) {
            page = Integer.parseInt(req.getParameter("page"));
        }

        List<ProductModel> product = productService.getProductsByBrand(brand, page, itemsPerPage);
        int totalProducts = productService.countProductsByBrand(brand);
        int totalPages = (int) Math.ceil(totalProducts / (double) itemsPerPage);

        req.setAttribute("product", product);
        req.setAttribute("brand", brand);
        req.setAttribute("currentPage", page);
        req.setAttribute("totalPages", totalPages);
        req.setAttribute("showSkeleton", product.isEmpty());

        req.getRequestDispatcher("/WEB-INF/pages/product.jsp").forward(req, resp);
    }

}