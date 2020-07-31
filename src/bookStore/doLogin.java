package bookStore;

import bookStore.reCATCHA.VerifyUtils;
import com.mysql.jdbc.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/bookStoredoLogin")
public class doLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");
            //4. hệ thống lấy email,pass người dùng nhập vào
            String email = request.getParameter("email") == null ? "" : request.getParameter("email").trim();
            String pass = request.getParameter("pass") == null ? "" : request.getParameter("pass").trim();
            String captcha = (String) request.getParameter("captcha");
            String erremail = "";
            String errpass = "";
            String errCaptcha="";
            boolean valid;

            //lấy reCaptcha
            String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
            valid = VerifyUtils.verify(gRecaptchaResponse);
                //5.hệ thống kết nối , truy xuất xuống database
                String sql = "SELECT * FROM test.`user` WHERE  active=1";
                PreparedStatement s = (PreparedStatement) DBConnect.getPreparedStatement(sql);
                //6.Database trả về danh sách tài khoản
                ResultSet rs = s.executeQuery();
                while (rs.next()) {
                    if (captcha==null) {
                        //7.Hệ thông kiểm tra email và pass đúng
                        if (email.equals(rs.getString("email")) && pass.equals(rs.getString("pass"))) {
                            User u = new User(rs.getInt("id"), rs.getString("name"), rs.getString("email"), rs.getString("pass"), rs.getInt("level"), rs.getString("address"), rs.getString("phone"));
                            HttpSession session = request.getSession(true);
                            session.setAttribute("Auth", u);
                            //8.nếu tài khoản có quyền người dùng thì chuyển sang trang chủ
                            if (u.level == 1) {
                                response.sendRedirect("http://localhost:8080/Demo/BookStore/index.jsp");
                            }//8.nếu tài khoản có quyền quản lý và quản trị thì chuyển sang trang admin
                            else if (u.level == 2) {
                                response.sendRedirect("");
                            }
                        } else {//7.1 hệ thống kiểm tra email hoặc pass sai
                            if (!email.equals(rs.getString("email"))) {
                                erremail = "email nhập sai";
                                request.setAttribute("erremail", erremail);
                            }
                            if (!pass.equals(rs.getString("pass"))) {
                                errpass = "Sai mật khẩu";
                                request.setAttribute("errpass", errpass);
                            }
                            request.setAttribute("email",email);
                            //8.1 chuyển sang trang login và hiển thị lỗi
                            request.getRequestDispatcher("BookStore/login.jsp").forward(request, response);
                        }
                    }else {//nếu tất cả thông tin hợp lệ
                        if (email.equals(rs.getString("email")) && pass.equals(rs.getString("pass")) &&valid==true) {
                            User u = new User(rs.getInt("id"), rs.getString("name"), rs.getString("email"), rs.getString("pass"), rs.getInt("level"), rs.getString("address"), rs.getString("phone"));
                            HttpSession session = request.getSession(true);
                            session.setAttribute("Auth", u);
                            //nếu tài khoản có quyền người dùng thì chuyển sang trang chủ
                            if (u.level == 1) {
                                response.sendRedirect("http://localhost:8080/Demo/BookStore/index.jsp");
                            }//nếu tài khoản có quyền quản lý và quản trị thì chuyển sang trang admin
                            else if (u.level == 2) {
                                response.sendRedirect("");
                            }
                        } else {//Người dùng, người quản trị,quản lý nhập sai email hoặc pass ,reCaptcha thì hiển thị lỗi ở trang đăng nhập
                            if (!email.equals(rs.getString("email"))) {
                                erremail = "email nhập sai";
                                request.setAttribute("erremail", erremail);
                            }
                            if (!pass.equals(rs.getString("pass"))) {
                                errpass = "Sai mật khẩu";
                                request.setAttribute("errpass", errpass);
                            }
                            if (valid==false){
                                errCaptcha= "chưa check reCaptcha";
                                request.setAttribute("errCaptcha",errCaptcha);
                            }
                            request.setAttribute("email",email);
                            request.getRequestDispatcher("BookStore/login.jsp").forward(request, response);
                        }
                    }
                }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
//        catch (NoSuchAlgorithmException e) {
//            e.printStackTrace();
//        }

    }
    private String protecctPass(String pass) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("MD5");
        byte[] hashInBytes = md.digest(pass.getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        for (byte b : hashInBytes) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }
}
