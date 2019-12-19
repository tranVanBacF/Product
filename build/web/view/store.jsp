<%-- 
    Document   : store
    Created on : Dec 4, 2019, 9:28:13 PM
    Author     : bactv
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Store</title>
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
            <h2>Store Table</h2>
            <br>
            <a href="create-store"  class="btn btn-success">Create</a>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Store Name</th>
                        <th>Store Address</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listStore}" var="store">
                        <tr>
                            <td>${store.name}</td>
                            <td>${store.address}</td>
                        </tr>
                    </c:forEach>   
                </tbody>
            </table>
        </div>

    </body>
</html>