<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Nuevo Expediente</title>
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

        <h1 id="ne">Nuevo Expediente</h1>

        <form action="Servlet">
            <p class="datos">Numero de Expediente:</p>
            <input name="nroExpe" type="number" class="formulario_" placeholder="Expediente número.." required> <br>

            <p class="datos">Carátula:</p>
            <input name="cara" type="text" class="formulario_" placeholder="carátula.."required> <br>
            
            <p class="datos">Fuero:</p>
            <select name="fuero" class="formulario_"><br>
                <option class="formulario_" value="laboral">Laboral</option>
                <option class="formulario_" value="civil">Civil</option>
                <option class="formulario_" value="penal">Penal</option>
                <option class="formulario_" value="familia">Familia</option>
            </select><br>
            
            <p class="datos">Número de juzgado:</p>
            <input name="nroJuz" type="number" class="formulario_" placeholder="juzgado número.." required> <br>

            <p class="datos">Fecha de última actualización:</p>
            <input name="fecha" value="fecha" type="date" class="formulario_" placeholder="actualización.." required> <br>
            
            <input class="btn-dark p-lg-2 mx-1 ms-5" type="submit" name="ac" value="Guardar">
            <a href="Servlet?ac=list" class="btn-dark p-lg-2 mx-1 ms-5">Volver a la lista</a>                     
</form>
</body>

<footer>
    <p class="font-weight-bold text-uppercase text-white p-0 m-0" >Pagina Web creada por:</p>
    <p class="font-weight-bold text-white mt-3 mb-4"> Emanuel Marquez, Ariel, Rocío Martin</p>
</footer>
</html>
