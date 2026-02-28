<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Gerenciamento de Jogos</title>
    <link rel="shortcut icon" href="assets/images/logo kronos.png" type="image/x-icon">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <link rel="stylesheet" href="css/estiloPaginaIndex.css">
</head>

<body>

    <!-- NAVBAR -->
    <header>
        <nav class="navbar navbar-dark custom-navbar shadow">
            <div class="container justify-content-center">
                <a class="navbar-brand d-flex align-items-center" href="#">
                    <img src="assets/images/logo kronos.png" alt="Logo" width="60" class="me-2">
                    <span class="logo-text fs-4 fw-bold">Kronos</span>
                </a>
            </div>
        </nav>
    </header>

    <!-- CONTEÚDO -->
    <main>
        <div class="container text-center mt-5">

            <h2 class="mb-4 text-light fw-bold">
                Sistema de Gerenciamento de Jogos
            </h2>

            <!-- CARROSSEL -->
            <div class="carousel-wrapper mb-5">

                <div id="carouselJogos" class="carousel slide" data-bs-ride="carousel">

                    <div class="carousel-inner rounded shadow">

                        <div class="carousel-item active">
                            <img src="assets/images/carrossel photo 1.png" class="d-block w-100" alt="Imagem 1">
                        </div>

                        <div class="carousel-item">
                            <img src="assets/images/carrossel photo 2.png" class="d-block w-100" alt="Imagem 2">
                        </div>

                        <div class="carousel-item">
                            <img src="assets/images/carrossel photo 3.png" class="d-block w-100" alt="Imagem 3">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/images/carrossel photo 4.png" class="d-block w-100" alt="Imagem 4">
                        </div>

                    </div>

                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselJogos"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </button>

                    <button class="carousel-control-next" type="button" data-bs-target="#carouselJogos"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </button>

                </div>
            </div>

            <!-- FUNCIONALIDADES JOGOS -->
            <h4 class="text-light mb-3">Funcionalidades de Jogos</h4>

            <div class="d-flex flex-wrap justify-content-center gap-3 mb-4">

                <a href="listarJogos" class="btn btn-custom-theme btn-lg">
                    <i class="bi bi-list"></i> Listar Jogos
                </a>

                <a href="cadastrarJogo" class="btn btn-custom-theme btn-lg">
                    <i class="bi bi-plus-circle"></i> Cadastrar Jogo
                </a>

                <a href="buscarJogosPorData.jsp" class="btn btn-custom-theme btn-lg">
                    <i class="bi bi-calendar"></i> Buscar por Data
                </a>

                <a href="listarJogosPorAno" class="btn btn-custom-theme btn-lg">
                    <i class="bi bi-bar-chart"></i> Jogos por Ano
                </a>

                <a href="listarJogosPorCategoriaPage" class="btn btn-custom-theme btn-lg">
                    <i class="bi bi-bar-chart"></i> Lista de jogos por Categoria
                </a>

            </div>

            <!-- FUNCIONALIDADES USUÁRIOS -->
            <h4 class="text-light mb-3">Funcionalidades de Usuários</h4>

            <div class="d-flex flex-wrap justify-content-center gap-3">

                <a href="quantidadeJogosPorUsuario" class="btn btn-outline-info btn-lg">
                    <i class="bi bi-123"></i> Quantidade por Usuário
                </a>

                <a href="listarUsuariosComJogos" class="btn btn-outline-success btn-lg">
                    <i class="bi bi-people"></i> Usuários e Jogos
                </a>

                <a href="usuariosAcimaMedia" class="btn btn-outline-danger btn-lg">
                    <i class="bi bi-graph-up"></i> Acima da Média
                </a>

            </div>

        </div>
    </main>

    <!-- FOOTER -->
    <footer class="footer-dark py-4 mt-5">
        <div class="container">
            <div class="row text-center align-items-center">

                <div class="col-md-4 mb-3 mb-md-0">
                    <p class="mb-0">
                        Contato:<br>

                        <a href="https://mail.google.com/mail/?view=cm&to=lucasprivado@gmail.com" target="_blank"
                            class="link-custom">
                            lucasprivado@gmail.com
                        </a>
                        <br>

                        <a href="https://mail.google.com/mail/?view=cm&to=miguelferreirads458@gmail.com" target="_blank"
                            class="link-custom">
                            miguelferreirads458@gmail.com
                        </a>
                    </p>
                </div>

                <div class="col-md-4 mb-3 mb-md-0">
                    <p class="mb-0">
                        Criado por:<br>
                        Lucas Silva e Miguel Ferreira
                    </p>
                </div>

                <div class="col-md-4">
                    <p class="mb-0">
                        GitHub:<br>
                        <i class="bi bi-github"></i>
                        <a href="https://github.com/lukazesz" class="link-custom">Lucas Silva</a> e
                        <a href="https://github.com/miguelsfrds" class="link-custom">Miguel Ferreira</a>
                    </p>
                </div>

            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>