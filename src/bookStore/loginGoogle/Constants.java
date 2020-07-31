package bookStore.loginGoogle;

//lưu client_id, client_secret, redirect_uri của ứng dung
public class Constants {
        public static String GOOGLE_CLIENT_ID = "70223336740-nq2j8gon65t5um0nbb5gpkt1g85a18ff.apps.googleusercontent.com";
        public static String GOOGLE_CLIENT_SECRET = "BHUjlv2gbMbJ85Xq0_gJcvkY";
        public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/Demo/login-google";
        public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
        public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
        public static String GOOGLE_GRANT_TYPE = "authorization_code";

    }
