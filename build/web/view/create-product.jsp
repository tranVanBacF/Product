<%-- 
    Document   : create-product
    Created on : Dec 5, 2019, 9:18:52 PM
    Author     : bactv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <h2>Product form</h2>
            <form method="post" >
                <c:if test = "${errors != null}">
                    <div class="alert alert-danger">
                        <strong>Danger!</strong> ${errors}
                    </div>
                </c:if>

                <div class="form-group">
                    <label for="name">Product Name</label>
                    <input type="text" class="form-control"  placeholder="Enter Name" name="productName">
                </div>
                <c:if test = "${error_name != null}">
                    <div class="alert alert-danger">
                        <strong>Danger!</strong> ${error_name}
                    </div>
                </c:if>

                <div class="form-group">
                    <label for="quanlity">Quanlity</label>
                    <input type="number" class="form-control" placeholder="Enter Quanlity" name="quanlity">
                </div>
                <c:if test = "${error_quanlity != null}">
                    <div class="alert alert-danger">
                        <strong>Danger!</strong> ${error_quanlity}
                    </div>
                </c:if>
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" placeholder="Enter Address" name="address">
                </div>
                <c:if test = "${error_address != null}">
                    <div class="alert alert-danger">
                        <strong>Danger!</strong> ${error_address}
                    </div>
                </c:if>

                Select an store 
                <select class="form-control" name="store_name" ">
                    <c:forEach var="x" items="${stores}">
                        <option value="${x.name}" ${param.store_name == x.name?"selected":""}>${x.name}</option>
                    </c:forEach>
                </select>

                <br>
                Select an compnay 
                <select class="form-control" name="company" >
                    <c:forEach var="x" items="${companys}">
                        <option value="${x.id}" ${param.company == x.id?"selected":""}>${x.name}</option>
                    </c:forEach>
                </select>
                <br>

                <button type="submit" class="btn btn-primary">Create</button>
            </form>
        </div>

    </body>
</html>
