package com.TechSansar.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class CVController
 */
@WebServlet("/cv")
public class CVController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get the profile parameter from the request
        String profile = request.getParameter("profile");
        System.out.println("Profile: " + profile);  // Check if profile value is correct

        // Forward to the corresponding JSP based on profile name
        if ("aayush".equalsIgnoreCase(profile)) {
            request.getRequestDispatcher("/WEB-INF/pages/aayushcv.jsp").forward(request, response);
        } else if ("bijem".equalsIgnoreCase(profile)) {
            request.getRequestDispatcher("/WEB-INF/pages/bijemcv.jsp").forward(request, response);
        } else if ("mali".equalsIgnoreCase(profile)) {
            request.getRequestDispatcher("/WEB-INF/pages/malicv.jsp").forward(request, response);
        } else {
            // If no matching profile found, redirect to home or error page
            response.sendRedirect(request.getContextPath() + "/home");
        }
    }
}
