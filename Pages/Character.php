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

    ?>

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
    <body class="hero">
        <div class="slider slider--first"></div>
        <div class="slider slider--second"></div>

        <header class="cha">
            <img src="../Assets/Character/Portait/<?php echo $_GET["Name"] ?>.webp" alt="" class="back">
            <h1 id="name"><?php echo $_GET["Name"] ?></h1>
            <img src="../Assets/Character/Portait/<?php echo $_GET["Name"] ?>.webp" alt="" class="front">
        </header>

        <!-- <section class="background">
            <p><?php echo $char["Description"]?></p>
        </section> -->

    </body>

    <script src="../JS/gsap.js"></script>
    <script src="../JS/script.js"></script>

    <script>
        localStorage.setItem('fromCharacter', true);
    </script>
</html>