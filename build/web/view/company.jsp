<%-- 
    Document   : company.jsp
    Created on : Dec 17, 2019, 10:29:38 PM
    Author     : bactv
--%>

<%-- 
    Document   : company
    Created on : Dec 4, 2019, 9:28:13 PM
    Author     : bactv
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Company</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
     
   
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="container">
            <h2>Company Table</h2>
            <br>
            <a href="create-company"  class="btn btn-success">Create</a>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Company Name</th>
                        <th>Company Address</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listCompany}" var="company">
                        <tr>
                            <td>${company.name}</td>
                            <td>${company.address}</td>
                        </tr>
                    </c:forEach>   
                </tbody>
            </table>
        </div>

    </body>
</html>