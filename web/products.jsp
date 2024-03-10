
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
        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="home">Home</a></li>
                    <li class="active">Food</li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- ASIDE -->
                    <div id="aside" class="col-md-3">
                        <!-- aside widget -->
                        <div class="aside">
                            <h3 class="aside-title">Filter by Category</h3>
                            <ul class="list-links">
                                <c:forEach items="${listCategories}" var="C">
                                    <li class="${tag == C.cid? "active":""}" ><a  href="category?categoryId=${C.cid}">${C.cname}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                        <!-- /aside widget -->

                        <!-- aside widget -->
                        <div class="aside">
                            <h3 class="aside-title">Top Rated Food</h3>
                            <c:forEach items="${listProducts}" var="P" begin="2" end="4">
                                <div class="product product-widget">
                                    <div class="product-thumb">
                                        <img src="${P.imageUrl}" alt="">
                                    </div>
                                    <div class="product-body">
                                        <h2 class="product-name"><a href="detail?productId=${P.id}">${P.name}</a></h2>
                                        <h3 class="product-price">$${P.price}</h3>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o empty"></i>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <!-- /widget product -->
                        </div>
                        <!-- /aside widget -->
                    </div>
                    <!-- /ASIDE -->

                    <!-- MAIN -->
                    <div id="main" class="col-md-9">
                        <!-- store top filter -->
                        <div class="store-filter clearfix">
                            <div class="pull-right">
                                <ul class="store-pages">
                                    <li><span class="text-uppercase">Page:</span></li>
                                    <li class="${page == 1 ? "active" : ""}"><a href="products?page=${1}">1</a></li>
                                    <li class="${page == 2 ? "active" : ""}"><a href="products?page=${2}">2</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- /store top filter -->

                        <!-- STORE -->
                        <div id="store">
                            <!-- row -->
                            <c:set var="start" value="0" />
                            <c:forEach items="${listProducts}" var="P" begin="${start}" varStatus="index">
                                <div class="row">
                                    <c:forEach items="${listProducts}" var="P" begin="${start}" end="${start + 2}" varStatus="index">
                                        <div class="col-md-4 col-sm-6 col-xs-6">
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
                                </div>
                                <c:set var="start" value="${start + 3}" />

                            </c:forEach>



                            <!-- /row -->
                        </div>
                        <!-- /STORE -->

                        <!-- store bottom filter -->
                        <div class="store-filter clearfix">

                            <div class="pull-right">
                                <ul class="store-pages">
                                    <li><span class="text-uppercase">Page:</span></li>
                                   <li class="${page == "1" ? "active" : ""}"><a href="products?page=${1}">1</a></li>
                                    <li class="${page == "2" ? "active" : ""}"><a href="products?page=${2}">2</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- /store bottom filter -->
                    </div>
                    <!-- /MAIN -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
