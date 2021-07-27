<%@page import="java.util.ArrayList"%>
<%@page import="blanqueoAriel.Model.Expediente"%>
<%@page import="MDAO.DAOExp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		    font-weight: bold;
		       
		}
		.item {
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
		
		<header class="container text-dark">
    		<h2 class="h4 p-1 mb-4 mt-4 " id="titulo" > <i>Expedientes en el Fuero</i>  
			 	<br>		 
			 <form action="ServletFuero">
				 		         
		         <select id="fuerito" name="fuerito">
    				<c:forEach var="item" items="${Expediente.fueroLista}">
        				<option value="${item}" ${item.toUpperCase() == fueroElegido.toUpperCase() ? 'selected="selected"' : ''}>${item}</option>
    				</c:forEach>
				</select>
		         
		         <input type="submit" value="Buscar" class="btn-dark p-2 border-light text-light">								
			 </form>
			 </h2>
		</header>
		
		<table id="tabla">
			<tr id="celda1">
			    <td class="col">Número de Expediente</td>
			    <td class="col"> Carátula</td>
			    <td class="col">Número de Juzgado</td>
			    <td class="col">Último Movimiento</td>
			    <td class="col">Acción</td>
			</tr>
		
		<%
			for(Expediente ex : (ArrayList<Expediente>)request.getAttribute("todosExpedientes")){
		%>
                <tbody>
                    <tr> 
                    	<td class="item"><%= ex.getNroExp() %></td>                                              
                        <td class="item"><%= ex.getCara()%></td>                        
                        <td class="item"><%= ex.getNroJuzgado()%></td>
                        <td class="item"><%= ex.getFeUlUpdate()%></td>
                        <td class="item">
                        	<a class="text-succes" href=ServletFuero?update=<%= ex.getIdExp() %>> Modificar</a>
                        	<a class="text-danger" href=ServletFuero?delete=<%= ex.getIdExp() %>>Eliminar</a>
                        </td>
                    </tr>
                  <%}%>
                </tbody>
            </table>
    	   	
    	<a href="Servlet?ac=list"> <button class="btn-dark p-2 border-light text-light" id="boton">Volver</button></a>

	</body>
	
</html>