<?php include "../PHP/DB.php";
    session_start();
    if(isset($_SESSION["_ID"])){
         echo "<meta http-equiv='refresh' content='0;url=../' />";
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Se connecter</title>
    <link rel="stylesheet" href="../Style/style.css">
</head>
<body>
    <form action="" method="post">
        <p>
            <label for="username">Nom de compte : </label>
            <input type="text" name="username" id="username">
        </p>
        <p>
            <label for="password">Mot de passe : </label>
            <input type="text" name="password" id="password">
        </p>
        <p>
            <input type="submit" value="connexion">
            <input type="submit" value="Deconnexion" name="Logout">
        </p>  
    </form>


    <?php
        if(!isset($_SESSION["_ID"])){
            if((isset($_POST['password'])) && (isset($_POST['username']))){
                $request = $dbh->query('SELECT * FROM `User` WHERE `Pseudo` ="'.$_POST["username"].'" AND `Password` = "'.$_POST["password"].'"');
                $dataRequest = $request->fetch();
                if(($_POST['username'] = $dataRequest['Pseudo']) && ($_POST['password'] = $dataRequest['Password'])){
                    session_start();
                    $_SESSION["username"] = $_POST["username"];
                    $_SESSION["_ID"] = $dataRequest['_ID'];
                    echo "<meta http-equiv='refresh' content='0;url=../' />";
                }
                elseif(isset($_POST['Logout'])){
                    unset($_SESSION);
                }
                elseif($dataRequest == NULL){
                    echo"<p>Vos identifiants sont erronés</p>";
                }  
            }
        }
    ?>
</body>
</html>
