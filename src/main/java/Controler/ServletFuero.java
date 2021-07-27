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
	private String viewEditFuero ="view/modificar.jsp";
	private String viewIndex = "index.jsp";
	private String dir="";
	private DAOExp expDao = new DAOExp();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		if((request.getParameter("update")==null) && 
				(request.getParameter("delete")==null) &&
				(request.getParameter("editarRegistro")==null) &&
				(request.getParameter("volver")==null)) {
					
			ArrayList<Expediente> todos = exDao.listarXFuero(request.getParameter("fuerito"));
			request.setAttribute("todosExpedientes", todos);
			request.setAttribute("fueroElegido", request.getParameter("fuerito"));
			
			dir = viewListarFuero;			
			
			RequestDispatcher vista=request.getRequestDispatcher(dir);
	        vista.forward(request, response);
	        
		}else if (request.getParameter("update")!=null) {

			Expediente expeEditar = expDao.expeXId(Integer.valueOf(request.getParameter("update"))); 
			request.setAttribute("datoActualizar", expeEditar);
			
			dir = viewEditFuero;
			RequestDispatcher vista=request.getRequestDispatcher(dir);
	        vista.forward(request, response);
			
		}else if (request.getParameter("editarRegistro")!=null) {
			Expediente ex = new Expediente();
			
			ex.setIdExp(Long.parseLong(request.getParameter("idEditar")));
            ex.setNroExp(request.getParameter("nroExpe"));
            ex.setCara(request.getParameter("cara"));
            ex.setFuero(request.getParameter("fuero"));
            ex.setNroJuzgado(request.getParameter("nroJuz"));
            ex.setFeUlUpdate(request.getParameter("fecha"));           
            
            exDao.actualizarExpediente(ex);
            
			ArrayList<Expediente> todos = exDao.listarXFuero(request.getParameter("fuero"));
			request.setAttribute("todosExpedientes", todos);
			request.setAttribute("fueroElegido", request.getParameter("fuero"));
            
			dir = viewListarFuero;
			RequestDispatcher vista=request.getRequestDispatcher(dir);
	        vista.forward(request, response);
		}else if (request.getParameter("volver")!=null) {
			
			dir = viewIndex;
			RequestDispatcher vista=request.getRequestDispatcher(dir);
	        vista.forward(request, response);
		}
	}
}
