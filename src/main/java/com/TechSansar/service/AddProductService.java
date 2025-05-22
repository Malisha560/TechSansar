package com.TechSansar.service;

import com.TechSansar.model.ProductModel;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class AddProductService {

    public boolean addProduct(ProductModel product) {
        boolean isSuccess = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/techsansar", "root", "");

            String sql = "INSERT INTO product (product_name, product_description, product_brand, product_price, imageUrl) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setString(2, product.getDescription());
            ps.setString(3, product.getProduct_brand()); 
            ps.setInt(4, product.getPrice());
            ps.setString(5, product.getImageUrl());

            int rows = ps.executeUpdate();
            isSuccess = rows > 0;

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
}
