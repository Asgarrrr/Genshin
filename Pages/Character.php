
<?php

    try {

        include("../PHP/DB.php");

        $stmt = $dbh->prepare("SELECT * FROM Characters where _ID = ?");
        if ($stmt->execute(array($_GET['Name']))) {
            $char = $stmt->fetch();
        } else {
            echo "Not found";
        }
    } catch (\Throwable $th) {
        print "Erreur ! — " . $e->getMessage() . "<br/>";
        die();
    }

    include("../PHP/DB.php"); ?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link rel="stylesheet" href="../Style/style.css">
    </head>
    <body>

        <header class="cha">

            <span class="smallmenu">
                <?php echo $char["Name"] ?>
            </span>

            <img src="../Assets/Characters/<?php echo $char["Name"] ?>.png" alt="" class="back">
            <h1><?php echo $char["Name"] ?></h1>
            <h1 style="emix-blend-mode: color; z-index: 3;"><?php echo $char["Name"] ?></h1>
            <img src="../Assets/Characters/<?php echo $char["Name"] ?>.png" alt="" class="front">
        </header>

    </body>
</html>