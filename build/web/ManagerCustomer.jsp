<%-- 
    Document   : ManagerCustomer
    Created on : Feb 27, 2022, 10:49:45 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Manager Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/ManagerProduct.css" rel="stylesheet" type="text/css"/>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"    rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
       	<link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="css/slick.css" />
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="css/styles.css" />
        <script>
            function back() {
                window.location.href = "home";
            }
            function doDelete(id)
            {
                var c = confirm("Are you sure?");
                if (c)
                {
                    window.location.href = "delete?pid=" + id;
                }
            }
        </script>
    </head>

    <body>
        <%@include file="components/navBarComponent.jsp" %>
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="home">Home</a></li>
                    <li class="active">Manage Account</li>
                </ul>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <h3>List Account</h3>
                <div class="table-container">
                    <table class="useful-table">
                        <thead>
                            <tr>
                                <th>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="selectAll">
                                        <label for="selectAll"></label>
                                    </span>
                                </th>
                                <th>ID</th>
                                <th>User</th>
                                <th>Pass</th>
                                <th>IsSell</th>
                                <th>Active</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody class="useful-table-body">
                            <c:forEach items="${accounts}" var="p">
                                <tr>
                                    <td>
                                        <span class="custom-checkbox">
                                            <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                            <label for="checkbox1"></label>
                                        </span>
                                    </td>
                                    <td>${p.uid}</td>
                                    <td>${p.user}</td>
                                    <td>${p.pass}</td>
                                    <td>${p.isSell}</td>
                                    <td>

                                        <c:choose>
                                            <c:when test="${p.active}">
                                                <i class="bi bi-toggle-on"></i>
                                            </c:when>    
                                            <c:otherwise>
                                                <i class="bi bi-toggle2-off"></i>
                                            </c:otherwise>
                                        </c:choose>

                                    <td>
                                        <a href="loadAccount?pid=${p.uid}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    </td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
                <button type="button" class="btn btn-primary" style="margin-top: 10px;" onclick="back()">Back to home</button>
            </div>
        </div>
        <%@include file="components/footerComponent.jsp" %>
    </body>
    <script src="js/ManagerProduct.js" type="text/javascript"></script>
</html>
