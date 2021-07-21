package Controler;

import MDAO.DAOExp;
import blanqueoAriel.Model.Expediente;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Servlet extends HttpServlet {

    String viewForm ="view/formulario.jsp";
    String viewIndex = "index.jsp";
    DAOExp exDao = new DAOExp();
     
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
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
        
        String accion = request.getParameter("ac");
        String dir="";
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
