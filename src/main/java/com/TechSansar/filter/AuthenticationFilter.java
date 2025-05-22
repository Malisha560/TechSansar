package com.TechSansar.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.TechSansar.util.CookiesUtil;
import com.TechSansar.util.SessionUtil;

@WebFilter(asyncSupported = true, urlPatterns = "/*")
public class AuthenticationFilter implements Filter {

	private static final String LOGIN = "/login";
	private static final String REGISTER = "/register";
	private static final String HOME = "/home";
	private static final String ROOT = "/";
	private static final String DASHBOARD = "/admin/dashboard";
	private static final String ABOUT = "/aboutus";
	private static final String CONTACT = "/contactus";
	private static final String PRODUCT = "/product";
	private static final String CART = "/mycart";
	private static final String PROFILE = "/profile";
	private static final String PRODUCT_INFO = "/admin/productinfo";
	private static final String USERLIST = "/admin/userlist";
	private static final String AAYUSHCV = "/aayushcv";
	private static final String BIJEMCV = "/bijemcv";
	private static final String MALICV = "/malicv";
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// Initialization logic, if required
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
	        throws IOException, ServletException {

	    HttpServletRequest req = (HttpServletRequest) request;
	    HttpServletResponse res = (HttpServletResponse) response;

	    String uri = req.getRequestURI();
	   
	    String contextPath = req.getContextPath();

	    if (uri.equals(contextPath + "/logout")) {
	        // Invalidate session
	        req.getSession().invalidate();

	        // Remove role cookie
	        CookiesUtil.deleteCookie(res, "role");

	        // Redirect to login page or home page after logout
	        res.sendRedirect(contextPath + LOGIN);
	        return;  // Don't continue with filter chain
	    }

	    // Allow static resources to pass through
	    if (uri.endsWith(".png") || uri.endsWith(".jpg") || uri.endsWith(".css")
	            || uri.endsWith(".webp") || uri.endsWith(".avif") || uri.endsWith(".js")
	            || uri.endsWith(".woff") || uri.endsWith(".ttf")) {
	        chain.doFilter(request, response);
	        return;
	    }

	    boolean isLoggedIn = SessionUtil.getAttribute(req, "username") != null;
	    String userRole = CookiesUtil.getCookie(req, "role") != null ? CookiesUtil.getCookie(req, "role").getValue() : null;

	    // Allow unauthenticated users to access the profile pages
	    if (uri.equals(contextPath + AAYUSHCV) || uri.equals(contextPath + BIJEMCV) || uri.equals(contextPath + MALICV) || uri.startsWith(contextPath + "/cv")) {
	        chain.doFilter(request, response);
	        return;
	    }

	    if ("Admin".equals(userRole)) {
	        // Admin logged in

	        // Redirect admin away from login or register pages
	        if (uri.endsWith(LOGIN) || uri.endsWith(REGISTER)) {
	            res.sendRedirect(contextPath + DASHBOARD);
	            return;
	        }

	        // Allow access to dashboard and admin pages starting with /admin/
	        if (uri.equals(contextPath + DASHBOARD) || uri.startsWith(contextPath + "/admin")) {
	            chain.doFilter(request, response);
	            return;
	        }

	        // Redirect admin trying to access other pages to dashboard
	        res.sendRedirect(contextPath + DASHBOARD);
	        return;

	    } else if ("User".equals(userRole)) {
	        // User logged in

	        // Redirect user away from login/register pages
	        if (uri.endsWith(LOGIN) || uri.endsWith(REGISTER)) {
	            res.sendRedirect(contextPath + HOME);
	            return;
	        }

	        // Allow access to user pages
	        if (uri.equals(contextPath + HOME) || uri.equals(contextPath + ROOT)
	                || uri.equals(contextPath + ABOUT) || uri.equals(contextPath + CONTACT)
	                || uri.equals(contextPath + PRODUCT) || uri.equals(contextPath + CART)
	                || uri.equals(contextPath + PROFILE)) {
	            chain.doFilter(request, response);
	            return;
	        }

	        // Prevent user from accessing admin dashboard or admin pages
	        if (uri.equals(contextPath + DASHBOARD) || uri.equals(contextPath + PRODUCT_INFO)
	                || uri.equals(contextPath + USERLIST)) {
	            res.sendRedirect(contextPath + HOME);
	            return;
	        }

	        // Redirect to home if other URLs accessed
	        res.sendRedirect(contextPath + HOME);
	        return;

	    } else {
	        // Not logged in

	        // Allow access to login, register, home, root, product, and profile pages
	        if (uri.endsWith(LOGIN) || uri.endsWith(REGISTER) || uri.equals(contextPath + HOME)
	                || uri.equals(contextPath + ROOT) || uri.equals(contextPath + PRODUCT)
	                || uri.equals(contextPath + ABOUT) || uri.equals(contextPath + CONTACT)
	                || uri.equals(contextPath + AAYUSHCV) || uri.equals(contextPath + BIJEMCV)
	                || uri.equals(contextPath + MALICV) || uri.startsWith(contextPath + "/cv")) {
	            chain.doFilter(request, response);
	            return;
	        }

	        // Redirect others to login page
	        res.sendRedirect(contextPath + LOGIN);
	        return;
	    }
	}


	@Override
	public void destroy() {
		// Cleanup logic, if required
	}
}