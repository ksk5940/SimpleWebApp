package main.java.com.example.web;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        UserStore.addUser(name, email, password);
        res.sendRedirect("index.jsp");
    }
}