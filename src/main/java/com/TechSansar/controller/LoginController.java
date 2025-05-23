package com.TechSansar.controller;

import java.io.IOException;

import com.TechSansar.model.UserModel;
import com.TechSansar.service.LoginService;
import com.TechSansar.util.CookiesUtil;
import com.TechSansar.util.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * LoginController is responsible for handling login requests. It interacts with
 * the LoginService to authenticate users.
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final LoginService loginService;

	/**
	 * Constructor initializes the LoginService.
	 */
	public LoginController() {
		this.loginService = new LoginService();
	}

	/**
	 * Handles GET requests to the login page.
	 *
	 * @param request  HttpServletRequest object
	 * @param response HttpServletResponse object
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	}

	/**
	 * Handles POST requests for user login.
	 *
	 * @param request  HttpServletRequest object
	 * @param response HttpServletResponse object
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
	    String username = req.getParameter("username");
	    String password = req.getParameter("password");

	    UserModel userModel = new UserModel(username, password);
	    Boolean loginStatus = loginService.loginUser(userModel);

	    if (loginStatus != null && loginStatus) {
	        // Get user_id from the service
	        int userId = loginService.getUserIdByUsername(username);

	        // Store user_id and username in session
	        SessionUtil.setAttribute(req, "userId", userId);
	        SessionUtil.setAttribute(req, "username", username);

	        // Get role and store it in session and as a cookie
	        String role = loginService.getRoleByUsername(username);
	        SessionUtil.setAttribute(req, "role", role);
	        CookiesUtil.addCookie(resp, "role", role, 5 * 30);

	        System.out.println("User logged in with role: " + role);

	        // Redirect based on the role
	        if ("Admin".equalsIgnoreCase(role)) {
	            resp.sendRedirect(req.getContextPath() + "/admin/dashboard");
	        } else {
	            resp.sendRedirect(req.getContextPath() + "/home");
	        }
	    } else {
	        // Handle login failure
	        handleLoginFailure(req, resp, loginStatus);
	    }
	}


	/**
	 * Handles login failures by setting attributes and forwarding to the login
	 * page.
	 *
	 * @param req         HttpServletRequest object
	 * @param resp        HttpServletResponse object
	 * @param loginStatus Boolean indicating the login status
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	private void handleLoginFailure(HttpServletRequest req, HttpServletResponse resp, Boolean loginStatus)
			throws ServletException, IOException {
		String errorMessage;
		if (loginStatus == null) {
			errorMessage = "Our server is under maintenance. Please try again later!";
		} else {
			errorMessage = "User credential mismatch. Please try again!";
		}
		req.setAttribute("error", errorMessage);
		req.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(req, resp);
	}

}