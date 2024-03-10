
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Food Store</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
       	<link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="css/slick.css" />
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="css/styles.css" />
    </head>
    <body>
        <%@include file="components/navBarComponent.jsp" %>      
        <!-- HOME -->
        <div id="home">
            <!-- container -->
            <div class="container">
                <!-- home wrap -->
                <div class="home-wrap">
                    <!-- home slick -->
                    <div id="home-slick">
                        <!-- banner -->
                        <div class="banner banner-1">
                            <img src="img/banner01.jpg" alt="">
                            <div class="banner-caption text-center">
                                <h1 class="white-color">Food sale</h1>
                                <h3 class="white-color font-weak">Up to 50% Discount</h3>
                                <button class="primary-btn">Shop Now</button>
                            </div>
                        </div>
                        <!-- /banner -->

                        <!-- banner -->
                        <div class="banner banner-1">
                            <img src="img/banner02.jpg" alt="">
                            <div class="banner-caption">
                                <h1 class="primary-color">HOT DEAL<br><span class="white-color font-weak">Up to 50% OFF</span></h1>
                                <button class="primary-btn">Shop Now</button>
                            </div>
                        </div>
                        <!-- /banner -->

                        <!-- banner -->
                        <div class="banner banner-1">
                            <img src="img/banner03.jpg" alt="">
                            <div class="banner-caption">
                                <h1 class="white-color">New Product <span>Collection</span></h1>
                                <button class="primary-btn">Shop Now</button>
                            </div>
                        </div>
                        <!-- /banner -->
                    </div>
                    <!-- /home slick -->
                </div>
                <!-- /home wrap -->
            </div>
            <!-- /container -->
        </div>
        <!-- /HOME -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- banner -->


                    <c:forEach items="${listCategories}" var="C" begin="0" end="2" varStatus="status">
                        <div class="col-md-4 col-sm-6">
                            <a class="banner banner-1" href="category?categoryId=${C.cid}">
                                <img style="height: 250px; object-fit: cover; " class="small-image" src="./img/banner${status.index + 10}.jpg" alt="">
                                <div class="banner-caption text-center">
                                    <h2 class="white-color">${C.cname}</h2>
                                </div>
                            </a>
                        </div>
                        </c:forEach>

                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <div class="row">
                    <!-- section title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h2 class="title">Deals Of The Day</h2>
                            <div class="pull-right">
                                <div class="product-slick-dots-2 custom-dots">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- section title -->



                    <!-- Product Slick -->
                    <div class="col-md-12 col-sm-6 col-xs-6">
                        <div class="row">
                            <div id="product-slick-2" class="product-slick">
                                <c:forEach items="${listProducts}" var="P">
                                    <div class="product product-single">
                                        <div class="product-thumb">
                                            <a href="detail?productId=${P.id}" class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</a>
                                            <img src="${P.imageUrl}" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-price">${P.price}</h3>
                                            <div class="product-rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o empty"></i>
                                            </div>
                                            <h2 class="product-name"><a href="#">${P.name}</a></h2>
                                            <div class="product-btns">
                                                <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                                <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                                <a href="add-to-cart?productId=${P.id}" class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
                                            </div>
                                        </div>
                                    </div>


                                </c:forEach>
                                <!-- Product Single -->



                            </div>
                        </div>
                    </div>
                    <!-- /Product Slick -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->

        <!-- section -->
        <div class="section section-grey">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- banner -->
                    <div class="col-md-8">
                        <div class="banner banner-1">
                            <img style="height: 530px; object-fit: cover" src="./img/banner13.jpg" alt="">
                            <div class="banner-caption text-center">
                                <h1 class="white-color">HOT DEAL<br><span class="white-color font-weak">Up to 50% OFF</span></h1>
                                <button class="primary-btn">Shop Now</button>
                            </div>
                        </div>
                    </div>
                    <!-- /banner -->

                    <!-- banner -->
                    <div class="col-md-4 col-sm-6">
                        <a class="banner banner-1" href="#">
                            <img style="height: 250px; object-fit: cover" src="./img/banner11.jpg" alt="">
                            <div class="banner-caption text-center">
                                <h2 class="white-color">NEW FOOD CATEGORY</h2>
                            </div>
                        </a>
                    </div>
                    <!-- /banner -->

                    <!-- banner -->
                    <div class="col-md-4 col-sm-6">
                        <a class="banner banner-1" href="#">
                            <img style="height: 250px; object-fit: cover" src="./img/banner12.jpg" alt="">
                            <div class="banner-caption text-center">
                                <h2 class="white-color">NEW FOOD CATEGORY</h2>
                            </div>
                        </a>
                    </div>
                    <!-- /banner -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- section title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h2 class="title">Picked For You</h2>
                        </div>
                    </div>
                    <c:forEach items="${listProducts}" var="P" begin="2" end="5">
                        <div class="col-md-3 col-sm-6 col-xs-6">

                            <div class="product product-single">
                                <div class="product-thumb">
                                    <a href="detail?productId=${P.id}" class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</a>
                                    <img src="${P.imageUrl}" alt="">
                                </div>
                                <div class="product-body">
                                    <h3 class="product-price">${P.price}</h3>
                                    <div class="product-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o empty"></i>
                                    </div>
                                    <h2 class="product-name"><a href="#">${P.name}</a></h2>
                                    <div class="product-btns">
                                        <button class="main-btn icon-btn"><i class="fa fa-heart"></i></button>
                                        <button class="main-btn icon-btn"><i class="fa fa-exchange"></i></button>
                                        <a href="add-to-cart?productId=${P.id}" class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </c:forEach>
                    <!-- Product Single -->

                    <!-- /Product Single -->


                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
