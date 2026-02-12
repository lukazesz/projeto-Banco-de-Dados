<%@ page import="bd.model.Jogos" %>
<%
Jogo jogo = (Jogo) request.getAttribute("jogo");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Editar Jogo</title>
    <link rel="stylesheet" href="css/estiloPaginaForm.css">
</head>
<body>
    <div class="container">
        <h2>Editar Jogo</h2>
        <form action="editar" method="post">

            <input type="hidden" name="id" value="<%= jogo != null ? jogo.getId() : "" %>">

            <div class="form-group">
                <label>Nome:</label>
                <input type="text" name="nome" 
                       value="<%= jogo != null ? jogo.getNome() : "" %>">
            </div>

            <div class="form-group">
                <label>Gênero:</label>
                <input type="text" name="genero" 
                       value="<%= jogo != null ? jogo.getGenero() : "" %>">
            </div>

            <div class="form-group">
                <label>Plataforma:</label>
                <input type="text" name="plataforma" 
                       value="<%= jogo != null ? jogo.getPlataforma() : "" %>">
            </div>

            <div class="form-group">
                <label>Preço:</label>
                <input type="number" step="0.01" name="preco" 
                       value="<%= jogo != null ? jogo.getPreco() : "" %>">
            </div>

            <div class="form-group">
                <input type="submit" value="Salvar">
                <a href="listarJogos">
                    <input type="button" value="Cancelar">
                </a>
            </div>

        </form>
    </div>
</body>
</html>
