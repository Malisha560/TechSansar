package com.TechSansar.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.TechSansar.config.DbConfig;
import com.TechSansar.model.UserModel;
import com.TechSansar.util.PasswordUtil;

public class LoginService {

    private Connection dbConn;
    private boolean isConnectionError = false;

    public LoginService() {
        try {
            dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            isConnectionError = true;
        }
    }

    /**
     * Validates the user credentials against the database records.
     *
     * @param userModel the UserModel object containing user credentials
     * @return true if the user credentials are valid, false otherwise; null if connection error
     */
    public Boolean loginUser(UserModel userModel) {
        if (isConnectionError) {
            System.out.println("Connection Error!");
            return null;
        }

        String query = "SELECT username, password FROM users WHERE username = ?";
        
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setString(1, userModel.getUserName());
            ResultSet result = stmt.executeQuery();

            if (result.next()) {
                return validatePassword(result, userModel);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

        return false;
    }

    /**
     * Validates the password retrieved from the database.
     *
     * @param result     the ResultSet containing the username and encrypted password
     * @param userModel  the UserModel object containing user input
     * @return true if credentials match; false otherwise
     * @throws SQLException if result processing fails
     */
    private boolean validatePassword(ResultSet result, UserModel userModel) throws SQLException {
        String dbUsername = result.getString("username");
        String dbPassword = result.getString("password");

        String decrypted = PasswordUtil.decrypt(dbPassword, dbUsername); // username as salt

        // Debug log
        System.out.println("Entered Username: " + userModel.getUserName());
        System.out.println("Entered Password: " + userModel.getPassword());
        System.out.println("Decrypted Password from DB: " + decrypted);

        return dbUsername.equals(userModel.getUserName())
                && decrypted != null
                && decrypted.equals(userModel.getPassword());
    }
}
