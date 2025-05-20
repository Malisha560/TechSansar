package com.TechSansar.service;

import com.TechSansar.model.UserModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserlistService {

    public List<UserModel> getAllUsers() {
        List<UserModel> users = new ArrayList<>();
        String query = "SELECT user_id, first_name, last_name, email, number FROM users";

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/techsansar", "root", "");
                 PreparedStatement stmt = conn.prepareStatement(query);
                 ResultSet rs = stmt.executeQuery()) {

                // Iterate through result set
                while (rs.next()) {
                    UserModel user = new UserModel(
                        rs.getInt("user_id"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("email"),
                        rs.getString("number")
                    );
                    users.add(user);
                    
                    // Debug print to console
                    System.out.println("Loaded user: " + user.getFirstName() + " " + user.getLastName());
                }

            }

        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Database error occurred.");
            e.printStackTrace();
        }

        return users;
    }
}