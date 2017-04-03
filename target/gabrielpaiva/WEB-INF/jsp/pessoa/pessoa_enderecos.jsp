<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Compiled and minified CSS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
    <title>Pessoa endereço</title>
</head>
<body class="container">

    <div class="row">
        <h3>Endereços vinculados a ${pessoa.nome}</h3>
        <table>
            <thead>
            <tr>
                <th>Logradouro</th>
                <th>Número</th>
                <th>Complemento</th>
                <th>Bairro</th>
                <th>Cidade</th>
                <th>Editar</th>
                <th>Deletar</th>

            </tr>
            </thead>
            </tbody>
            <c:forEach items="${pessoa.enderecos}" var="item">
                <tr>
                    <td>${item.logradouro}</td>
                    <td>${item.numero}</td>
                    <td>${item.complemento}</td>
                    <td>${item.bairro}</td>
                    <td>${item.cidade}</td>
                    <td><a href="/gabrielpaiva/endereco/${item.id}"><button class="waves-effect waves-light btn"  ><i class="material-icons">mode_edit</i></button></a>
                    </td>
                    <td>
                        <form action="<c:url value="/endereco/${item.id}/pessoa/${pessoa.id}"/>" method="POST">
                            <button class="waves-effect waves-light btn"  name="_method" value="DELETE"><i class="material-icons">delete</i></button>
                        </form>
                    </td>

                </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>



    <script
            src="https://code.jquery.com/jquery-3.2.1.min.js"
            integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
            crossorigin="anonymous"></script>
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
</body>
</html>
