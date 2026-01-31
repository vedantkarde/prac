import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/RegisterServlet")
@MultipartConfig
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String department = request.getParameter("department");
        String dob = request.getParameter("dob");

        String[] skillsArray = request.getParameterValues("skills");
        String skills = String.join(",", skillsArray);

        Part photo = request.getPart("photo");

        // Call DAO
        boolean status = UserDAO.saveUser(name, email, password, gender,
                                          department, skills, dob);

        if (status) {
            response.sendRedirect("success.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
