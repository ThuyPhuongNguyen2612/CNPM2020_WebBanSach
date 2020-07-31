package bookStore.loginFacebook;

import com.restfb.types.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/login-facebook")
public class LoginFacebook extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //lấy code facebook trả về
        String code = request.getParameter("code");

        //người dùng chọn hủy
        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("BookStore/login.jsp");
            dis.forward(request, response);
        } else { //người dùng đồng ý đăng nhập
            //đổi đoạn code nhận được sang access token
            String accessToken = RestFB.getToken(code);
           // lấy thông tin id, name của tài khoản facebook
            User user = RestFB.getUserInfo(accessToken);
            HttpSession session = request.getSession(true);
            session.setAttribute("id", user.getId());
            session.setAttribute("name", user.getName());
            RequestDispatcher dis = request.getRequestDispatcher("http://localhost:8080/Demo/BookStore/index.jsp");
            dis.forward(request, response);
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
