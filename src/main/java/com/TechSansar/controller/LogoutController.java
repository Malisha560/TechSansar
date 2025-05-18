package com.TechSansar.controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.TechSansar.util.CookiesUtil;
import com.TechSansar.util.SessionUtil;

@WebServlet(asyncSupported = true, urlPatterns = {"/logout"})
public class LogoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Remove all session attributes
        SessionUtil.invalidateSession(request);
       
        // Remove cookies
        CookiesUtil.deleteCookie(response, "role");
       
        // Redirect to home page
        response.sendRedirect(request.getContextPath() + "/home");
    }
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
