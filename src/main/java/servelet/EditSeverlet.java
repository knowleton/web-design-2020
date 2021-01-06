package servelet;
import entity.*;
import entity.*;
import datafilter.*;
import filter.*;
import servelet.*;
import finder.*;
import datafilter.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Base64;
import java.util.logging.Logger;

@WebServlet("/addedit")
@MultipartConfig(fileSizeThreshold = 1024*1024*5)
public class EditSeverlet extends HttpServlet {
    private static final Logger LOGGER=Logger.getLogger(WelcomeServlet.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOGGER.info(String.valueOf(req.getAttribute("newid")));
        News news=new News();
        news.title=req.getParameter("title");
        news.content=req.getParameter("content");
        ///photoget
        Part part=req.getPart("image");///name是image
        part.getInputStream().readAllBytes();
        String s= Base64.getEncoder().encodeToString(part.getInputStream().readAllBytes());
        news.photo=s;
        ///perfect s-photo



        LOGGER.info("P"+req.getParameter("inputitle"));
        LOGGER.info("A:"+String.valueOf(req.getAttribute("inputitle")));
        LOGGER.info("111111"+news.title);
        LOGGER.info(news.content);








        String sql="Insert INTO news(title,content,photo) values(?,?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ) {
            LOGGER.info(news.title);
            LOGGER.info(news.content);
            LOGGER.info(news.photo);
            st.setString(1,news.title);
            st.setString(2,news.content);
            st.setString(3,news.photo);
            st.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/userWelcome.jsp");


    }

}