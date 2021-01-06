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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

@WebFilter("/userWelcome.jsp")
public class userWelcomeFilter extends HttpFilter {
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

        List<News>newsList=new ArrayList<>();
        String sql="select id,title,content,update_time  from news ORDER by update_time DESC";
        //News news=new News(1,"asd","wesdfvddfsdvcxsdfv",new Date());
        //newsList.add(news);
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news = new News(rs.getInt("id"), rs.getString("title"),rs.getString("content"), rs.getTimestamp("update_time"));

                LOGGER.info("111");

                newsList.add(news);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }



        //LOGGER.info(String.valueOf(news.id));

        req.setAttribute("newslist",newsList);

        User user=(User)req.getSession().getAttribute("user");
        if(user!=null){
            chain.doFilter(req,resp);
        }else{
            resp.sendRedirect(req.getContextPath()+"/login");
        }



    }

}