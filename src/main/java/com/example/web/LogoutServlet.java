package com.example.web;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 * Handles the user logout process by invalidating the current session.
 * Mapped to the URL pattern "/logout" to match the link in user_details.jsp.
 */
@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Handles HTTP GET requests (e.g., when a user clicks a logout link).
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 1. Get the current session, but don't create a new one if it doesn't exist
        HttpSession session = request.getSession(false);

        // 2. Check if a session exists and invalidate it
        if (session != null) {
            session.invalidate();
            // Optional: You could add a log message here
            System.out.println("User session invalidated successfully.");
        }

        // 3. Redirect the user back to the main public page
        response.sendRedirect("index.jsp");
    }
    
    // Note: Logout is typically handled via GET for simplicity, 
    // but a POST request could be used for higher security (CSRF protection).
    // For this simple application, doGet is sufficient.
}