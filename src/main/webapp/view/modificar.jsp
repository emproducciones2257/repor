<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored ="false" %> 
<%@page import="MDAO.DAOExp"%>
<%@page import="blanqueoAriel.Model.Expediente"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Actualizar Expediente</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
		<style>
            body {
                background-color: black;
            }
            #ne {
                text-align: center;
                color: white;
                border-bottom: white 0.1vw dashed;
                width: 26vw;
                margin-bottom: 2vw;
                margin-top: 1vw;
                padding: 0.5vw;
                font-family:monospace;
                font-size: 2.5vw;
            }

            .datos {
                color: white;
                width: 30vw;
                font-size: 1.4vw;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            .formulario_ {
                padding: 0.5vw;
                margin-bottom: 2vw;
                font-size: 1.1vw;
                width: 25vw;
            }

            footer {
                text-align: center;
            }

            #volver {
                margin-left: 20vw;
                margin-top: 2vw;
            }
        </style>
      
        <h1 id="ne">Modificar Expediente</h1>
        
        <form action="ServletFuero">
            <p class="datos">Numero de Expediente:</p>
            <input name="nroExpe" type="number" class="formulario_" value='${datoActualizar.getNroExp()}' required> <br>

            <p class="datos">Carátula:</p>
            <input name="cara" type="text" class="formulario_"  value='${datoActualizar.getCara()}' required> <br>
            
            <p class="datos">Fuero:</p>
            <select name="fuero" class="formulario_"><br>
    			<c:forEach var="item" items="${Expediente.fueroLista}">
        			<option class="formulario_" value="${item}" ${item.toUpperCase() == datoActualizar.getFuero().toUpperCase() ? 'selected="selected"' : ''}>${item}</option>
    			</c:forEach>
			</select><br>
                     
            <p class="datos">Número de juzgado:</p>
            <input name="nroJuz" type="number" class="formulario_" value='${datoActualizar.getNroJuzgado()}' required> required> <br>

            <p class="datos">Fecha de última actualización:</p>
            <input name="fecha" type="date" class="formulario_" value='${datoActualizar.getFeUlUpdate()}' required> <br>

            <input name="idEditar" style="display: none;" value='${datoActualizar.getIdExp()}'>
            
            <input class="btn-dark p-lg-2 mx-1 ms-5" type="submit" name="editarRegistro" value="Actualizar">
            <input class="btn-dark p-lg-2 mx-1 ms-5" type="submit" name="volver" value="Volver">
    		    		                          
		</form>

	</body>
	
	<footer>
	    <p class="font-weight-bold text-uppercase text-white p-0 m-0" >Pagina Web creada por:</p>
	    <p class="font-weight-bold text-white mt-3 mb-4"> Emanuel Marquez, Ariel, Rocío Martin</p>
	</footer>
	
</html>