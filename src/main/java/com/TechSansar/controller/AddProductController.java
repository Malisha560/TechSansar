package com.TechSansar.controller;

import com.TechSansar.model.ProductModel;
import com.TechSansar.service.AddProductService;

import java.io.File;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/admin/addproduct")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, // 1MB
                 maxFileSize = 5 * 1024 * 1024,     // 5MB
                 maxRequestSize = 10 * 1024 * 1024) // 10MB
public class AddProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/admin/addproduct.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Fetch form data
        String name = request.getParameter("productName");
        String desc = request.getParameter("productDesc");
        String brand = request.getParameter("productBrand");
        String priceStr = request.getParameter("productPrice");
        String stockStr = request.getParameter("productStock"); // optional: can be null

        int price = 0;
        int stock = 0;

        try {
            price = Integer.parseInt(priceStr.replaceAll("[^0-9]", ""));
        } catch (NumberFormatException e) {
            e.printStackTrace(); // log error
        }

        try {
            if (stockStr != null && !stockStr.isEmpty()) {
                stock = Integer.parseInt(stockStr.trim());
            } else {
                stock = 0; // default if not provided
            }
        } catch (NumberFormatException e) {
            stock = 0;
        }

        // Handle image upload
        Part filePart = request.getPart("fileInput");
        String fileName = getFileName(filePart);
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        String imagePath = "uploads/" + fileName;
        filePart.write(uploadPath + File.separator + fileName);

        // Prepare product model
        ProductModel product = new ProductModel();
        product.setName(name);
        product.setDescription(desc);
        product.setProduct_brand(brand);
        product.setPrice(price);
        product.setImageUrl(imagePath);
        product.setStock(stock);

        // Call service
        AddProductService service = new AddProductService();
        boolean success = service.addProduct(product);

        if (success) {
        	response.sendRedirect(request.getContextPath() + "/admin/productinfo?msg=Product+added+successfully");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/addproduct.jsp?error=Failed+to+add+product");
        }
    }

    private String getFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
