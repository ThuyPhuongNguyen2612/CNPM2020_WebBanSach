package bookStore.loginFacebook;

//khai báo id, secret và redirect uri cua ung dung
public class Constants {
    public static String FACEBOOK_APP_ID = "2701399640096635";
    public static String FACEBOOK_APP_SECRET = "f09522e7c30d758deb21840137f424ca";
    public static String FACEBOOK_REDIRECT_URL = "http://localhost:8080/Demo/login-facebook";
    public static String FACEBOOK_LINK_GET_TOKEN = "https://graph.facebook.com/oauth/access_token?client_id=%s&client_secret=%s&redirect_uri=%s&code=%s";
}
