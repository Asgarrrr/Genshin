<?php

    try {

        session_start();

        include("../PHP/DB.php");
        $stmt = $dbh->query("SELECT * FROM Artefact")->fetchAll(\PDO::FETCH_ASSOC);
    } catch (\Throwable $th) {
        print "Erreur ! — " . $e->getMessage() . "<br/>";
        die();
    }

?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Genshin — Database</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <link rel="stylesheet" href="../Style/style.css">
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="../Assets/Logo_CHS_Pure-min.png" alt="Genshin Logo" width="80">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-expanded="false" >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="../">Characters</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Weapon.php">Weapons</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Artifact.php">Artifacts</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main class="container">

        <h1 class="pb-4">Artifacts Set List</h1>



                <?php foreach ($stmt as $u) {

                    echo "<div class='card secondary card-body p-4 mb-3'>";
                    echo "<h4 class='pb-3'>".$u['Name']."</h4>"; ?>

                    <div class="data-list pb-4" style="justify-content: space-evenly;">
                        <?php for ($i = 1 ; $i < $u["Pieces"]+1; $i++) { ?>

                            <a class='portrait' data-href='Pages/Character.php?Name=<?php echo $u["_ID"] ?>'>
                                <div class="icon artefact" style="background-image: url('../Assets/Artifacts/<?php echo $u["_GID"]."_".$i ?>.png')"></div>
                            </a>

                        <?php } ?>

                    </div>

                    <dl class="row">
  <dt class="col-sm-3">2 Piece Bonus</dt>
  <dd class="col-sm-9"><?php echo $u["2P"] ?></dd>

  <dt class="col-sm-3">4 Piece Bonus</dt>
  <dd class="col-sm-9">
    <p><?php echo $u["4P"] ?></p>
  </dd>

</dl>

                        </div>

                    <?php } ?>




            </div>
        </main>
    </body>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</html>