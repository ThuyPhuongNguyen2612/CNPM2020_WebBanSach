package bookStore.loginGoogle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login-google")
public class LoginGoogle extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public LoginGoogle() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //lấy code google trả về
        String code = request.getParameter("code");
        //người dùng chọn hủy
        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("BookStore/login.jsp");
            dis.forward(request, response);
        } else { //người dùng chọn đăng nhập
            //đổi đoạn code nhận được sang access token
            String accessToken = GoogleUtils.getToken(code);
            // lấy thông tin id, name,email của tài khoản google
            GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
            HttpSession session = request.getSession(true);
            session.setAttribute("id", googlePojo.getId());
            session.setAttribute("name", googlePojo.getName());
//            request.setAttribute("email", googlePojo.getEmail());
            RequestDispatcher dis = request.getRequestDispatcher("BookStore/index.jsp");
            dis.forward(request, response);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
