package fr.video2brain.tempconverter.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConverterServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/converter.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String celsius = req.getParameter("celsius");
		
		float floatCelsius = Float.parseFloat(celsius);
		
		float result = (floatCelsius * 9/5) + 32;
		
		System.out.println("result : " + result);
		
		req.setAttribute("result", result);
		req.getRequestDispatcher("/WEB-INF/converter.jsp").forward(req, resp);
	}
	
	

}
