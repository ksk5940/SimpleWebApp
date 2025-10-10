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
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (UserStore.validate(email, password)) {
            // Retrieve name from UserStore.java
            String name = UserStore.getUser(email)[0];
            
            // --- FIX: Change from forwarding to session management and redirect ---
            
            // 1. Create a String array to hold user data (name and email) 
            //    to match your UserStore implementation.
            String[] userModel = new String[]{name, email}; 

            // 2. Get the session (or create a new one)
            HttpSession session = req.getSession();
            
            // 3. Set the user array into the session under the key "user".
            session.setAttribute("user", userModel);
            
            // 4. Redirect to the session-based user details page.
            res.sendRedirect("user_details.jsp");
            
            // --- FIX END ---
            
        } else {
            // Redirect back to login page with an error parameter
            res.sendRedirect("login.jsp?error=true");
        }
    }
}