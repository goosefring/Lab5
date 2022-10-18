<%-- 
    Document   : shoppingList
    Created on : Oct 16, 2022, 4:50:27 PM
    Author     : Rehan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    </head>
    <body> 
     <div class="container">
            <div class="row">
                <div class="col">
                    <h1 class="my-3">Hello <c:out value="${name}" />!</h1>&nbsp;
                    <a href="shoppingList?action=logout">Logout (Press twice to confirm)</a>
                    <br>
                    <br>
                    <br>
                    <form action="shoppingList" method="post">
                        <input type="hidden" name="action" value="add">
                        <h1>List</h1>
                        <br>
                        <label>Item:
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="item" name="item" style="height: 50px; width: 300px;">
                                <button type="submit" class="btn btn-primary mt-4 px-3">Submit</button>
                            </div>
                        </label>
                        <p>${message2}</p>
                    </form>
                    <br>
                    <form action="shoppingList" method="post">
                        <h3>Current Items</h3>
                        <p>${message1}</p>
                        <input type="hidden" name="action" value="delete">
                        <c:forEach var="item" items="${items}">
                            <label><input type="radio" name="item" value="${item}"> ${item}</label>
                            <br>
                        </c:forEach>
                            <br>
                            <button type="submit">Delete</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
