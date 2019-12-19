<%-- 
    Document   : store.jsp
    Created on : Dec 17, 2019, 10:28:32 PM
    Author     : bactv
--%>


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
            <br>
            <br>
            <h3>Company Form</h3>
            <form method="post">
                <div class="form-group">
                    <label for="Name">Name</label>
                    <input type="text" class="form-control"  placeholder="Enter name" name="name">
                </div>
                <div class="form-group">
                    <label for="address">Adress</label>
                    <input type="text" class="form-control"  placeholder="Enter Adress" name="address">
                </div>
                <button type="submit" class="btn btn-primary">Create</button>
            </form>
        </div>

    </body>
</html>