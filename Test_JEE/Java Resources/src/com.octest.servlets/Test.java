package com.octest.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.octest.beans.Auteur;

/**
 * Servlet implementation class Test
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Test() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		request.setAttribute("name", name);
		
		// request.setAttribute("heure", "soir");
		
		// String message = "Au revoir";
		// request.setAttribute("variable", message);
		
		String[] noms = {"Mathieu", "Robert", "François"};
		request.setAttribute("noms", noms);
		
		Auteur auteur = new Auteur();
		auteur.setPrenom("Guillaume");
		auteur.setNom("Queste");
		auteur.setActif(true);
		request.setAttribute("auteur", auteur);
		
		String[] titres = {"Nouvel incendie", "Une île a été découverte", "Chute du dollar"};
		request.setAttribute("titres", titres);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
