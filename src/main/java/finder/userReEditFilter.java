package finder;
import entity.*;
import datafilter.*;
import filter.*;
import servelet.*;
import finder.*;
import servelet.WelcomeServlet;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

@WebFilter("/userReEdit.jsp")
public class userReEditFilter extends HttpFilter {
    private static final Logger LOGGER=Logger.getLogger(WelcomeServlet.class.getName());

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse resp , FilterChain chain) throws ServletException, IOException {
        List<String> exculdes=List.of(req.getContextPath()+"/login");
        for (String e:exculdes){
            if(e.equals(req.getServletPath())){
                chain.doFilter(req,resp);
                return;
            }
        }

        User user=(User)req.getSession().getAttribute("user");
        if(user!=null){
            chain.doFilter(req,resp);
        }else{
            resp.sendRedirect(req.getContextPath()+"/login");
        }



    }

}