<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="bd.model.Jogos" %>

<%
Jogos jogo = (Jogos) request.getAttribute("jogo");
%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Jogo</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <link rel="stylesheet" href="css/estiloPaginaIndex.css">
    <link rel="shortcut icon" href="assets/images/logo kronos.png" type="image/x-icon">
</head>

<body>

    <!-- NAVBAR -->
    <header>
        <nav class="navbar navbar-dark custom-navbar shadow">
            <div class="container justify-content-center">
                <a class="navbar-brand d-flex align-items-center" href="/app-web">
                    <img src="assets/images/logo kronos.png" alt="Logo" width="60" class="me-2">
                    <span class="logo-text fs-4 fw-bold">Kronos</span>
                </a>
            </div>
        </nav>
    </header>

    <main>
        <div class="container mt-5 d-flex justify-content-center">
            <div class="col-md-6 col-lg-5">

                <div class="card bg-dark text-light shadow-lg p-4">

                    <h2 class="text-center mb-4 text-danger">
                        <i class="bi bi-exclamation-triangle"></i>
                        Confirmar Exclusão
                    </h2>

                    <% if (jogo != null) { %>

                        <form action="excluirJogo" method="post">

                            <input type="hidden" name="id" value="<%= jogo.getId() %>">

                            <div class="mb-3">
                                <label class="form-label fw-bold">Nome do Jogo</label>
                                <div class="form-control bg-secondary text-light">
                                    <%= jogo.getNome() %>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label class="form-label fw-bold">Data da Compra</label>
                                <div class="form-control bg-secondary text-light">
                                    <%= jogo.getDataCompra() %>
                                </div>
                            </div>

                            <div class="mb-4">
                                <label class="form-label fw-bold">ID do Usuário</label>
                                <div class="form-control bg-secondary text-light">
                                    <%= jogo.getIdUsuario() %>
                                </div>
                            </div>

                            <div class="d-flex justify-content-between">

                                <button type="submit" class="btn btn-danger">
                                    <i class="bi bi-trash"></i> Excluir
                                </button>

                                <a href="listarJogos" class="btn btn-outline-light">
                                    <i class="bi bi-x-circle"></i> Cancelar
                                </a>

                            </div>

                        </form>

                    <% } else { %>

                        <div class="alert alert-warning text-center">
                            Jogo não encontrado.
                        </div>

                        <div class="text-center">
                            <a href="listarJogos" class="btn btn-outline-light">
                                Voltar
                            </a>
                        </div>

                    <% } %>

                </div>

            </div>
        </div>
    </main>

    <!-- FOOTER -->
    <footer class="footer-dark py-4 mt-5">
        <div class="container text-center text-light">
            <p class="mb-0">
                © 2026 Kronos - Sistema de Gerenciamento de Jogos
            </p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>