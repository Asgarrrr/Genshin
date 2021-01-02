<?php
    try {
        session_start();

        include("PHP/DB.php");
        $stmt = $dbh->query('SELECT * FROM Weapons where `Name` ="'.$_GET["Name"].'"');
        $datastmt = $stmt->fetch();
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
    <title>Weapon description</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="Style/style.css">
</head>
<body>
    <main class="container">
    <h1 class="pb-4"><?php echo"Weapon : ".$_GET["Name"];?></h1>
    <img src="Assets/Weapons/Trier/<?php echo $datastmt["Name"]?>.png">
    <h1 class="pb-4"><?php echo"Rarity : ".$datastmt['Rarity']." Stars";?></h1>
    <h1 class="pb-4"><?php echo"Attack Value : ".$datastmt['MSValue'];?></h1>
    <h1 class="pb-4"><?php echo"Sub stats : ".$datastmt['SStat'];?></h1>
    <h1 class="pb-4"><?php echo"Passive : ".$datastmt['Passive'];?></h1>
    <h1 class="pb-4"><?php echo"Description : ".$datastmt['Description'];?></h1>
    <h1 class="pb-4"><?php echo"How to obtain : ".$datastmt['Location'];?></h1>

</body>
</html>