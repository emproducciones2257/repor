<%@page import="java.util.ArrayList"%>
<%@page import="blanqueoAriel.Model.Expediente"%>
<%@page import="MDAO.DAOExp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Blanqueen a Ariel</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <style>
            body {
                background-color: black;
            }
            #titulo {
                text-align: center;
                color: white;
                border-bottom: white 0.1vw dashed;
                width: 25vw;
                margin-left: 35vw;
            }

            .contenedor {
                text-align: center;          
            }

            .exp_guardados {
                color: white;
            }

            #nuevo, #fuero {
                padding: 0.45vw;
                background: linear-gradient(white, grey, rgb(65, 62, 62));
                color: white;
                cursor: pointer;
            }

            #ftr {
                text-align: center;
            }

        </style>

        <div class="contenedor">
            <h1 id="titulo">Listado De Causas</h1>
            <br><br>
            <h2 id="sub" class="h3 text-light mb-1">Lista de campos guardados</h2>
            <br><br>
            <div class="container">
                <table class="table table-hover table-dark">
                <thead>
                    <tr>
                        <th scope="col">Numero Expediente</th>
                        <th scope="col">Caratula</th>
                        <th scope="col">Fuero</th>
                        <th scope="col">Numero de Juzgado</th>
                        <th scope="col">Ultima Actualizacion</th>
                    </tr>
                </thead>
                <%
                    DAOExp expDao = new DAOExp();
                    ArrayList<Expediente> datos = new ArrayList<Expediente>();
                    datos = expDao.listarTodo();
                    if(datos!=null){
                        for (Expediente ex : datos){                                                
                %>
                <tbody>
                    <tr>                       
                        <td><%= ex.getNroExp()%></td>
                        <td><%= ex.getCara()%></td>
                        <td><%= ex.getFuero()%></td>
                        <td><%= ex.getNroJuzgado()%></td>
                        <td><%= ex.getFeUlUpdate()%></td>
                    </tr>
                  <%}}%>
                </tbody>
            </table>
            <br><br> 
            </div>            
                <a href="Servlet?ac=formulario"><button id="nuevo">Crear Expediente</button></a> 
                <a href="Servlet?ac=listarFuero"> <button  id="fuero">Listar Por Fuero</button></a>
            </div>
    </body>

    <footer id="ftr">
        <p class="font-weight-bold text-uppercase text-white p-1 m-1" >Pagina Web creada por:</p>
        <p class="font-weight-bold text-white p-0 m-0"> Emanuel Marquez, Ariel Rodriguez, Rocío Martin</p>
        <p class="font-weight-bold text-white p-0 m-0">Proyecto Final - Codo a Codo 4.0 </p>
    </footer>
</html>
