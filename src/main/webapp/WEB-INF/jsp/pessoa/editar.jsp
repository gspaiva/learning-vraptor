<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Compiled and minified CSS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
    <title>Editar</title>

</head>
<body>

    <h3>${pessoa.nome}</h3>

    <div class="row">
        <div class="s12">
            <form class="col s12"action="<c:url value="/pessoa/${pessoa.id}"/>" method="post">
                <div class="row">
                    <div class="input-field col s6">
                        <input name = "pessoa.nome" placeholder="Nome" id="nome" value="${pessoa.nome}" type="text" class="validate">
                        <label for="nome">Nome</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6">
                        <input id="idade"  name = "pessoa.idade" value="${pessoa.idade}" type="number" class="validate">
                        <label for="idade">Idade</label>
                    </div>
                </div>
                <button type="submit" name = "_method" value="PUT" class="btn waves-effect waves-light" type="submit" name="action">Editar
                    <i class="material-icons right">send</i>
                </button>
            </form>

        </div>
    </div>


    <script
            src="https://code.jquery.com/jquery-3.2.1.min.js"
            integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
            crossorigin="anonymous"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>

</body>
</html>
