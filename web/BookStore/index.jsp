<!DOCTYPE html>
<html>
<head>
    <title>Best Store</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Best Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <!-- //js -->
    <!-- cart -->
    <script src="js/simpleCart.min.js"></script>
    <!-- cart -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- timer -->
    <link rel="stylesheet" href="css/jquery.countdown.css"/>
    <!-- //timer -->
    <!-- animation-effect -->
    <link href="css/animate.min.css" rel="stylesheet">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <link rel="stylesheet" href="../FontAwesome/css/all.css">
    <!-- //animation-effect -->

</head>

<body>
<!-- header -->
<jsp:include page="./header.jsp"/>
<div class="my-slider">
    <div class="slide" style="background-image: url('img/bookcoverssmall2.jpg')">
        <div class="container animated zoomIn">
            <h1>FIND YOUR BOOKS</h1>
            <p>Welcome to your friendly neighborhood library. We have more than 1000 books waiting to be discovered.</p>
        </div>
    </div>
    <div class="slide" style="background-image: url('img/bookstackssmall.jpg')">
        <div class="container animated wow zoomIn">
            <h1>LOTS OF BOOKS</h1>
            <p>Welcome to your friendly neighborhood library. We have more than 1000 books waiting to be discovered.</p>
        </div>
    </div>
    <div class="slide" style="background-image: url('img/bookdisplaysmall.jpg')">

        <div class="container animated zoomIn">
            <h1>LOTS OF STORY</h1>
            <p>Welcome to your friendly neighborhood library. We have more than 1000 books waiting to be discovered.</p>
        </div>
    </div>
    <div class="three_bt">
        <span class="dot active" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>
    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("slide");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = slides.length
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
</div>
<div class="banner-bottom">
    <div class="container">
        <div class="banner-bottom-grids">
            <div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
                <div class="grid">
                    <figure class="effect-julia">
                        <img src="img/Q014.jpg" alt=" " class="img-responsive"/>
                        <figcaption>
                            <h3>Best <span>Store</span><i> in online shopping</i></h3>
                            <div>
                                <p>Cupidatat non proident, sunt</p>
                                <p>Officia deserunt mollit anim</p>
                                <p>Laboris nisi ut aliquip consequat</p>
                            </div>
                        </figcaption>
                    </figure>
                </div>
            </div>
            <div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".5s">
                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="img/Q015.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="banner-bottom-grid-left1-pos">
                        <p>Discount 45%</p>
                    </div>
                </div>
                <div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="img/Q013.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="banner-bottom-grid-left1-position">
                        <div class="banner-bottom-grid-left1-pos1">
                            <p>Latest New Collections</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">
                <div class="banner-bottom-grid-left-grid grid-left-grid1">
                    <div class="banner-bottom-grid-left-grid1">
                        <img src="img/Q012.jpg" alt=" " class="img-responsive"/>
                    </div>
                    <div class="grid-left-grid1-pos">
                        <p>top and classic designs <span>2016 Collection</span></p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //banner-bottom -->
<!-- collections -->
<div class="new-collections">
    <div class="container">
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">NEW BOOKS</h3>
        <div class="new-collections-grids">
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/7.1.jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">Abraham Lincoln-1</a></h4>
                    <p>Vel illum qui dolorem eum fugiat.</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/rise.jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">Archangel Down</a></h4>
                    <p>Vel illum qui dolorem eum fugiat.</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/first.jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">First Strike </a></h4>
                    <p>Vel illum qui dolorem eum fugiat.</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/licon.jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">Abraham Lincoln-2</a></h4>
                    <p>Vel illum qui dolorem eum fugiat.</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="clearfix"></div>
        </div>
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">BEST SELLER</h3>
        <div class="new-collections-grids">
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/7.2.jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">The History of Herodotus 1</a></h4>
                    <p>Vel illum qui dolorem eum fugiat.</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/7.3.jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">The History of Herodotus 2</a></h4>
                    <p>Vel illum qui dolorem eum fugiat.</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/7.4.jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">History of the Peloponnesian War</a></h4>
                    <p>Vel illum qui dolorem eum fugiat.</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/tom.jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">The History of Tom Jones, a Foundling</a></h4>
                    <p>Vel illum qui dolorem eum fugiat.</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="clearfix"></div>
        </div>
        <h3 class="animated wow zoomIn" data-wow-delay=".5s">RECOMMENDED</h3>
        <div class="new-collections-grids">
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/comic%20(11).jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">Squinty the Comical Pig</a></h4>
                    <p>His Many Adventures</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>

            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/comic%20(14).jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">Comic Bible Sketches</a></h4>
                    <p>The Freethinker</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/comic%20(15).jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">Comic Tragedies</a></h4>
                    <p>Little Women</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="col-md-3 new-collections-grid">
                <div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
                    <div class="new-collections-grid1-image">
                        <a href="single.html" class="product-image"><img src="img/comic%20(16).jpg" alt=" "
                                                                         class="img-responsive"/></a>
                        <div class="new-collections-grid1-image-pos">
                            <a href="single.html">Quick View</a>
                        </div>
                        <div class="new-collections-grid1-right">
                            <div class="rating">
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/2.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="rating-left">
                                    <img src="images/1.png" alt=" " class="img-responsive"/>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <h4><a href="single.html">Gallery of Comicalities</a></h4>
                    <p>Embracing Humorous Sketches</p>
                    <div class="new-collections-grid1-left simpleCart_shelfItem">
                        <p><i>$325</i> <span class="item_price">$250</span><a class="item_add">add to cart </a>
                        </p>
                    </div>
                </div>

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //collections-bottom -->
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