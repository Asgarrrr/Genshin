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
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="../Style/style.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="../Assets/Logo_CHS_Pure-min.png" alt="Genshin Logo" width="80">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#extend" aria-expanded="false" >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="extend">
                <ul class="navbar-nav mb-2 mb-lg-0">

                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../">Characters</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="Weapon.php">Weapons</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="Artifacts.php">Artifacts</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>



    <div class="row loginform">
        <div class="col p-0 text-center d-flex justify-content-center align-items-center display-none"
            style="background-color: #01060E;">
            <img src="../Assets/login.svg" class="w-75">
        </div>
        <div class="col p-0 d-flex justify-content-center align-items-center flex-column w-100">
            <form class="w-75" action="#" method="post">
                <h2>Register</h2>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" name="username" placeholder="username" required="">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" placeholder="password" required="">
                </div>
                <div class="mb-3">
                    <label for="passwordCheck" class="form-label">Confirm password</label>
                    <input type="password" class="form-control" name="passwordCheck" placeholder="password" required="">
                </div>
                <p class="text-end">Already have an account ? <a href="login.php">Sign in</a></p>
                <button type="submit" name="submit" class="btn btn-primary btn-lg btn-block mt-3">Register Now</button>
            </form>
        </div>
    </div>
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