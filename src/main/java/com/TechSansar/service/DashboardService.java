package com.TechSansar.service;

import com.TechSansar.config.DbConfig;
import com.TechSansar.model.ProductModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DashboardService {
    private Connection dbConn;
    private boolean isConnectionError = false;

    public DashboardService() {
        try {
            dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            isConnectionError = true;
        }
    }

    public String getTotalProducts() {
        if (isConnectionError) return null;

        String query = "SELECT COUNT(*) AS total FROM product";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            ResultSet result = stmt.executeQuery();
            if (result.next()) return result.getString("total");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getTotalUsers() {
        if (isConnectionError) return null;

        String query = "SELECT COUNT(*) AS total FROM user";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            ResultSet result = stmt.executeQuery();
            if (result.next()) return result.getString("total");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String getTotalOrders() {
        if (isConnectionError) return null;

        String query = "SELECT COUNT(*) AS total FROM orders";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            ResultSet result = stmt.executeQuery();
            if (result.next()) return result.getString("total");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    

    public List<ProductModel> getLowStockProducts() {
        if (isConnectionError) return null;

        String query = "SELECT product_name, imageUrl, product_price, product_description, stock FROM product WHERE stock < 5 ORDER BY stock ASC";
        List<ProductModel> products = new ArrayList<>();
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                products.add(new ProductModel(
                    rs.getString("product_name"),
                    rs.getString("imageUrl"),
                    rs.getInt("product_price"),
                    rs.getString("product_description"),
                    rs.getInt("stock")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}
