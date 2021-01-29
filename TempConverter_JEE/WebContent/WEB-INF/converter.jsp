<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

    <%@ page import="fr.video2brain.tempconverter.models.*" %>
        <%
	User user = (User) request.getSession().getAttribute("user");

if (user == null) {
	System.out.println("no user session");
	response.sendRedirect("login");
} else {
	System.out.println("session retrieved");
}
%>

            <!doctype html>
            <html lang="en">

            <head>
                <!-- Required meta tags -->
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">

                <!-- Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

                <title>Login</title>
                <style>
                    .bd-placeholder-img {
                        font-size: 1.125rem;
                        text-anchor: middle;
                        -webkit-user-select: none;
                        -moz-user-select: none;
                        user-select: none;
                    }
                    
                    @media ( min-width: 768px) {
                        .bd-placeholder-img-lg {
                            font-size: 3.5rem;
                        }
                    }
                    
                    .bd-placeholder-img {
                        font-size: 1.125rem;
                        text-anchor: middle;
                        -webkit-user-select: none;
                        -moz-user-select: none;
                        user-select: none;
                    }
                    
                    @media (min-width: 768px) {
                        .bd-placeholder-img-lg {
                            font-size: 3.5rem;
                        }
                    }
                </style>
            </head>

            <body>
                <header>
                    <div class="collapse bg-dark" id="navbarHeader">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-8 col-md-7 py-4">
                                    <h4 class="text-white">About</h4>
                                    <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites
                                        or contact information.
                                    </p>
                                </div>
                                <div class="col-sm-4 offset-md-1 py-4">
                                    <h4 class="text-white">Contact</h4>
                                    <ul class="list-unstyled">
                                        <li><a href="#" class="text-white">Follow on Twitter</a></li>
                                        <li><a href="#" class="text-white">Like on Facebook</a></li>
                                        <li><a href="#" class="text-white">Email me</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="navbar navbar-dark bg-dark shadow-sm">
                        <div class="container">
                            <a href="#" class="navbar-brand d-flex align-items-center"> <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24">
						<path
							d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z" />
						<circle cx="12" cy="13" r="4" /></svg> <strong>Temperature
						Converter</strong>
                            </a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
                        </div>
                    </div>
                </header>

                <main>

                    <div class="container">
                        <h4>Celsius value</h4>
                        <form class="navbar-form pull-left" method="POST">
                            <input type="text" class="span2" name="celsius">
                            <button type="submit" class="btn btn-primary">Convertir</button>
                        </form>
                    </div>

                    <br><br>
                    <h4>Celsius value</h4>
                    <%
			if (request.getAttribute("result") != null)
				out.write(request.getAttribute("result").toString());
		%>

                </main>



                <!-- Optional JavaScript; choose one of the two! -->

                <!-- Option 1: Bootstrap Bundle with Popper -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

                <!-- Option 2: Separate Popper and Bootstrap JS -->
                <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->
            </body>

            </html>