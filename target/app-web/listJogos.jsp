<%@ page import="java.util.*,bd.model.Jogos" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Tabela de Listagem</title>
    <link rel="stylesheet" href="css/estiloPaginaListagem.css">
</head>
<body>

    <a href="/app-web" class="estiloBotaoLink">Voltar para Página Inicial</a>

    <h2>Listagem de Jogos</h2>

    <table class="tabela-listagem">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome do Jogo</th>
                <th>Data da Compra</th>
                <th>ID do Usuário</th>
                <th>Ações</th>
            </tr>
        </thead>
        <tbody>
            <% for(Jogos jogo : (List<Jogos>)request.getAttribute("jogos")) { %>
                <tr>
                    <td><%= jogo.getId() %></td>
                    <td><%= jogo.getNome() %></td>
                    <td><%= jogo.getDataCompra() %></td>
                    <td><%= jogo.getIdUsuario() %></td>
                    <td>
                        <a href="editar?id=<%=jogo.getId()%>" class="linkEditar">Editar</a>
                        &nbsp;
                        <a href="excluirJogo?id=<%=jogo.getId()%>" class="linkExcluir">Excluir</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>

</body>
</html>
