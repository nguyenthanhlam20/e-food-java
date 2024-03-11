<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation-->
<script>
    function login() {
        window.location.href = "login.jsp";
    }
    function logout() {
        window.location.href = "logout";

    }
</script>

<header>
    <!-- header -->
    <div id="header">
        <div class="container">
            <div class="pull-left">
                <!-- Logo -->
                <div class="header-logo">
                    <a class="logo" href="home">
                        <img src="./img/logo.png" alt="">
                    </a>
                </div>
                <!-- /Logo -->
                <!--                 <div class="header-search">
                                        <form action="search">
                                            <input value="${key}" class="input search-input" name="keyword" type="text" placeholder="Enter your keyword">
                                            <button class="search-btn"><i class="fa fa-search"></i></button>
                                        </form>
                                    </div>-->
                <!-- Search -->

                <!-- /Search -->
            </div>
            <div class="pull-right">
                <ul class="header-btns">
                    <!-- Account -->

                    <c:if test="${sessionScope.acc.isAdmin != 1 && sessionScope.acc.isSell != 1}">
                        <li class="header-cart dropdown default-dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                <div class="header-btns-icon">
                                    <i class="fa fa-shopping-cart"></i>
                                    <c:if test="${sessionScope.carts.size() > 0}">
                                        <span class="qty">${sessionScope.carts.size()}</span>
                                    </c:if>
                                    <c:if test="${sessionScope.carts == null}">
                                        <span class="qty">0</span>
                                    </c:if>
                                </div>
                                <strong class="text-uppercase">My Cart:</strong>
                                <br>
                                <span>$${totalMoney}</span>
                            </a>
                            <div class="custom-menu">
                                <div id="shopping-cart">
                                    <div class="shopping-cart-list">
                                        <c:forEach items="${sessionScope.carts}" var="item">
                                            <div class="product product-widget">
                                                <div class="product-thumb">
                                                    <img src="${item.value.product.imageUrl}" alt="">
                                                </div>
                                                <div class="product-body">
                                                    <h3 class="product-price">$${item.value.product.price}<span class="qty"> x${item.value.quantity}</span></h3>
                                                    <h2 class="product-name"><a href="#">${item.value.product.name}</a></h2>
                                                </div>
                                                <button class="cancel-btn"><i class="fa fa-trash"></i></button>
                                            </div>
                                        </c:forEach>


                                    </div>
                                    <div class="shopping-cart-btns">
                                        <button onclick="goToCart()";  class="main-btn">View Cart</button>
                                        <button onclick="goToCheckout()"; class="primary-btn">Checkout <i class="fa fa-arrow-circle-right"></i></button>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </c:if>
                    <!-- Cart -->

                    <li>
                        <c:choose>
                            <c:when test="${sessionScope.acc == null}">
                                <button class="btn btn-info ms-lg-2" onclick="login()">
                                    <i class="bi bi-arrow-right"></i>
                                    Login</button>
                                </c:when>

                            <c:otherwise>
                                <button class="btn btn-danger ms-lg-2" onclick="logout()">
                                    <i class="bi bi-power"></i>
                                    Logout
                                </button>
                            </c:otherwise>
                        </c:choose>
                    </li>
                    <!-- /Account -->
                    <!-- /Cart -->

                    <!-- Mobile nav toggle-->
                    <li class="nav-toggle">
                        <button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
                    </li>
                    <!-- / Mobile nav toggle -->
                </ul>
            </div>
        </div>
        <!-- header -->
    </div>
    <!-- container -->
</header>

<!-- NAVIGATION -->
<div id="navigation">
    <!-- container -->
    <div class="container">
        <div id="responsive-nav">
            <c:if test="${sessionScope.acc.isAdmin != 1 && sessionScope.acc.isSell != 1}">
                <!-- category nav -->
                <div class="category-nav show-on-click">
                    <span class="category-header">Categories <i class="fa fa-list"></i></span>
                    <ul class="category-list">

                        <c:forEach items="${listCategories}" var="C">
                            <li ><a class="${tag == C.cid? "active":""}" href="category?categoryId=${C.cid}">${C.cname}</a></li>
                            </c:forEach>

                    </ul>
                </div>
                <!-- /category nav -->
            </c:if>


            <!-- menu nav -->
            <div class="menu-nav">
                <span class="menu-header">Menu <i class="fa fa-bars"></i></span>
                <ul class="menu-list">

                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                        <li style="padding-left: 0px;"><a style="padding-left: 0px;" href="home">Home</a></li>

                        <li class="nav-item">
                            <a class="nav-link active" style="padding-left: 0px;" aria-current="page" href="managerAccount">Manage Account</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" style="padding-left: 0px;" aria-current="page" href="managerCategory">Manage Category</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" style="padding-left: 0px;" aria-current="page" href="manager">Manage Food</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" style="padding-left: 0px;" aria-current="page" href="managerOrder">Manage Order</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.acc.isSell == 1 && sessionScope.acc.isAdmin != 1}">
                        <li style="padding-left: 0px;"><a style="padding-left: 0px;" href="home">Home</a></li>

                        <li class="nav-item">
                            <a class="nav-link active" style="padding-left: 0px;" aria-current="page" href="manager">Manage Food</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" style="padding-left: 0px;" aria-current="page" href="managerOrder">Manage Order</a>
                        </li>
                    </c:if>

                    <c:if test="${sessionScope.acc.isAdmin != 1 && sessionScope.acc.isSell != 1}">
                        <li ><a href="home">Home</a></li>
                        <li><a href="products">Food</a></li>
                        <li><a href="carts">My Cart</a></li>
                        </c:if>



                </ul>
            </div>
            <!-- menu nav -->
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /NAVIGATION -->

<script>

    function goToCart() {
        window.location.href = "carts";
    }
    function goToCheckout() {
        window.location.href = "checkout";
    }
</script>