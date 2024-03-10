<%-- 
    Document   : cart
    Created on : Feb 23, 2022, 10:07:09 PM
    Author     : Admin
--%>


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
        <title>Cart</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"    rel="stylesheet" />
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
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="home">Home</a></li>
                    <li class="active">My Cart</li>
                </ul>
            </div>
        </div>
        <!-- Product section-->
        <div class="section">
            <div class="container" >
                <c:choose>
                    <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">
                        <h1>Cart is empty</h1>
                    </c:when>
                    <c:otherwise>
                        <h3>My Cart</h3>
                        <table class="shopping-cart-table table">
                            <thead>
                                <tr>
                                    <th scope="col" class="text-center">#</th>
                                    <th scope="col" class="text-center">Image</th>
                                    <th scope="col" class="text-center">Name</th>
                                    <th scope="col" class="text-center">Price</th>
                                    <th scope="col" class="text-center">Quantity</th>
                                    <th scope="col" class="text-center">Total Price</th>
                                    <th scope="col" class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="C" varStatus="status">
                                <form action="update-quantity">
                                    <input type="hidden" name="productId" value="${C.value.product.id}"/>

                                    <tr>
                                        <th class="row text-center">${status.index + 1}</th>
                                        <td class="thumb text-center"><img src="${C.value.product.imageUrl}" alt=""></td>
                                        <td class="details text-center">
                                            ${C.value.product.name}
                                        </td>
                                        <td class="price text-center"><strong>$${C.value.product.price}</strong></td>
                                        <td class="qty text-center"><input class="input" onchange="this.form.submit()" type="number" name="quantity" value="${C.value.quantity}"/></td>
                                        <td class="total text-center"><strong class="primary-color">$${C.value.product.price*C.value.quantity}</strong></td>
                                        <td class="text-center"><a href="delete-cart?productId=${C.value.product.id}" class=" main-btn"><i class="bi bi-trash me-2"></i>Delete</a></td>
                                    </tr>
                                </form>
                            </c:forEach>


                            </tbody>
                            <tfoot>
                                <tr>
                                    <th class="empty" colspan="4"></th>
                                    <th>TOTAL</th>
                                    <th colspan="2" class="total">$${totalMoney}</th>
                                </tr>
                            </tfoot>
                        </table>
                        <div class="pull-right">
                            <a href="checkout" class="primary-btn">Check out</a>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
