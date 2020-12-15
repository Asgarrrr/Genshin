<?php

    try {
        include("../PHP/DB.php");


        $stmt = $dbh->prepare("SELECT * FROM Characters WHERE Name= :name");
        $stmt->execute(['name' => $_GET["Name"]]); 
        $user = $stmt->fetch();

        print_r($user);

    } catch (PDOException $e) {
        print "Erreur ! — " . $e->getMessage() . "<br/>";
    }

?>


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
        <img src="../Assets/Characters/Xiao.png" alt="" class="back">
        <h1>Xiao</h1>
        <img src="../Assets/Characters/Xiao.png" alt="" class="front">
    </header>

</body>
</html>