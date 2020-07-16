<!-- Ligação á base de Dados -->
<?php require('ligacao.php'); ?>

<html>

<!-- Ligação aos links e config da Head -->
<?php include('head.php'); ?>
<body>

	<div class="container">

        <!-- Conexão da navbar -->
	      <?php include('navbar_dashboard.php'); ?>

         <center style=" margin-top:25px;"><h1>Título da página</h1></center>

        <!-- Conteúdo da página -->
        <div class="card" style=" margin-top:25px;">

            <!-- Titulo + Botões  -->
            <div class="card-header">
                <h3 class="panel-title">Titulo ou Subtítulo</h3>
            </div>

            <!-- Tabelas / Forms / TUDO -->
            <div class="card-body">

                <h5 class="card-title">Exemplo Texto</h5>
                <p class="card-text">I don't hate Chris Martin. I don`t know him, know what I mean? I just thinks he`s a bit giddy. He ought to calm down, he isn`t gonna save the world.</p>
                <p class="card-text">The Beatles play guitars, we play guitars. The Beatles got hair, we've got hair. The Beatles got arms, we've got arms.</p>
                <hr>
                <h5 class="card-title">Exemplo Botões</h5>
                <a href="#" class="btn btn-default">Botão1</a>
                <button type="button" class="btn btn-success">Sucesso</button>
                <button type="button" class="btn btn-danger">Erro</button>
                <button type="button" class="btn btn-warning">Aviso</button>
                <hr>
                <h5 class="card-title">Exemplo tabela</h5>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tab1</th>
                        <th scope="col">Tab2</th>
                        <th scope="col">Tab3</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        <th scope="row">1</th>
                        <td>Two Door Cinema Club</td>
                        <td>Fatboy Slim </td>
                        <td>Robbie Williams</td>
                        </tr>
                        <tr>
                        <th scope="row">2</th>
                        <td>Guy Chambers</td>
                        <td>The Cure</td>
                        <td>Hiltop Hoods</td>
                        </tr>
                        <tr>
                        <th scope="row">3</th>
                        <td>Kasabian</td>
                        <td>Liam Gallagher</td>
                        <td>Steely Dan</td>
                        <tr>
                        <th scope="row">4</th>
                        <td>Elton John</td>
                        <td>Muse</td>
                        <td>Royal Blood</td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>

	      
</body>
</html>