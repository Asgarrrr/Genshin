
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

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@500&family=Roboto:wght@400;500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../Style/style.css">

    </head>
    <body>

        <header class="cha">
            <img src="../Assets/Characters/<?php echo $char["Name"] ?>.png" alt="" class="back">
            <h1><?php echo $char["Name"] ?></h1>
            <span class="smallname">
                <?php echo $char["Name"] ?>
            </span>
            <img src="../Assets/Characters/<?php echo $char["Name"] ?>.png" alt="" class="front">
        </header>

    </body>
</html>