<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Autre</title>
</head>

<body>
    <p>Vous êtes sur autre.jsp</p>

    <c:if test="${ !empty sessionScope.prenom && !empty sessionScope.nom }">
        <p>Vous êtes ${ sessionScope.prenom } ${ sessionScope.nom }</p>
    </c:if>


</body>

</html>