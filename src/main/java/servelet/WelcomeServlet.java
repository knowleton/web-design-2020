package servelet;
import entity.*;
import datafilter.*;
import filter.*;
import servelet.*;
import finder.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/welcome")
public class WelcomeServlet extends HttpServlet {
    private static final Logger LOGGER=Logger.getLogger(WelcomeServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user=(User)req.getSession().getAttribute("user");
        if(user!=null)
        {
            resp.sendRedirect(req.getContextPath()+"/userWelcome.jsp");
            LOGGER.info("name:"+user.name);
            LOGGER.info("pass"+user.passsword);
        }
        else{
                resp.sendRedirect(req.getContextPath()+"/login");
        }
    }

}