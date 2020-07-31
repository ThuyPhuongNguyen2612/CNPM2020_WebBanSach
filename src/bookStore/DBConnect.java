package bookStore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnect {
    private static String  URL ="jdbc:mysql://localhost:3306/"+"test?useUnicode=true&characterEncoding=utf-8";
    private  static String UNAME="root";
    private  static String PASS="";
    static Connection con;

    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException {
        if (con==null||con.isClosed()){
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL,UNAME,PASS);
        }
        return con.prepareStatement(sql);
    }
}
