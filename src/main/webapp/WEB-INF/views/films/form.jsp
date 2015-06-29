<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Formulier</title>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Create a movie</h1>

    <div>
        <sf:form commandName="film" action="/create" method="post">
            <div class="form-group">
                <sf:input path="title" class="form-control"/>
                <sf:errors path="form"/>
            </div>
            <br>

            <div>
                <sf:input path="imageUrl"/>

                <div class="button"><br>
                    <button class="btn btn-primary" type="submit" value="Voeg film toe">voeg film toe</button>
                </div>
            </div>
        </sf:form>
    </div>
</div>
</body>
</html>

