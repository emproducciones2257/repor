package Controler;

import MDAO.DAOExp;
import blanqueoAriel.Model.Expediente;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Servlet extends HttpServlet {

    private String viewForm ="view/formulario.jsp";
    private String viewListarFuero ="view/fuero.jsp";
    private String viewIndex = "index.jsp";
    private DAOExp exDao = new DAOExp();
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        	PrintWriter out = response.getWriter();
            //
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	String dir="";

    		String accion = request.getParameter("ac");
            
            if(accion.equalsIgnoreCase("formulario")){
                dir=viewForm;
                
            }else if(accion.equalsIgnoreCase("Guardar")){
                Expediente ex = new Expediente();
                ex.setNroExp(request.getParameter("nroExpe"));
                ex.setCara(request.getParameter("cara"));
                ex.setFuero(request.getParameter("fuero"));
                ex.setNroJuzgado(request.getParameter("nroJuz"));
                ex.setFeUlUpdate(request.getParameter("fecha"));           
                exDao.cargarExpediente(ex);

                dir=viewForm;
            }else if(accion.equalsIgnoreCase("list")){
                dir=viewIndex;
                
            }else if(accion.equalsIgnoreCase("listarFuero")) {       	
            	ArrayList<Expediente> todos = exDao.listarTodo();
            	request.setAttribute("todosExpedientes", todos);           	
            	dir=viewListarFuero;
            	
            }else if(accion.equalsIgnoreCase("buscar")) {
            	ArrayList<Expediente> datos = new ArrayList<Expediente>();
            	datos = exDao.listarTodo();
            	request.setAttribute("todosExpedientes", datos); 
            	dir=viewListarFuero;
            }else {
            	  		
		}
  
        RequestDispatcher vista=request.getRequestDispatcher(dir);
        vista.forward(request, response);       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {      
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
