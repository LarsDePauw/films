<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>film list</title>
</head>
<body>

<div>
    <c:choose>
        <c:when test="${empty films}">
            <p>Films-list is empty</p>
        </c:when>
        <c:otherwise>
            <table style="border: dotted 0.3px black;" bgcolor="red">
                <th style=" border: dotted 1px black">Id</th>
                <th>Movietitle</th>
                <c:forEach items="${films}" var="film">
                    <tr>
                        <td style="color: orangered; border: dotted 1px green">${film.id}</td>
                        <td>${film.title}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
