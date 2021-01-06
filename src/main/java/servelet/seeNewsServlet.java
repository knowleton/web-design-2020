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

@WebServlet("/see")
public class seeNewsServlet extends HttpServlet {
    private static final Logger LOGGER=Logger.getLogger(WelcomeServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int myid= Integer.parseInt(req.getParameter("newsid"));



    }

}