package com.TechSansar.service;

import com.TechSansar.model.ProductModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdminProductService {

    // Replace with your actual DB details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/techsansar";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "";

    // Get all products
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
                product.setStock(rs.getInt("stock"));
                products.add(product);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }	

        return products;
    }

    // Get product by name
    public ProductModel getProductByName(String name) {
        String query = "SELECT * FROM product WHERE product_name = ?";
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, name);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    ProductModel product = new ProductModel();
                    product.setName(rs.getString("product_name"));
                    product.setDescription(rs.getString("product_description"));
                    product.setPrice(rs.getInt("product_price"));
                    product.setImageUrl(rs.getString("imageUrl"));
                    product.setStock(rs.getInt("stock"));
                    return product;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Delete product by name
    public boolean deleteProductByName(String name) {
        String query = "DELETE FROM product WHERE product_name = ?";
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, name);
            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Update product by name
    public boolean updateProductByName(String originalName, ProductModel product) {
        String query = "UPDATE product SET product_name=?, imageUrl=?, product_price=?, product_description=?, stock=? WHERE product_name=?";
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, product.getName());
            stmt.setString(2, product.getImageUrl());
            stmt.setInt(3, product.getPrice());
            stmt.setString(4, product.getDescription());
            stmt.setInt(5, product.getStock());
            stmt.setString(6, originalName);
            return stmt.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
