<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adicionar endereço</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
    <title>Pro-Golden Pessoas</title>
</head>
<body class="container">
<h3>Adicionando endereço para o ${id}</h3>

<div class="row">
    <form class="col s12" action="<c:url value="/pessoa/${id}/add/endereco"/>" method="post">
        <div class="row">
            <div class="input-field col s6">
                <input name = "endereco.logradouro" placeholder="Logradouro" id="logradouro" type="text" class="validate">
                <label for="logradouro">Logradouro</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="numero"  name = "endereco.numero" type="number" class="validate">
                <label for="numero">Número</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="complemento" name="endereco.complemento" type="text" class="validate">
                <label for="complemento">Complemento</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="bairro" name="endereco.bairro" type="text" class="validate">
                <label for="bairro">Bairro</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="cep" name="endereco.cep" type="number" class="validate">
                <label for="cep">CEP</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="cidade" name="endereco.cidade" type="text" class="validate">
                <label for="cidade">Cidade</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s6">
                <input id="estado" name="endereco.estado" type="text" class="validate">
                <label for="estado">Estado</label>
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
