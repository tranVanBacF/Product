<%-- 
    Document   : login.jsp
    Created on : Dec 18, 2019, 7:36:25 PM
    Author     : bactv
--%>


<%-- 
    Document   : register
    Created on : Dec 18, 2019, 7:37:05 PM
    Author     : bactv
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:include page="header.jsp"/>
        <div class="container">
            <h3> Login  </h3>
            <form method="post">
                <div class="form-group">
                    <input type="text" class="form-control"  placeholder="Enter username" name="username">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control"  placeholder="Enter password" name="password">
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
                <c:if test = "${error != null}">
                    <div class="alert alert-danger">
                        <strong> ${error}</strong>
                    </div>
                </c:if>           


            </form>
        </div>

    </body>
</html>
