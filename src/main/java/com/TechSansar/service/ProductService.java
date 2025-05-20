package com.TechSansar.service;

import com.TechSansar.model.ProductModel;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/techsansar";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "";

    public List<ProductModel> getProductsByBrand(String brand, int page, int itemsPerPage) {
        List<ProductModel> products = new ArrayList<>();
        int offset = (page - 1) * itemsPerPage;

        System.out.println("Brand: " + brand);
        System.out.println("Offset: " + offset + ", Limit: " + itemsPerPage);
        
        String query = "SELECT * FROM product WHERE product_brand = ? LIMIT ? OFFSET ?";

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, brand);
            stmt.setInt(2, itemsPerPage);
            stmt.setInt(3, offset);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    ProductModel product = new ProductModel();
                    product.setName(rs.getString("product_name"));
                    product.setDescription(rs.getString("product_description"));
                    product.setPrice(rs.getInt("product_price"));
                    product.setImageUrl(rs.getString("imageUrl"));
                    products.add(product);
                }
            }
            
            System.out.println("Found " + products.size() + " products");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    public int countProductsByBrand(String brand) {
        String query = "SELECT COUNT(*) FROM product WHERE product_brand = ?";
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, brand);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
    public List<ProductModel> getAllProducts() {
        List<ProductModel> products = new ArrayList<>();
        String query = "SELECT * FROM product";
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                ProductModel product = new ProductModel();
                product.setName(rs.getString("product_name"));
                product.setDescription(rs.getString("product_description"));
                product.setPrice(rs.getInt("product_price"));
                product.setImageUrl(rs.getString("imageUrl"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
    public List<ProductModel> searchProductsByKeyword(String keyword) {
        List<ProductModel> products = new ArrayList<>();
        String query = "SELECT * FROM product WHERE product_brand LIKE ? OR product_name LIKE ?";

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {

            String wildcard = "%" + keyword + "%";
            stmt.setString(1, wildcard);
            stmt.setString(2, wildcard);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    ProductModel product = new ProductModel();
                    product.setName(rs.getString("product_name"));
                    product.setDescription(rs.getString("product_description"));
                    product.setPrice(rs.getInt("product_price"));
                    product.setImageUrl(rs.getString("imageUrl"));
                    products.add(product);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

}