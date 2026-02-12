<%@ page import="java.util.*,bd.model.Usuario" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Jogo</title>
    <link rel="stylesheet" href="css/estiloPaginaForm.css">
</head>
<body>

    <div class="container">
        <h2>Cadastro de Jogo</h2>
        <form action="cadastrarJogo" method="post">

            <div class="form-group">
                <label for="nome">Nome do Jogo:</label>
                <input type="text" id="nome" name="nome" required>
            </div>

            <div class="form-group">
                <label for="dataCompra">Data da Compra:</label>
                <input type="date" id="dataCompra" name="dataCompra" required>
            </div>

            <div class="form-group">
                <label for="usuario">Usuário:</label>
                <select id="usuario" name="idUsuario" required>
                    <option value="">Selecione</option>
                    <% for(Usuario usuario : (List<Usuario>)request.getAttribute("usuarios")) { %>
                        <option value="<%=usuario.getId()%>">
                            <%=usuario.getNome()%>
                        </option>
                    <% } %>
                </select>
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
