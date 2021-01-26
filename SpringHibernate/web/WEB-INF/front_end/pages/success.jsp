<%-- 
    Document   : success
    Created on : Jan 12, 2021, 2:37:01 PM
    Author     : Pravinder Poonia
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Success</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="/rele/css/util.css">
        <link rel="stylesheet" type="text/css" href="/rele/css/main.css">
        <link rel="stylesheet" type="text/css" href="/rele/css/vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="/rele/css/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="row h-100 justify-content-center align-items-center">
            <h1><small><c:out value="${message}"/></small></h1>
        </div>
    </body>
</html>
