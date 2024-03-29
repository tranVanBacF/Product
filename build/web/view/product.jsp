<%-- 
    Document   : product
    Created on : Dec 4, 2019, 9:28:13 PM
    Author     : bactv
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Product</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="container">
            <h2>Product Table</h2>
            <br>
            <a href="create-product"  class="btn btn-success">Create</a>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Product name</th>
                        <th>Quanlity</th>
                        <th>company</th>
                        <th>Store</th>

                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listProduct}" var="product">
                        <tr>
                            <td>${product.productName}</td>
                            <td>${product.quanlity}</td>
                            <td>${product.productAddress}</td>
                            <td>${product.storeName}</td>

                            <td><button class="btn btn btn-secondary"><a href="edit-product?id=${product.id}" style="color: white">Edit</a></button> <button class="btn btn-danger"><a style="color: white" href="delete-product?id=${product.id}">Delete</a></button></td>
                        </tr>
                    </c:forEach>   
                </tbody>
            </table>
        </div>

    </body>
</html>