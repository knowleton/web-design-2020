package datafilter;
import entity.*;
import datafilter.*;
import filter.*;
import servelet.*;
import finder.*;
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

@WebFilter("/newsshower.jsp")
public class newsShowerDataFilter extends HttpFilter {
    private static final Logger LOGGER=Logger.getLogger(newsShowerDataFilter.class.getName());

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse resp , FilterChain chain) throws ServletException, IOException {

        int id= Integer.parseInt(req.getParameter("newsid"));
        String sql="SELECT * from news where id=?";
        String photo = null;
       // List<News>newsList=new ArrayList<>();
        News news=new News();
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
        ) {
            st.setInt(1,id);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {

                news.id=rs.getInt("id");
                news.title=rs.getString("title");
                news.content=rs.getString("content");
                news.updatetime=rs.getTimestamp("update_time");
                photo=rs.getString("photo");
                LOGGER.info("222");
                LOGGER.info(news.content);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        LOGGER.info(news.title);

        req.setAttribute("news",news);
        req.setAttribute("photo",photo);
        chain.doFilter(req,resp);


    }

}