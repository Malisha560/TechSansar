package com.TechSansar.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/contactus")
public class ContactusController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handle POST request for form submission
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get parameters from the form submission
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String message = request.getParameter("message");

        // Simple validation for required fields
        if (name == null || name.trim().isEmpty() || email == null || email.trim().isEmpty() || message == null || message.trim().isEmpty()) {
            // Set error attribute and forward back to contact page
            request.setAttribute("error", "Please fill out all required fields.");
            request.getRequestDispatcher("/WEB-INF/pages/contactus.jsp").forward(request, response);
            return;
        }

        // Log or save the contact message for now (this could be saved to a database or forwarded to an admin)
        System.out.println("Contact Form Submission:");
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Phone: " + phone);
        System.out.println("Message: " + message);

        // Set a success attribute for confirmation message
        request.setAttribute("contactSuccess", true);

        // Optionally: Save the contact info in a database or send an email to admin
        // For example: ContactService.saveMessage(name, email, phone, message);

        // Forward back to the contact page with success message
        request.getRequestDispatcher("/WEB-INF/pages/contactus.jsp").forward(request, response);
    }

    // Handle GET request to display the contact form
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
        // Forward to the contact page
        request.getRequestDispatcher("/WEB-INF/pages/contactus.jsp").forward(request, response);
    }
}
