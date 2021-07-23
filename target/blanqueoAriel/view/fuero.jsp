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
		
		<header class="container text-dark">
    		<h1 class="h4 p-1 mb-4 mt-4 " id="titulo" > <i>Expedientes en el Fuero:</i> </h1>
		</header>
		
		<table id="tabla">
			<tr id="celda1">
			    <td class="col">N�mero de Expediente</td>
			    <td class="col"> Car�tula</td>
			    <td class="col">N�mero de Juzgado</td>
			    <td class="col">�ltimo Movimiento</td>
			</tr>
    	</table>
    	
    	
    	<a href="Servlet?ac=list"> <button class="btn-dark p-2 border-light text-light" id="boton">Volver</button></a>

	</body>
	
</html>