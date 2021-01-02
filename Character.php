<?php

    try {

        session_start();
        include("PHP/DB.php");

        // —— Get character data ———————————————————————————————————————————————

        $charName = $_GET['Name'];

        $stmt = $dbh->prepare("SELECT * FROM Characters WHERE _ID = ?");
        $stmt->execute(array($charName));

        if ($char = $stmt->fetch()) {

            $skill = $dbh->prepare("SELECT * FROM Skills WHERE _IDCharacter = ?");
            $skill->execute(array($_GET['Name']));

            $constellations = $dbh->prepare("SELECT * FROM Constellations WHERE _IDCharacter = ?");
            $constellations->execute(array($_GET['Name']));

            $passives = $dbh->prepare("SELECT * FROM Passives WHERE _IDCharacter = ?");
            $passives->execute(array($_GET['Name']));

            $bestWeapon = $dbh->prepare("SELECT * FROM Weapons WHERE _ID = 1");
            $bestWeapon->execute(array($char['_IDArme']));
            $bestWeapon = $bestWeapon->fetch();

            $bestArt = $dbh->prepare("SELECT * FROM Artefact WHERE _ID IN ( ?, ? )");
            $bestArt->execute(array($char['_IDArtefact'], $char['_IDArtefact2']));
            $bestArt = $bestArt->fetch();



        } else {
            // —— If no character data found, redirect to home page.
            echo "<script> window.location.href = 'index.php'; </script>";
        }
    } catch (\Throwable $th) {
        print "Erreur ! — " . $e->getMessage();
        die();
    }

    ?>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Genshin <?php echo $char["_ID"]; ?></title>

        <!-- —— CSS ———————————————————————————————————————————————————————— -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="Style/style.css">
    </head>

    <body class="hero">
        <!-- Page transition "in" -->
        <div class="slider slider--first"></div>
        <div class="slider slider--second"></div>

        <?php include("Navbar.php") ?>

        <header class="cha">
            <img src="Assets/Character/Portait/<?php echo $_GET["Name"] ?>.png" alt="" class="back">
            <h1 id="name"><?php echo $_GET["Name"] ?></h1>
            <img src="Assets/Character/Portait/<?php echo $_GET["Name"] ?>.png" alt="" class="front">
        </header>

        <section class="container mb-4">

            <div class="tags">
                <div><?php echo $char["WeaponType"]?></div>
                <p>—</p><div><?php echo $char["Element"]?></div>
                <p>—</p><div>Princeps Cretaceus</div>
                <p>—</p><div>Knights of Favonius</div>
            </div>

            <h1 class="subtitle">Story</h1>
            <p class="lore">『 <?php echo $char["Description"]?> 』</p>

            <h1 class="subtitle">Skills</h1>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">

                <?php foreach ($skill as $data) { ?>

                    <div class="col">
                        <div class="card primary skillcard">
                            <div class="p-3 card-body">
                                <h5 class="card-title"><?php echo $data['Name']; ?></h5>
                                <h6 class="card-subtitle mb-2 text-muted"><?php echo $data['Type']; ?></h6>
                                <?php
                                    echo $data['Description'];
                                    $test = json_decode($data['Data']);
                                ?>
                            </div>

                            <?php foreach($test as $item) { ?>
                                <div class="skills-data-item">
                                    <?php foreach ($item as $key => $value) {
                                        echo "<span>$value</span>";
                                    } ?>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                <?php } ?>
            </div>

            <h1 class="subtitle">Pasives</h1>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">

                <?php foreach ($passives as $data) { ?>

                    <div class="col">
                        <div class="card primary skillcard">
                            <div class="p-3 card-body">
                                <h5 class="card-title"><?php echo $data['Name']; ?></h5>
                                <h6 class="card-subtitle mb-2 text-muted"><?php echo $data['Obtention']; ?></h6>
                                <?php
                                    echo $data['Description'];
                                ?>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>

            <h1 class="subtitle">Constellation</h1>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-4">

                <?php
                    $i = 1;
                    foreach ($constellations as $data) { ?>

                    <div class="col">
                        <div class="card primary skillcard">
                            <div class="p-3 card-body">
                                <h5 class="card-title"><?php echo $data['Name']; ?></h5>
                                <h6 class="card-subtitle mb-2 text-muted">Level <?php echo $i++ ?></h6>
                                <?php echo $data['Description']; ?>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>

            <h1 class="subtitle">Equipement</h1>
            <div class="row row-cols-1 row-cols-sm-2">
                <div class="col">
                    <div class="card primary skillcard">
                        <div class="p-3 card-body">
                            <div class="d-flex flex-row">
                                <div class="px-2 w-25">
                                    <a class='portrait mx-4' href='Weapon.php?Name=<?php echo $bestWeapon["Name"] ?>'>
                                        <img class="icon" src="https://rerollcdn.com/GENSHIN/Weapon/NEW/<?php echo str_replace(' ', '_', $bestWeapon["Name"]); ?>.png">
                                    </a>
                                </div>
                                <div class="pt-2">
                                    <h5 class="card-title">Weapon</h5>
                                    <h6 class="card-subtitle text-muted"><?php echo $bestWeapon["Name"]; ?></h6>
                                    <p><small><?php echo $bestWeapon["MSValue"]; ?> Attack — <i><?php echo $bestWeapon["SStat"]; ?></i></small></p>
                                    <p><small><?php echo $bestWeapon["Description"]; ?></small></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card primary skillcard">
                        <div class="p-3 card-body">
                            <div class="d-flex flex-row">
                                <div class="px-2 w-25">
                                    <a class='portrait mx-4'>
                                        <div class="icon artefact" style="background-image: url('Assets/Artifacts/<?php echo $bestArt["_GID"]."_2" ?>.png')"></div>
                                    </a>
                                </div>
                                <div class="pt-2">
                                    <h5 class="card-title">Artifact</h5>
                                    <h6 class="card-subtitle text-muted"><?php echo $bestArt["Name"]; ?></h6>
                                    <small><?php echo $bestArt["2P"]; ?> & <?php echo $bestArt["4P"]; ?> </small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>

    </body>

    <script src="JS/gsap.js"></script>
    <script src="JS/script.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</html>