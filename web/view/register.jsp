<%-- 
    Document   : register
    Created on : Dec 18, 2019, 7:37:05 PM
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
        <jsp:include page="header.jsp"/>
        <div class="container">
            <h3> Register User </h3>
            <form method="post">
                <div class="form-group">
                    <input type="text" class="form-control"  placeholder="Enter username" name="username" required>
                </div>
                 <c:if test = "${error != null}">
                    <div class="alert alert-danger">
                        <strong> ${error}</strong>
                    </div>
                </c:if>
                <div class="form-group">
                    <input type="text" class="form-control"  placeholder="Enter Lastname" name="lastname" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control"  placeholder="Enter firstname" name="firstname" required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control"  placeholder="Enter password" name="password" required>
                </div>
                <button type="submit" class="btn btn-primary">Create</button>
                 <c:if test = "${messageSucess != null}">
                    <div class="alert alert-success">
                        <strong>${messageSucess}</strong> 
                    </div>
                </c:if>
                     <c:if test = "${messageFail != null}">
                    <div class="alert alert-danger">
                        <strong>${messageFail}</strong> 
                    </div>
                </c:if>
            </form>
        </div>

    </body>
</html>
