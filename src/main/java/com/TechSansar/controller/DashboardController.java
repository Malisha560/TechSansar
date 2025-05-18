package com.TechSansar.controller;

import com.TechSansar.model.ProductModel;
import com.TechSansar.service.DashboardService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DashboardController", urlPatterns = {"/admin/dashboard"})
public class DashboardController extends HttpServlet {

    private DashboardService dashboardService;

    @Override
    public void init() throws ServletException {
        dashboardService = new DashboardService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	String role = (String) request.getSession().getAttribute("role");
    	System.out.println("Session role for dashboard access: " + role);

    	if (role == null || !role.equalsIgnoreCase("admin")) {
    	    System.out.println("Redirecting to login due to role: " + role);
    	    response.sendRedirect(request.getContextPath() + "/login");
    	    return;
    	}

        try {
            // Fetch dashboard stats from service
            String totalProducts = dashboardService.getTotalProducts();
            String totalUsers = dashboardService.getTotalUsers();
            String totalOrders = dashboardService.getTotalOrders();

            List<ProductModel> lowStockProducts = dashboardService.getLowStockProducts();

            // Set attributes for JSP
            request.setAttribute("totalProducts", totalProducts);
            request.setAttribute("totalUsers", totalUsers);
            request.setAttribute("totalOrders", totalOrders);
            request.setAttribute("lowStockProducts", lowStockProducts);

            // Forward to dashboard JSP
            request.getRequestDispatcher("/WEB-INF/pages/admin/dashboard.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/");
        }
    }
}