<?php

    try {
        // Start or resume session
        session_start();
        // include database connection
        include("PHP/DB.php");
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

        <!-- —— CSS ———————————————————————————————————————————————————————— -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="Style/style.css">
    </head>

    <body>

        <?php 
            // include navabar
            include("Navbar.php"); ?>

        <div class="row loginform">
            <div class="col p-0 text-center d-flex justify-content-center align-items-center display-none"
                style="background-color: #01060E;">
                <img src="Assets/login.svg" class="w-75">
            </div>
            <div class="col p-0 d-flex justify-content-center align-items-center flex-column w-100">
                <form class="w-75" action="#" method="post">
                    <h2>Register</h2>
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control" name="username" placeholder="Username" required="">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password" required="">
                    </div>
                    <div class="mb-3">
                        <label for="passwordCheck" class="form-label">Confirm password</label>
                        <input type="password" class="form-control" name="passwordCheck" placeholder="Password" required="">
                        <p id="formInfo"></p>
                    </div>
                    <p class="text-end">Already have an account ? <a href="Login.php">Sign in</a></p>
                    <button type="submit" name="submit" class="btn btn-primary btn-lg btn-block mt-3">Register Now</button>
                </form>
            </div>
        </div>

    </body>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"> </script>

</html>

<?php
    // If user send form
    if (isset($_POST["submit"])) {
        // If password input and username input are not empty
        if ($_POST['password'] == $_POST['passwordCheck']) {
            // Prepare and execute user selection in database 
            $stmt = $dbh->prepare('SELECT Pseudo FROM User WHERE Pseudo = ?');
            $stmt->execute(array($_POST['username'],));
            // if no user are found, show error message
            if ($stmt->fetch())
                exit("<script>document.getElementById('formInfo').innerHTML = 'The user already exists'; </script>");
            // Prepare and execute user insertion in database 
            $stmt = $dbh->prepare('INSERT INTO User(Pseudo, Password) VALUE(?,? )');
            $stmt->execute(array(
                $_POST['username'],
                // Hash password
                password_hash($_POST['password'], PASSWORD_DEFAULT)
            ));

        } else echo "<script>document.getElementById('formInfo').innerHTML = 'The two passwords do not match'; </script>";

    }

?>