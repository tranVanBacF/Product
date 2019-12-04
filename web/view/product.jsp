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
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <h2>Bordered Table</h2>
            <p>The .table-bordered class adds borders on all sides of the table and the cells:</p>            
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Product name</th>
                        <th>Quanlity</th>
                        <th>Address</th>
                        <th>Action</th>


                    </tr>
                </thead>
                <tbody>
                      <c:forEach items="${listProduct}" var="product">

                    <tr>
                        <td>${product.productName}</td>
                        <td>${product.quanlity}</td>
                        <td>${product.productAddress}</td>

                        <td><button class="btn btn-primary">Edit</button> <button class="btn btn-danger">Delete</button></td>
                    </tr>
                    </c:forEach>   


                </tbody>
            </table>
        </div>

    </body>
</html>