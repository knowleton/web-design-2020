package servelet;
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

@WebServlet("/reEditSubmit")
@MultipartConfig(fileSizeThreshold = 1024*1024*5)
public class userReEditSubmitServlet extends HttpServlet {
    private static final Logger LOGGER=Logger.getLogger(WelcomeServlet.class.getName());
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));

        ///photoget
        Part part=req.getPart("image");///name是image
        part.getInputStream().readAllBytes();
        String s= Base64.getEncoder().encodeToString(part.getInputStream().readAllBytes());
        //news.photo=s;
        ///perfect s-photo


        String sql="UPDATE news set title=?,content=?,photo=? where id=? ";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
        ) {
            st.setInt(4,id);
            st.setString(1,req.getParameter("title"));
            st.setString(2,req.getParameter("content"));
            st.setString(3,s);
            st.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/userWelcome.jsp");


    }

}