<%@ page import="bd.model.Jogos" %>
<%
Jogos jogo = (Jogos) request.getAttribute("jogo");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Excluir Jogo</title>
    <link rel="stylesheet" href="css/estiloPaginaForm.css">
</head>
<body>
    <div class="container">
        <h2>Realmente deseja excluir este jogo?</h2>
        <form action="excluirJogo" method="post">

            <input type="hidden" name="id" 
                   value="<%= jogo != null ? jogo.getId() : "" %>">

            <div class="form-group">
                <label>Nome:</label>
                <span><%= jogo.getNome() %></span>
            </div>

            <div class="form-group">
                <label>Data da Compra:</label>
                <span><%= jogo.getDataCompra() %></span>
            </div>

            <div class="form-group">
                <label>ID do Usuário:</label>
                <span><%= jogo.getIdUsuario() %></span>
            </div>

            <div class="form-group">
                <input type="submit" value="Excluir">
               
                <a href="listarJogos">
                    <input type="button" value="Cancelar">
                </a>
            </div>

        </form>
    </div>
</body>
</html>
