package com.TechSansar.controller;

import java.io.IOException;

import com.TechSansar.model.UserModel;
import com.TechSansar.service.ProfileService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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

        //  Fetch full user details using ProfileService (e.g., from DB)
        UserModel user = profileService.getUserByUsername(username); // <== implement this

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        session.setAttribute("user", user); // So profile.jsp can use it
        request.getRequestDispatcher("/WEB-INF/pages/profile.jsp").forward(request, response);
    }
}