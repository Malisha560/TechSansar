package com.TechSansar.controller;

import java.io.IOException;
import com.TechSansar.model.UserModel;
import com.TechSansar.service.ProfileService;
import com.TechSansar.util.ImageUtil; // Include ImageUtil for validation
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/profile")
public class ProfileController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final ProfileService profileService = new ProfileService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String username = (String) session.getAttribute("username");

        // Fetch full user details using ProfileService (e.g., from DB)
        UserModel user = profileService.getUserByUsername(username); // <== implement this

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        session.setAttribute("user", user); // So profile.jsp can use it
        request.getRequestDispatcher("/WEB-INF/pages/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");
        String fullName = request.getParameter("fullName");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");

        String firstName = null;
        String lastName = null;

        if (fullName != null && !fullName.trim().isEmpty()) {
            String[] names = fullName.trim().split(" ", 2);
            firstName = names[0];
            lastName = names.length > 1 ? names[1] : "";
        }

        // Optional: handle profile picture upload with validation
        Part filePart = request.getPart("profilePic");
        String profilePicName = null;

        if (filePart != null && filePart.getSize() > 0) {
            ImageUtil imageUtil = new ImageUtil();
            boolean isUploaded = imageUtil.uploadImage(filePart, getServletContext().getRealPath("/"), "profilePics");

            if (!isUploaded) {
                request.setAttribute("errorMessage", "File upload failed. Ensure the file is of valid type and size.");
                request.getRequestDispatcher("/WEB-INF/pages/profile.jsp").forward(request, response);
                return; // Exit if validation failed
            }

            // Construct file name and path for the uploaded image
            profilePicName = "profilePics/" + imageUtil.getImageNameFromPart(filePart);
        }

        // Create the UserModel object with the updated profile details
        UserModel updatedUser = new UserModel();
        updatedUser.setUserName(username);
        updatedUser.setFirstName(firstName);
        updatedUser.setLastName(lastName);
        updatedUser.setNumber(phone);
        updatedUser.setGender(gender);

        if (profilePicName != null) {
            updatedUser.setProfile_pic(profilePicName); // Set profile picture path if uploaded
        }

        // Update the profile information in the database
        boolean updated = profileService.updateUserProfile(updatedUser);

        if (updated) {
            session.setAttribute("user", profileService.getUserByUsername(username));
        }

        // Redirect back to the profile page
        response.sendRedirect("profile");
    }
}
