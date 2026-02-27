<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Gerenciamento de Jogos</title>
    <link rel="shortcut icon" href="assets/imagens/logo kronos.png" type="image/x-icon">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <link rel="stylesheet" href="css/estiloPaginaIndex.css">
</head>

<body>

    <!-- NAVBAR -->
    <header>
        <nav class="navbar navbar-dark custom-navbar">
            <div class="container justify-content-center">
                <a class="navbar-brand d-flex align-items-center" href="#">
                    <img src="assets/images/logo kronos.png" alt="Logo" width="60" class="me-2">
                    <span class="logo-text">Kronos</span>
                </a>
            </div>
        </nav>
    </header>

    <!-- CONTEÚDO -->
    <main>
        <div class="container text-center mt-5">

            <h3 class="mb-4 text-light">
                Seja bem-vindo ao sistema de Jogos!
            </h3>

            <!-- WRAPPER DO CARROSSEL -->
            <div class="carousel-wrapper">

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

                    </div>

                    <button class="carousel-control-prev"
                        type="button"
                        data-bs-target="#carouselJogos"
                        data-bs-slide="prev">

                        <span class="carousel-control-prev-icon"></span>
                    </button>

                    <button class="carousel-control-next"
                        type="button"
                        data-bs-target="#carouselJogos"
                        data-bs-slide="next">

                        <span class="carousel-control-next-icon"></span>
                    </button>

                </div>
            </div>

            <!-- BOTÕES -->
            <div class="buttons mt-4">
                <a href="listarJogos" class="btn btn-primary btn-lg">
                    Listar Jogo
                </a>

                <a href="cadastrarJogo" class="btn btn-success btn-lg">
                    + Adicionar Jogo
                </a>
            </div>

        </div>
    </main>

    <!-- FOOTER -->
    <footer class="footer-dark py-4">
        <div class="container">
            <div class="row text-center align-items-center">

                <div class="col-md-4 footer-col">
                    <p class="mb-0">
                        contato:
                        <a href="#" class="link-custom">emailPessoa1</a><br>
                        <a href="#" class="link-custom">emailPessoa2</a>
                    </p>
                </div>

                <div class="col-md-4 footer-col">
                    <p class="mb-0">
                        criado por:<br>
                        Lucas Silva e Miguel Ferreira</a>
                    </p>
                </div>

                <div class="col-md-4">
                    <p class="mb-0">
                        rede social:<br>
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