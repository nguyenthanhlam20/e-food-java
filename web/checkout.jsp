<%-- 
    Document   : viewCart
    Created on : Feb 23, 2022, 10:32:01 PM
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

        <!-- Product section-->
        <!--        <section class="py-5">
        
                    <div class="container" style="min-height: 1000px">
                        <h1>Checkout</h1>
                        <div class="row">
                            <div class="col-md-8" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                                <h3>List Products</h3>
                                <table class="table">
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
                                    <tbody>
                                      
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-md-4" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                                <h3>Information of customer</h3>
                                <form action="checkout" method="POST">
                                    <div class="mb-3">
                                        <label for="name" class="form-label">Name</label>
                                        <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-3">
                                        <label for="phone" class="form-label">Phone</label>
                                        <input type="text" class="form-control" id="phone" name="phone" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-3">
                                        <label for="address" class="form-label">Address</label>
                                        <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-3">
                                        <label for="note" class="form-label">Note</label>
                                        <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary w-100">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>-->
        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="home">Home</a></li>
                    <li class="active">Checkout</li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <c:choose>
                    <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">
                        <h1>Cart is empty. Buy more food!!!</h1>
                    </c:when>
                    <c:otherwise>
                        <h3>Checkout</h3>
                        <div class="row">
                            <form id="checkout-form" class="clearfix" action="checkout">
                                <div class="col-md-6">
                                    <div class="billing-details">
                                        <div class="section-title">
                                            <h3 class="title">Thông tin hóa đơn</h3>
                                        </div>
                                        <div class="form-group">
                                            <input class="input" type="text"  name="name" placeholder="Fullname">
                                        </div>
                                        <div class="form-group">
                                            <input class="input" type="text" name="address" placeholder="Address">
                                        </div>
                                        <div class="form-group">
                                            <input class="input" type="text" name="phone" placeholder="Phone">
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control" placeholder="Notes" id="note" name="note" rows="3"></textarea>
                                        </div>

                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="shiping-methods">
                                        <div class="section-title">
                                            <h4 class="title">Phương thức giao hàng</h4>
                                        </div>
                                        <div class="input-checkbox">
                                            <input type="radio" name="shipping" id="shipping-1" checked>
                                            <label for="shipping-1">Giao hàng miễn phí -  $0.00</label>
                                        </div>
                                    </div>

                                    <div class="payments-methods">
                                        <div class="section-title">
                                            <h4 class="title">Payments Methods</h4>
                                        </div>
                                        <div class="input-checkbox">
                                            <input type="radio" name="payments" id="payments-1" checked>
                                            <label for="payments-1">Trả tiền mặt</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="order-summary clearfix">
                                        <div class="section-title">
                                            <h3 class="title">Order Review</h3>
                                        </div>
                                        <table class="shopping-cart-table table">
                                            <thead>
                                                <tr>
                                                    <th scope="col" class="text-center">#</th>
                                                    <th scope="col" class="text-center">Image</th>
                                                    <th scope="col" class="text-center">Name</th>
                                                    <th scope="col" class="text-center">Price</th>
                                                    <th scope="col" class="text-center">Quantity</th>
                                                    <th scope="col" class="text-center">Total Price</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${carts}" var="C" varStatus="status">
                                                <input type="hidden" name="productId" value="${C.value.product.id}"/>

                                                <tr>
                                                    <th class="row text-center">${status.index + 1}</th>
                                                    <td class="thumb text-center"><img src="${C.value.product.imageUrl}" alt=""></td>
                                                    <td class="details text-center">
                                                        ${C.value.product.name}
                                                    </td>
                                                    <td class="price text-center"><strong>$${C.value.product.price}</strong></td>
                                                    <td class="qty text-center">${C.value.quantity}</td>
                                                    <td class="total text-center"><strong class="primary-color">$${C.value.product.price*C.value.quantity}</strong></td>
                                                </tr>
                                            </c:forEach>


                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th class="empty" colspan="3"></th>
                                                    <th>SUBTOTAL</th>
                                                    <th colspan="2" class="sub-total">$${totalMoney}</th>
                                                </tr>
                                                <tr>
                                                    <th class="empty" colspan="3"></th>
                                                    <th>SHIPING</th>
                                                    <td colspan="2">Free Shipping</td>
                                                </tr>
                                                <tr>
                                                    <th class="empty" colspan="3"></th>
                                                    <th>TOTAL</th>
                                                    <th colspan="2" class="total">$${totalMoney}</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <div class="pull-right">
                                            <button type="submit" class="primary-btn">Place Order</button>
                                        </div>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </c:otherwise>
                </c:choose>

                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->

        <%@include file="components/footerComponent.jsp" %>

    </body>
</html>

