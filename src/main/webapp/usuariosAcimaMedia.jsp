<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bd.model.Usuario" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuários Acima da Média</title>

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
        <div class="container mt-5">

            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2 class="text-light fw-bold mb-0">
                    <i class="bi bi-graph-up-arrow"></i> Usuários Acima da Média
                </h2>

                <a href="/app-web" class="btn btn-custom-theme">
                    <i class="bi bi-arrow-left"></i> Voltar
                </a>
            </div>

            <div class="table-responsive">
                <table class="table table-dark table-striped table-hover align-middle text-center shadow">

                    <thead class="table-primary text-dark">
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Email</th>
                        </tr>
                    </thead>

                    <tbody>
                        <%
                        List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");

                        if(lista != null && !lista.isEmpty()){
                            for(Usuario u : lista){
                        %>
                            <tr>
                                <td><%= u.getId() %></td>
                                <td><%= u.getNome() %></td>
                                <td><%= u.getEmail() %></td>
                            </tr>
                        <%
                            }
                        } else {
                        %>
                            <tr>
                                <td colspan="3" class="text-warning">
                                    Nenhum usuário encontrado.
                                </td>
                            </tr>
                        <%
                        }
                        %>
                    </tbody>

                </table>
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