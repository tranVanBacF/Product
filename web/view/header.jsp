<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
        <style>
            body {    width: 100%;
                      min-height: 600px;
                      margin: 0;
                      /* background-color: #1abc9c; */
                      background-image: linear-gradient(to bottom, #c8d9f4, #c8d9f4);}

            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
                position: fixed;
                top: 0;
                width: 100%;
            }

            li {
                float: left;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: #111;
            }

            .active {
                background-color: #4CAF50;
            }

        </style>
    </head>
    <body>
        <ul>

            <c:if test="${empty sessionScope.user}">
                <li><a href="login">Login</a></li>
                <li> <a href="register">Register</a></li>

            </c:if>
            <c:if test="${not empty sessionScope.user}">
                <li><a  href="product">Product</a></li>
                <li><a  href="store">Store</a></li>
                <li><a  href="company">Company</a></li>
                <li><a style="color: red; font-size: 100%">Welcome ${sessionScope.user.username}</a></li>
                <li>     <a href="RemoveSession">(Logout)</a></li>

            </c:if>
        </ul>
        <br>
        <p style="margin-bottom:  5% ">


        </p>

    </body>
</html>
