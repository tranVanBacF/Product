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
        <jsp:include page="header.jsp"/>
        <div class="container">
            <h2>Edit Product</h2>
            <form method="post" >
              
                <input type="hidden"   name="id" value="${product.id}">
                <div class="form-group">
                    <label for="name">Product Name</label>
                    <input type="text" class="form-control" value="${product.productName}" placeholder="Enter Name" name="productName">
                </div>
                <div class="form-group">
                    <label for="quanlity">Quanlity</label>
                    <input type="number" class="form-control" value="${product.quanlity}" placeholder="Enter Quanlity" name="quanlity">
                </div>
               
                Select an store 
                <select class="form-control" name="store_name" >
                    <c:forEach var="x" items="${stores}">
                        <option value="${x.name}" ${product.storeName == x.name?"selected":""}>${x.name}</option>
                    </c:forEach>
                </select>

                <br>
                Select an company
                <select class="form-control" name="company" >
                    <c:forEach var="x" items="${companys}">
                        <option value="${x.id}" ${product.companyId == x.id?"selected":""}>${x.name}</option>
                    </c:forEach>
                </select>
                <br>

                <button type="submit" class="btn btn-primary">Edit</button>
                <c:if test = "${errors != null}">
                    <div class="alert alert-danger">
                        <strong> ${errors}</strong>
                    </div>
                </c:if>
            </form>
        </div>

    </body>
</html>
