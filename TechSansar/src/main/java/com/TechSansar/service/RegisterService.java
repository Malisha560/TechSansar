package com.TechSansar.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.TechSansar.config.DbConfig;
import com.TechSansar.model.UserModel;



/**
 * RegisterService handles the registration of new students. It manages database
 * interactions for student registration.
 */
public class RegisterService {

	private Connection dbConn;

	/**
	 * Constructor initializes the database connection.
	 */
	public RegisterService() {
		try {
			this.dbConn = DbConfig.getDbConnection();
			System.out.println("DB Connection: " + (dbConn != null ? "Connected " : "Null "));
		} catch (SQLException | ClassNotFoundException ex) {
			System.err.println("Database connection error: " + ex.getMessage());
			ex.printStackTrace();
		}
	}

	/**
	 * Registers a new user in the database.
	 *
	 * @param userModel the student details to be registered
	 * @return Boolean indicating the success of the operation
	 */
	public Boolean registerUser(UserModel userModel) {
		if (dbConn == null) {
			System.err.println("Database connection is not available.");
			return null;
		}

		String roleQuery = "SELECT role_id FROM role WHERE name = ?";
		String insertQuery = "INSERT INTO users (first_name, last_name, username, gender, email, number, password, role_id) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

		try (PreparedStatement roleStmt = dbConn.prepareStatement(roleQuery);
			 PreparedStatement insertStmt = dbConn.prepareStatement(insertQuery)) {
			
			String encryptedPassword = userModel.getPassword(); // Already encrypted

			if (encryptedPassword == null) {
			    System.err.println("Encryption failed for user: " + userModel.getUserName());
			    return null;
			}

			
			// Insert student details
			insertStmt.setString(1, userModel.getFirstName());
			insertStmt.setString(2, userModel.getLastName());
			insertStmt.setString(3, userModel.getUserName());
			insertStmt.setString(4, userModel.getGender());
			insertStmt.setString(5, userModel.getEmail());
			insertStmt.setString(6, userModel.getNumber());
			insertStmt.setString(7, encryptedPassword);
			insertStmt.setInt(8, 2);

			return insertStmt.executeUpdate() > 0;
		} catch (SQLException e) {
			System.err.println("Error during user registration: " + e.getMessage());
			e.printStackTrace();
			return null;
		}
	}
}