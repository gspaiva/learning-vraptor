<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Compiled and minified CSS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
    <title>Adicionar pessoas</title>

</head>
<body class="container">
    <h3>Adicionar uma nova pessoa ao sistema</h3>
    <div class="row">
        <form class="col s12"action="${linkTo[PessoaController].add}" method="post">
            <div class="row">
                <div class="input-field col s6">
                    <input name = "pessoa.nome" placeholder="Nome" id="nome" type="text" class="validate">
                    <label for="nome">Nome</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s6">
                    <input id="idade"  name = "pessoa.idade" type="number" class="validate">
                    <label for="idade">Idade</label>
                </div>
            </div>
            <button class="btn waves-effect waves-light" type="submit" name="action">Submit
                <i class="material-icons right">send</i>
            </button>
        </form>
    </div>

    <script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous"></script>
<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>

</body>
</html>
