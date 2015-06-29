<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Details</title>
</head>
<body>

<div>
    <h1 style="font-size:2rem;
    cursor:crosshair;
    font-weight:bold;
    color:red;
    text-decoration:underline;
    text-align:left">${film.title}</h1>
</div>
<div>
    <p>
       - Uitleg over de film -
    </p>

    <div class="container">
        <div class="title">
            ${film.title}
            <a href="http://lmgtfy.com/?q="${film.id}>Details</a>
        </div>
    </div>
</div>
</body>
</html>
