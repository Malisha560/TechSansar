package com.TechSansar.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.TechSansar.config.DbConfig;
import com.TechSansar.model.CartModel;

public class CartService {

    private Connection dbConn;

    public CartService() {
        try {
            this.dbConn = DbConfig.getDbConnection();
            System.out.println("DB Connection: " + (dbConn != null ? "Connected " : "Null "));
        } catch (SQLException | ClassNotFoundException ex) {
            System.err.println("Database connection error: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    /**
     * Adds a product to the cart in the database
     *
     * @param cartModel the cart details
     * @return true if the product was successfully added, false otherwise
     */
    public boolean addProductToCart(CartModel cartModel) {
        if (dbConn == null) {
            System.err.println("Database connection is not available.");
            return false;
        }

        String insertQuery = "INSERT INTO cart (user_id, product_name, image_url, price, quantity) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = dbConn.prepareStatement(insertQuery)) {
            stmt.setInt(1, cartModel.getUserId());
            stmt.setString(2, cartModel.getProductName());
            stmt.setString(3, cartModel.getImageUrl());
            stmt.setInt(4, cartModel.getPrice());
            stmt.setInt(5, cartModel.getQuantity());

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Error during adding product to cart: " + e.getMessage());
            e.printStackTrace();
            return false;
        }
    }
}
