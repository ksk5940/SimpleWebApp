package com.example.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (UserStore.validate(email, password)) {
            String name = UserStore.getUser(email)[0];
            req.setAttribute("name", name);
            req.setAttribute("email", email);
            req.getRequestDispatcher("welcome.jsp").forward(req, res);
        } else {
            res.sendRedirect("login.jsp?error=true");
        }
    }
}