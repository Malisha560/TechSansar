package com.TechSansar.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * Unified Product Controller for all product pages.
 * Author: Malisha Kushwaha
 */
@WebServlet("/product")
public class Product extends HttpServlet {

    // List of allowed product page names (match JSP file names)
    private static final List<String> validPages = Arrays.asList(
        "AsusL", "AcerL","AlienwareL", "AppleL", 
        "DellD", "AppleD", "AlienwareD","AcerD", 
        "charger", "airpods", "watch", 
        "AppleP", "SamsungP", "OnePlusP", "XiaomiP", "VivoP",
        "Epson", "hp", "canon"
    );

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String page = request.getParameter("page");

        if (page != null && validPages.contains(page)) {
            String jspPath = "/WEB-INF/pages/" + page + ".jsp";
            request.getRequestDispatcher(jspPath).forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Product page not found or invalid.");
        }
    }
}