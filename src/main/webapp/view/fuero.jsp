<%@page import="java.util.ArrayList"%>
<%@page import="blanqueoAriel.Model.Expediente"%>
<%@page import="MDAO.DAOExp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Listar por fuero</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
	
		<style>
		
		body {
            background-image: url(https://www.repricerexpress.com/wp-content/uploads/2014/08/grey-background-v1.jpg);
        }
        
        .col {
		    padding: 0.7vw;
		    margin: 0.5vw;
		    font-family: inherit;
		    font-size: 1.5vw;
		    border: 0.1vw solid black;
		    background: linear-gradient(white, grey);
    
		}
		
		table {margin-left: 23vw;}
		
		#titulo {margin-left: 30vw;}

		#boton {
    		margin-left: 70vw;
    		margin-top: 5vw;
		}
		</style>
		
		<%
			ArrayList<Expediente> datos = new ArrayList<Expediente>();
			if(request.getAttribute("datos")!=null){
				datos = (ArrayList<Expediente>)request.getAttribute("datos");
			}else{
				DAOExp expDao = new DAOExp();
				datos = expDao.listarXFuero("penal");
			}

		%>
		
		<header class="container text-dark">
    		<h2 class="h4 p-1 mb-4 mt-4 " id="titulo" > <i>Expedientes en el Fuero</i></h2>  
			 			 
			 <form action="ServletFuero">
				 <select id="fuerito" name="fuerito">
			                <option value="laboral">Laboral</option>
			                <option value="civil">Civil</option>
			                <option value="penal">Penal</option>
			                <option value="familia">Familia</option>
		         </select>
		         
		         <input type="submit" value="Buscar">								
			 </form>
		</header>
		
		<table id="tabla">
			<tr id="celda1">
			    <td class="col">Número de Expediente</td>
			    <td class="col"> Carátula</td>
			    <td class="col">Número de Juzgado</td>
			    <td class="col">Último Movimiento</td>
			</tr>
		
		<%
			for(Expediente ex : datos){
		%>
                <tbody>
                    <tr> 
                    	<td><%= ex.getNroExp() %></td>                                              
                        <td><%= ex.getCara()%></td>
                        <td><%= ex.getFuero()%></td>
                        <td><%= ex.getNroJuzgado()%></td>
                        <td><%= ex.getFeUlUpdate()%></td>
                    </tr>
                  <%}%>
                </tbody>
            </table>
    	   	
    	<a href="Servlet?ac=list"> <button class="btn-dark p-2 border-light text-light" id="boton">Volver</button></a>

	</body>
	
</html>