package com.TechSansar.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.TechSansar.model.UserModel;
import com.TechSansar.model.RoleModel;
import com.TechSansar.config.DbConfig;

public class UserService {

    public List<UserModel> getAllUsers() {
        List<UserModel> users = new ArrayList<>();

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM users");
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                UserModel user = new UserModel();
                user.setId(rs.getInt("id"));
                user.setFirstName(rs.getString("first_name"));
                user.setLastName(rs.getString("last_name"));
                user.setUserName(rs.getString("username"));
                user.setGender(rs.getString("gender"));
                user.setEmail(rs.getString("email"));
                user.setNumber(rs.getString("number"));
                user.setPassword(rs.getString("password"));

                // Assuming role_id is in the table and maps to a RoleModel
                RoleModel role = new RoleModel();
                role.setrole_id(rs.getInt("role_id")); // Optional: you can join and get role name too
                user.setProgram(role);

                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;
    }
}
