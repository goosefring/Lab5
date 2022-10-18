<%-- 
    Document   : register
    Created on : Oct 16, 2022, 4:31:13 PM
    Author     : Rehan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1 class="my-3">Shopping List</h1>
                    <form action="shoppingList" method="post">
                        <input type="hidden" name="action" value="register">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="name" name="name" placeholder="name" style="width: 300px;">
                            <label for="name">Name</label>
                            <button type="submit" class="btn btn-primary mt-4 px-3">Submit</button>
                            <br>
                            <br>
                            <br>
                            <p>${message}</p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
