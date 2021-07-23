package Controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MDAO.DAOExp;
import blanqueoAriel.Model.Expediente;


public class ServletFuero extends HttpServlet {

	private DAOExp exDao = new DAOExp();  
	private String viewListarFuero ="view/fuero.jsp";
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dir="";
		
        String fuero = request.getParameter("fuerito");
    	System.out.println("El fuero es " + request.getParameter("item"));
    	ArrayList<Expediente> todos = exDao.listarXFuero(fuero);
    	request.setAttribute("datos", todos);
    	
    	request.setAttribute("datos", todos);
    	dir = viewListarFuero;
    	
    	RequestDispatcher vista=request.getRequestDispatcher(dir);
        vista.forward(request, response);  
	}
}
