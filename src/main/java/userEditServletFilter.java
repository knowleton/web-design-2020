import javax.imageio.IIOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
import java.util.logging.Logger;

@WebFilter("/userEdit.jsp")
public class userEditServletFilter extends HttpFilter {
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