<?php

    try {

        session_start();
        include("PHP/DB.php");
        $stmt = $dbh->query("SELECT * FROM Artefact")->fetchAll();
    } catch (\Throwable $th) {
        print "Erreur ! — " . $e->getMessage();
        die();
    }

?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Genshin — Artifacts</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <link rel="stylesheet" href="Style/style.css">
    </head>

    <body>

        <?php include("navbar.php"); ?>

        <main class="container">

            <h1 class="pb-4">Artifacts Set List</h1>

                <?php foreach ($stmt as $u) { ?>

                    <div class='card secondary card-body p-4 mb-3'>
                        <h4 class='pb-3'><?php $u['Name']; ?></h4>

                        <div class="data-list pb-4" style="justify-content: space-evenly;">
                            <?php for ($i = 1 ; $i < $u["Pieces"]+1; $i++) { ?>

                                <a class='portrait'>
                                    <div class="icon artefact" style="background-image: url('Assets/Artifacts/<?php echo $u["_GID"]."_".$i ?>.png')"></div>
                                </a>

                            <?php } ?>

                        </div>

                        <dl class="row">
                            <dt class="col-sm-3">2 Piece Bonus</dt>
                            <dd class="col-sm-9"><?php echo $u["2P"] ?></dd>

                            <dt class="col-sm-3">4 Piece Bonus</dt>
                            <dd class="col-sm-9"><?php echo $u["4P"] ?></p></dd>

                        </dl>

                    </div>

                <?php } ?>

            </div>
        </main>
    </body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</html>