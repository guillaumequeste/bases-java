<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Test</title>
</head>

<body>
    <%@ include file="menu.jsp" %>
        <p>Bonjour ${ !empty name ? name : ''}</p>
        <p>${ noms[0] }</p>

        <p>${ auteur.prenom } ${ auteur.nom }</p>
        <p>${ auteur.actif ? "Vous êtes actif" : "Vous n'êtes pas actif" }</p>

        <p>
            <c:out value="${ variable }" escapeXml="false">Valeur par défaut</c:out>
        </p>

        <c:set var="pseudo" value="Mateo21" scope="page" />
        <p>
            <c:out value="${ pseudo }" />
        </p>

        <c:set var="pseudo" value="Robert" scope="page" />
        <p>
            <c:out value="${ pseudo }" />
        </p>

        <c:set target="${ auteur }" property="prenom" value="Gui" />
        <p>
            <c:out value="${ auteur.prenom }" />
        </p>

        <c:remove var="pseudo" scope="page" />

        <c:if test="${ 5 > 10 }" var="variable" scope="session">
            C'est vrai
        </c:if>
        <p>
            <c:out value="${ variable }" />
        </p>

        <!-- si le test est vrai j'affiche Du texte sinon j'affiche voici -->
        <c:choose>
            <c:when test="${ variable }">Du texte</c:when>
            <c:when test="${ variable2 }">Du texte</c:when>
            <c:otherwise><span>voici</span></c:otherwise>
        </c:choose>

        <c:forEach var="i" begin="0" end="10" step="2">
            <p>Un message n°
                <c:out value="${ i }" /> !</p>
        </c:forEach>

        <c:forEach items="${ titres }" var="titre" begin="0" end="1" varStatus="status">
            <p>N°
                <c:out value="${ status.count }" />
                <c:out value="${ titre }" />
            </p>
        </c:forEach>

        <c:forTokens var="morceau" items="Un élément/Encore un autre élément/Un autre" delims="/ ">
            <p>${ morceau }</p>
        </c:forTokens>




        <%
			//String name = (String) request.getAttribute("name");
			//out.println(name);
		%>

            <!--  <p> -->
            <%
		/*
			String heure = (String) request.getAttribute("heure");
		if (heure.equals("jour")) {
			out.println("Bonjour");
		} else {
			out.println("Bonsoir");
		}
		*/
		%>
                <!-- </p> -->
                <!-- <p> -->
                <%
		/*
			for (int i = 0; i < 20; i++) {
				out.println("Une nouvelle ligne <br />");
			}
		*/
		%>
                    <!-- </p> -->
</body>

</html>