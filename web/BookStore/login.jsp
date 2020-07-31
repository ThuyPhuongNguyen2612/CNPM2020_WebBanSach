<!DOCTYPE html>
<html>
<head>
<title>Best Store</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<%--<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />--%>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/all.css" rel="stylesheet" type="text/css" media="all" />
    <link href="BookStore/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="BookStore/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="bootstrap-4.3.1-dist/css/Stylecss.css" type="text/css" media="all"/>
<!-- js -->
<script src="js/jquery.min.js"></script>
    <script src="BookStore/js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
	<script src="js/simpleCart.min.js"> </script>
    <script src="BookStore/js/simpleCart.min.js"> </script>
<!-- cart -->
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="BookStore/css/jquery-ui.css">
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <script type="text/javascript" src="BookStore/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
    <link href="BookStore/css/animate.min.css" rel="stylesheet">
    <script src="BookStore/js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
	<link rel="stylesheet" href=css/all.css">
    <link rel="stylesheet" href=BookStore/css/all.css">
	<!-- //animation-effect -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>
<%
    String erremail = (String) request.getAttribute("erremail");
    String errpass = (String) request.getAttribute("errpass");
    String errCaptcha = (String) request.getAttribute("errCaptcha");
    String email = (String) request.getAttribute("email");
%>
<body>
<!-- header -->
<jsp:include page="./header.jsp"/>
<!-- //header -->
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- login -->
	<div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Login Form</h3>
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form action="http://localhost:8080/Demo/bookStoredoLogin" method="post">
<%--                    3.người dùng nhập thông tin đăng nhập gồm email,pass--%>
                    <div class="alert-danger">
                        <%=erremail == null ? "" : erremail%>
                    </div>
					<input type="text" name="email" id="inputEmail" placeholder="email   Vd: abc@gmail.com" required=" " value=<%=email==null?"":email%> >
                    <div class="alert-danger">
                        <%=errpass == null ? "" : errpass%>
                    </div>
					<input type="password" name="pass" placeholder="Password    vd:Abc123@" required=" " >
					<div class="forgot">
<%--                        1.Người dùng chọn chức năng quên mật khẩu--%>
<%--                        2.hệ thông hiển thị trang quên mật khẩu --%>
						<a href="ForgotPassword.jsp">Forgot Password?</a>
					</div>
                    <%if(email!=null||errpass!=null){%>
                    <div class="alert-danger">
                        <%=errCaptcha == null ? "" : errCaptcha%>
                    </div>
                    <div class="g-recaptcha" data-sitekey="6LdWoLUZAAAAAAhlHiiU9xopfxKkKy9AVCn-ZS0E"></div><input name="captcha" value="capcha" type="hidden">
                    <%}%>
					<input type="submit" value="Login">
				</form>
                <script src='https://www.google.com/recaptcha/api.js'></script>
<!--				<h6 class="animated wow slideInUp" data-wow-delay=".5s">Or</h6>-->
				<div class="animated wow slideInUp" data-wow-delay=".5s" style="padding-left: 5%;margin-top: 5%">
<%--                    <div class="social-login">--%>
<%--                        <a class=" facebook-btn social-btn" type="button" style=" font-weight: 100;background-color: #3C589C;color:white; width:49%;font-size: 0.9rem;"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </a>--%>
<%--                        <a class="btn google-btn social-btn" type="button" style=" font-weight: 100;background-color: #DF4B3B;color:white; width:49%;font-size: 0.9rem;"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </a>--%>
<%--                    </div>--%>
<%--                    chuyển hướng người dùng tới trang của google--%>
					<a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/Demo/login-google&response_type=code
    &client_id=70223336740-nq2j8gon65t5um0nbb5gpkt1g85a18ff.apps.googleusercontent.com"><img src="img/google_signin_dark.png" width="40%"/> </a></a>
<%--                    chuyển hướng người dùng tới trang của facebook--%>
					<a href="https://www.facebook.com/dialog/oauth?client_id=2701399640096635&redirect_uri=http://localhost:8080/Demo/login-facebook"><img src="img/facebook_signin_dark.png" width="55%" /></a>
				</div>
			</div>
			<h4 class="animated wow slideInUp" data-wow-delay=".5s">For New People</h4>
			<p class="animated wow slideInUp" data-wow-delay=".5s"><a href="register.jsp">Register Here</a> (Or) go back to <a href="http://localhost:8080/Demo/BookStoreTrangChu">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
<!-- //login -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="footer-grids">
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".5s">
                <h3>About Us</h3>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit esse.<span>Excepteur sint occaecat cupidatat
						non proident, sunt in culpa qui officia deserunt mollit.</span></p>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".6s">
                <h3>Contact Info</h3>
                <ul>
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span>
                    </li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
                            href="mailto:info@example.com">info@example.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".7s">
                <h3>Flickr Posts</h3>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(1).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(2).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(3).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(4).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(5).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(6).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(7).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(8).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(2).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(5).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(1).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="footer-grid-left">
                    <a href="single.html"><img src="img/footer(4).png" alt=" " class="img-responsive"/></a>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 footer-grid animated wow slideInLeft" data-wow-delay=".8s">
                <h3>Blog Posts</h3>
                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.html"><img src="img/imgfooter%20(1).jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.html">culpa qui officia deserunt</a></h4>
                        <p>Posted On 25/3/2016</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="footer-grid-sub-grids">
                    <div class="footer-grid-sub-grid-left">
                        <a href="single.html"><img src="img/imgfooter(2).jpg" alt=" " class="img-responsive"/></a>
                    </div>
                    <div class="footer-grid-sub-grid-right">
                        <h4><a href="single.html">Quis autem vel eum iure</a></h4>
                        <p>Posted On 25/3/2016</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="footer-logo animated wow slideInUp" data-wow-delay=".5s">
            <h2><a href="index.jsp">Best Store <span>shop anywhere</span></a></h2>
        </div>
    </div>
</div>
<!-- //footer -->
</body>
</html>