<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gabriel
  Date: 31/03/17
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Events</title>
</head>
<body>
<h1>Events</h1>
<table>
    <c:forEach items="${pessoas}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.nome}</td>
            <td>${item.idade}</td>
        </tr>
    </c:forEach>
</table>
<br/>
<form action="${linkTo[PessoaController].add}" method="post">
    <span>Nome </span>
    <input type="input" name="pessoa.nome"/>
    <span>Idade </span>
    <input type="input" name="pessoa.idade"/>
    <button>Add</button>
</form>
</body>
</html>
