<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>

<body>
    <%@ include file="menu.jsp" %>
        <h1>Login</h1>

        <c:if test="${ !empty sessionScope.prenom && !empty sessionScope.nom }">
            <p>Vous êtes ${ sessionScope.prenom } ${ sessionScope.nom }</p>
        </c:if>

        <form method="post" action="login">
            <p>
                <label for="nom">Nom :</label>
                <input type="text" id="nom" name="nom" />
            </p>
            <p>
                <label for="prenom">Prenom :</label>
                <input type="text" id="prenom" name="prenom" />
            </p>

            <input type="submit" />
        </form>

        <a href="deconnexion">Déconnexion</a>
</body>

</html>