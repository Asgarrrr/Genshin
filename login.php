<?php

    try {
        session_start();
        include("PHP/DB.php");
        if($_SESSION["_ID"])
            echo '<meta http-equiv="refresh" content="url=User.php" />';
    } catch (\Throwable $th) {
        print "Erreur ! — " . $e->getMessage() . "<br/>";
        die();
    }

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Genshin — Login</title>

        <!-- —— CSS ———————————————————————————————————————————————————————— -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <link rel="stylesheet" href="Style/style.css">
    </head>

    <body>

        <?php include("navbar.php"); ?>

        <div class="row loginform">
            <div class="col p-0 text-center d-flex justify-content-center align-items-center display-none" style="background-color: #01060E;">
                <img src="Assets/login.svg" class="w-75">
            </div>
            <div class="col p-0 d-flex justify-content-center align-items-center flex-column w-100">
                <form class="w-75" action="#" method="post">
                    <h2>Login</h2>
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control" name="username" placeholder="Username" required="">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password" required="">
                        <p id="formInfo"></p>
                    </div>
                    <p class="text-end">No account yet ? <a href="Register.php">Register</a></p>
                    <button type="submit" name="submit" class="btn btn-primary btn-lg btn-block mt-3">Login Now</button>
                </form>
            </div>
        </div>

    </body>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"> </script>

</html>


<?php

    if (isset($_POST["submit"])) {
        if((!empty($_POST['password'])) && (!empty($_POST['username']))){
            $stmt = $dbh->prepare('SELECT _ID, Password, Mail FROM User WHERE Pseudo = ?');
            $stmt->execute(array($_POST['username']));
            $stmt = $stmt->fetch();

            if (!$stmt) {
                echo 'Wrong username or password !';
            } else {

                if (password_verify($_POST['password'], $stmt['Password'])) {
                    session_start();
                        $_SESSION['_ID'] = $stmt['_ID'];
                        $_SESSION['pseudo'] = $_POST['username'];
                        $_SESSION['Mail'] = $stmt['Mail'];


                        echo "<script> window.location.href = 'User.php'; </script>";

                } else  echo "<script>document.getElementById('formInfo').innerHTML = 'Wrong username or password' </script>";
            }
        }
    }

?>