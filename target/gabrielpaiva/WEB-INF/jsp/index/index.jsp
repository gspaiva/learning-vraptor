<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Compiled and minified CSS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
	<title>Pro-Golden Pessoas</title>

</head>
<body class="container">


	<h1 class="center-align"> Pessoas cadastradas</h1>
    <div class="row">
        <div class="s12">
            <table>
                <thead>
                <tr>
                    <th>Nome</th>
                    <th>Idade</th>
                    <th>Adicionar Endereço</th>
                    <th>Ver Endereços</th>
                    <th>Delete</th>
                    <th>Editar</th>
                </tr>
                </thead>
                </tbody>
                <c:forEach items="${pessoas}" var="item">
                    <tr>
                        <td>${item.nome}</td>
                        <td>${item.idade}</td>
                        <td>
                            <a href="/gabrielpaiva/pessoa/${item.id}/endereco" class="waves-effect waves-light btn">+</a></td>
                        <td>
                            <a href="/gabrielpaiva/pessoa/${item.id}/enderecos" class="waves-effect waves-light btn">Ver</a></td>
                        <td>
                            <form action="<c:url value="/pessoa/${item.id}"/>" method="POST">
                                <button class="waves-effect waves-light btn"  name="_method" value="DELETE"><i class="material-icons">delete</i></button>
                            </form>
                        </td>
                        <td>

                            <a href="/gabrielpaiva/pessoa/${item.id}"><button class="waves-effect waves-light btn"  ><i class="material-icons">mode_edit</i></button></a>


                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>

    <div class="row">
        <div class="s6">
            <a href="/gabrielpaiva/pessoa/add"><button class="waves-effect waves-light btn"> Adicionar Pessoa </button>
            </a>
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