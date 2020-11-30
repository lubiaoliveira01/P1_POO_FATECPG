<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Prova</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <style>
        footer {
            /*deixa o texto no fim da página*/
            position: inherit;
            bottom: 0px;   
            width: 100%;
        }
        
        body {
            display: flex;
            min-height: 100vh;
            flex-direction: column;
        }

        main {
          flex: 1 0 auto;
        }
        #logo{

            padding-left: 25px;
        }
        </style>
    </head>
    <body>
        <header>
            <nav class="indigo lighten-1">
                <div class="nav-wrapper">
                    <a id="logo" href="index.jsp" class="brand-logo">
                        <i class="large material-icons">book</i>
                        <i>Prova Bimestral</i>
                    </a> 
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="sobre.jsp"><i class="large material-icons left">assignment</i>Sobre</a></li>
                        <li><a href="disciplinas.jsp"><i class="large material-icons left">list</i>Disciplina</a></li>
                    </ul>
                </div>
            </nav>
        </header>

