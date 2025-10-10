package com.example.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; // New Import

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String email = req.getParameter("email"); // [cite: 9]
        String password = req.getParameter("password");

        if (UserStore.validate(email, password)) { // [cite: 10]
            String name = UserStore.getUser(email)[0]; // [cite: 11]
            
            // --- FIX: Change from forwarding to session management and redirect ---
            
            // 1. Create a simple User model object to store in session
            //    Using String[] {name, email} to fit your UserStore implementation
            String[] userModel = new String[]{name, email}; 

            // 2. Get the session
            HttpSession session = req.getSession();
            
            // 3. Set the user object in the session
            session.setAttribute("user", userModel);
            
            // 4. Redirect to the session-based user details page
            res.sendRedirect("user_details.jsp");
            
            // --- FIX END ---
            
        } else {
            // Original error handling for invalid credentials
            res.sendRedirect("login.jsp?error=true");
        }
    }
}