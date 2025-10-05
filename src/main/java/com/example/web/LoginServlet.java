package main.java.com.example.web;

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