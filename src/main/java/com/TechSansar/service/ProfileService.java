package com.TechSansar.service;

import com.TechSansar.model.UserModel;
import com.TechSansar.model.RoleModel;

public class ProfileService {

    // Return dummy UserModel using existing RoleModel class
    public UserModel getUserByUsername(String username) {
        if (username == null) {
            return null;
        }

        // Create mock role
        RoleModel role = new RoleModel();
        role.setrole_id(2);
        role.setname("User");
        role.settype("Standard");

        // Create mock user
        UserModel user = new UserModel();
        user.setUserName(username);
        user.setFirstName("Nischay");
        user.setLastName("Shakya");
        user.setEmail("nischay@example.com");
        user.setNumber("9800000000");
        user.setGender("Male");
        

        return user;
    }
}