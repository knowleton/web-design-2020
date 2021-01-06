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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final Logger LOGGER=Logger.getLogger(LoginServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //LOGGER.info("imgonging");

        resp.sendRedirect(req.getContextPath()+"/userlogin.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //LOGGER.info("imgonging");
        String username=req.getParameter("userName");
        String password=req.getParameter("passWord");
        ///Util
        User user=new User("admin","admin");
        String url=null;
        if (username.equals(user.name)&&password.equals(user.passsword)){
            req.getSession().setAttribute("user",user);
            url="/welcome";
        }
        else {
            url="/userlogin.jsp";
        }
        resp.sendRedirect(req.getContextPath()+url);
    }
}
