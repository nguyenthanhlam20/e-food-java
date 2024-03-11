<%-- 
    Document   : thanks
    Created on : Mar 2, 2022, 5:05:27 PM
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
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
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
                    <li class="active">Thank you</li>
                </ul>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <h3>Order Details</h3>

                <div class="table-container">
                    <table class="useful-table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Image</th>
                                <th scope="col">Name</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Total Price</th>
                            </tr>
                        </thead>
                        <tbody class="useful-table-body">
                            <c:forEach items="${cartss}" var="C">
                                <tr>
                            <input type="hidden" name="productId" value="${C.value.product.id}"/>
                            <th scope="row">${C.value.product.id}</th>
                            <td>${C.value.product.name}</td>
                            <td><img src="${C.value.product.imageUrl}" width="50"/></td>
                            <td>${C.value.product.price}</td>
                            <td>${C.value.quantity}</td>
                            <td>${C.value.product.price*C.value.quantity}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>


                <h3 style="margin-top: 20px;">Total Amount: $${totalPrice}</h3>
                <span style="color: red; font-weight: bold;"> Order successfully, Thank you very much...</span>
                <div class="text-center mt-2">
                    <a class="btn btn-primary" href="home">Continue Shopping</a>
                </div>
            </div>


        </div>

        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>

