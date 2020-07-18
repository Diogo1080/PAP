<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Ligação á base de Dados -->
    <?php require('ligacao.php'); ?>

    <!-- Ligação aos links e config da Head -->
    <?php include('head.php'); ?>

    <style>
/* Card Socio */
.socio-card{
  background-image: url("img/socio.jpg") ;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  background-blend-mode: overlay;
  
}
    </style>
    
    <title>Hello, world!</title>
  </head>
  <body>
    

    <!-- Container Geral -->
    <div class="container">

    <!-- Header -->
    <center>
        <img src="img/panel.png" style="width:40%;">
    </center> 

        <!-- Card -->
        <div class="card">

            <!-- Título do Card -->
            <div class="card-header text-center">
              <h4>Bem-Vindo! [Nome de Sócio] - [Nº de Sócio]</h4>
            </div>

            <!-- Corpo do Card -->
            <div class="card-body socio-card">

                <div class="row">

                    <div class="col-md-4">
                        <form>
                            <div class="form-group">
                              <label for="exampleFormControlFile1">Example file input</label>
                              <input type="file" class="form-control-file" id="exampleFormControlFile1">
                            </div>
                          </form>
                    </div>
                
                    <div class="col-md-8">
                            <div class="form-row">
                              <div class="form-group col-md-6">
                                <label for="inputEmail4">Nome</label>
                                <input type="email" class="form-control" id="inputEmail4">
                              </div>
                              <div class="form-group col-md-6">
                                <label for="inputPassword4">CC</label>
                                <input type="text" class="form-control" id="inputPassword4">
                              </div>
                            </div>
 
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                  <label for="inputEmail4">Sexo</label>
                                  <select class="form-control selects">
                                    <option>Default select</option>
                                  </select>
                                </div>
                                <div class="form-group col-md-6">
                                  <label for="inputPassword4">Tipo de Utilizador</label>
                                  <select class="form-control selects">
                                    <option>Default select</option>
                                  </select>
                                </div>
                              </div>

                            <div class="form-group">
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck">
                                <label class="form-check-label" for="gridCheck">
                                  Receber e-Mails sobre o Clube
                                </label>
                              </div>
                            </div>
                    </div>
                  </div>

                  <!-- Divisão dos Cards -->
                  <hr>

                  <div class="form-group">
                    <label for="inputAddress">Morada</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="Insira a sua Morada">
                  </div>
                  <div class="form-group">
                    <label for="inputAddress2">Localidade</label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="Insira a sua Localidade">
                  </div>
                  <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="inputCity">Concelho</label>
                      <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                      <label for="inputState">Freguesia</label>
                      <input type="text" class="form-control" id="inputState">
                    </div>
                    <div class="form-group col-md-2">
                      <label for="inputZip">Código-Postal</label>
                      <input type="text" class="form-control" id="inputZip">
                    </div>
                  </div>

                  <!-- Divisão dos Cards -->
                  <hr>

                  <div class="form-group">
                    <label for="inputAddress2">E-Mail</label>
                    <input type="text" class="form-control" id="inputAddress2" placeholder="Insira o seu E-Mail">
                  </div>
                  <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="inputEmail4">Telemóvel</label>
                      <input type="email" class="form-control" id="inputEmail4">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="inputPassword4">Telefone</label>
                      <input type="text" class="form-control" id="inputPassword4">
                    </div>
                  </div>
                </div>
            </div>

            <!-- Footer do Card -->
            <div class="card-footer text-center">
                © Estrela Azul FC - 2020
            </div>

        </div>

    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>