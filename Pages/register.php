<?php

    try {

        session_start();
        include("../PHP/DB.php");

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
        <title>Genshin — Register</title>    
</head>

<body>
</body>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
</script>

</html>


<?php


    if (isset($_POST["submit"])) {

        if ($_POST['password'] === $_POST['passwordCheck']) {
            $stmt = $dbh->prepare('INSERT INTO User(Pseudo, Password) VALUE(?,? )');
            $stmt->execute(array(
                $_POST['username'],
                password_hash($_POST['password'], PASSWORD_DEFAULT)
            ));
        } else {
            echo "The two passwords do not match";
        }

    }

?>