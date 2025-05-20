package com.TechSansar.service;

import com.TechSansar.model.UserModel;
import com.TechSansar.config.DbConfig;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProfileService {

    public UserModel getUserByUsername(String username) {
        if (username == null) {
            return null;
        }

        UserModel user = null;

        try (Connection conn = DbConfig.getDbConnection()) {
            String sql = "SELECT * FROM users WHERE username = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                user = new UserModel();
                user.setUserName(rs.getString("username"));
                user.setFirstName(rs.getString("first_name"));
                user.setLastName(rs.getString("last_name"));
                user.setEmail(rs.getString("email"));
                user.setNumber(rs.getString("phone"));
                user.setGender(rs.getString("gender"));
                user.setProfile_pic(rs.getString("profile_pic")); // if you support image uploads
                // Add role setting here if needed
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    public boolean updateUserProfile(UserModel user) {
        try (Connection conn = DbConfig.getDbConnection()) {
            String sql = "UPDATE users SET first_name = ?, last_name = ?, phone = ?, gender = ?"
                       + (user.getProfile_pic() != null ? ", profile_pic = ?" : "")
                       + " WHERE username = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getFirstName());
            stmt.setString(2, user.getLastName());
            stmt.setString(3, user.getNumber());
            stmt.setString(4, user.getGender());

            int index = 5;
            if (user.getProfile_pic() != null) {
                stmt.setString(5, user.getProfile_pic());
                index++;
            }

            stmt.setString(index, user.getUserName());

            return stmt.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
