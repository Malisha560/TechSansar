package com.TechSansar.controller;

import com.TechSansar.model.UserModel;
import com.TechSansar.service.UserService;
import com.TechSansar.service.UserlistService;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet("/admin/userlist")
public class UserlistController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	UserlistService userService = new UserlistService();
    	List<UserModel> users = userService.getAllUsers();
    	request.setAttribute("users", users);
        request.getRequestDispatcher("/WEB-INF/pages/admin/userlist.jsp").forward(request, response);
    }
}
