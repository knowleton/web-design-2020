import com.mysql.cj.jdbc.Blob;

import javax.imageio.IIOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.logging.Logger;

@WebServlet("/del")
public class delServlet extends HttpServlet {
    private static final Logger LOGGER=Logger.getLogger(WelcomeServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("newsid"));
        String sql="DELETE from news where id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
        ) {
            st.setInt(1,id);
            st.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        resp.sendRedirect(req.getContextPath()+"/userWelcome.jsp");


    }

}