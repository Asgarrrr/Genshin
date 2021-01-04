<?php
    try {
        session_start();
        include("PHP/DB.php");
        $stmt = $dbh->query('SELECT * FROM Weapons where `Name` = "'.$_GET["Name"].'"');
       if (!$datastmt = $stmt->fetch()) {
        // —— If no weapon data found, redirect to home page.
        echo "<script> window.location.href = 'Weapons.php'; </script>";
       }

    } catch(\Throwable $th)  {
        print "Erreur ! — " . $th->getMessage() . "<br/>";
        die();
    }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Genshin — <?php echo $datastmt["Name"]?></title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="Style/style.css">
    </head>
    <body class="hero">

    <?php include("Navbar.php") ?>

    <header class="cha">
        <img src="Assets/Weapons/<?php echo $_GET["Name"] ?>.png" alt="" class="back">
        <h1 id="name" class="weaponName"><?php echo $_GET["Name"] ?></h1>
        <img src="Assets/Weapons/<?php echo $_GET["Name"] ?>.png" alt="" class="front">
    </header>

    <section class="container mb-4">

        <div class="tags">
            <div><?php echo $datastmt["Rarity"]?> ★</div>
            <span>—</span><div><?php echo $datastmt["Location"]?></div>
        </div>

        <h1 class="subtitle">Information</h1>
        <div class="row row-cols-1 row-cols-sm-2">
            <div class="col">
                <div class="card primary skillcard">
                    <div class="skills-data-item">
                        <span>Attack Value</span><span><?php echo $datastmt['MSValue'] ?></span>
                    </div>
                    <div class="skills-data-item">
                        <span>Sub stats</span><span><?php echo $datastmt['SStat'] ?></span>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card primary card-body">
                    <h6 class="card-subtitle mb-2 text-muted"><?php echo $datastmt['Passive'] ?></h6>
                    <p><?php echo $datastmt['Description'] ?></p>
                </div>
            </div>

    </body>
</html>