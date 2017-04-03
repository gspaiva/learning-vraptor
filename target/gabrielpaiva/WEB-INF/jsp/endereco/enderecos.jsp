<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<p> ${Ola}</p>

<form action="${linkTo[EnderecoController].add}" method="post">
    <span>Logradouro </span>
    <input type="input" name="endereco.logradouro"/>
    <span>Numero </span>
    <input type="input" name="endereco.numero"/>
    <span>Complemento </span>
    <input type="input" name="endereco.complemento"/>
    <span>Bairro </span>
    <input type="input" name="endereco.bairro"/>
    <span>CEP </span>
    <input type="input" name="endereco.cep"/>
    <span>Cidade</span>
    <input type="input" name="endereco.cidade"/>
    <span>Estado</span>
    <input type="input" name="endereco.estado"/>
    <span>Pessoa</span>

    <select name="endereco.pessoa.id" >
        <c:forEach  var="item" items="${pessoas}" >
        <option value="${item.id}">${item.nome}</option>
        </c:forEach>
    </select>

    <button>Add</button>
</form>


</body>
</html>
