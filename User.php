<?php

    try {
        session_start();

        if (!isset($_SESSION["_ID"]))
            echo "<script> window.location.href = 'Login.php'; </script>";

        include("PHP/DB.php");

        $stmt = $dbh->prepare("SELECT * FROM Box where _IDUser = ?");
        $stmt->execute(array($_SESSION["_ID"]));


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
        <title>Genshin — Database</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <link rel="stylesheet" href="Style/style.css">
    </head>
    <body>

        <?php 
            // include navabar
            include("Navbar.php"); ?>

        <main class="container">
            <h5>Hi,</h5>
            <h1 class="display-5"><?php echo $_SESSION["pseudo"]; ?></h1>
            <h6 class="text-secondary">Dashboard</h6>

            <div class="card secondary mt-4">
                <div class="card-body">
                    <h4 class="card-title">Informations</h4>

                    <?php 
                        // If action is set to 'edit'
                        if (isset($_GET['action']) && $_GET['action'] == "edit") { ?>
                        <form method="POST">
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" class="form-control" name="username" value="<?php echo $_SESSION["pseudo"] ?>">
                            </div>
                            <div class="mb-3">
                                <label for="mail" class="form-label">Mail address</label>
                                <input type="email" class="form-control" name="mail" value="<?php echo $_SESSION["Mail"] ?>">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Password" required="">
                            </div>
                            <div class="mb-3">
                                <label for="passwordCheck" class="form-label">Confirm password</label>
                                <input type="password" class="form-control" name="passwordCheck" placeholder="Confirm password" required="">
                                <p id="formInfo"></p>
                            </div>
                            <button type="submit" class="btn btn-primary" name="update">Submit</button>
                            <a class="btn btn-secondary" href="User.php" role="button">Cancel</a>
                        </form>


                    <?php } else { ?>

                        <a class="float-end btn btn-outline-danger" href="?action=disconnection" role="button">Disconnection</a>
                        <a class="float-end btn btn-outline-light me-3" href="?action=edit" role="button">Edit Data</a>

                        <h3><?php echo $_SESSION["pseudo"]; ?></h4>
                        <h6><?php echo $_SESSION["Mail"]; ?></h6>

                        <form class="float-end form-check" method="get">
                            <input class="form-check-input" type="checkbox" name="checkbox">
                            <label class="form-check-label" for="checkbox">
                                Delete your account
                            </label>
                            <input class="btn btn-outline-danger ms-3" type="submit" value="Delete" Name="delete">
                        </form>
                    <?php } ?>
                </div>
            </div>

            <div class="card secondary mt-4">
                <div class="card-body">
                    <h4 class="card-title">Box</h4>
                    <h6 class="card-subtitle mb-4 text-muted">Your dear characters</h6>
                    <div class="data-list">

                        <?php foreach ($stmt as $u) { ?>
                            <a class='portrait' data-href='Character.php?Name=<?php echo $u["_IDCharacter"] ?>'>
                                <div class="icon" style="background-image: url('Assets/Character/Faces/<?php echo $u["_IDCharacter"] ?>.png')"></div>
                                <h2 class='name'><?php echo $u["_IDCharacter"] ?></h2>
                            </a>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </main>
    </body>


    <!-- <script src="JS/script.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <?php
        // If action is set to edit
        if (isset($_GET['action']) && $_GET['action'] == "edit" && isset($_POST["update"])) {
            // If user's password is correct  
            if ($_POST['password'] == $_POST['passwordCheck']) {
                // Select password of user
                $stmt = $dbh->prepare('SELECT Password FROM User WHERE _ID = ?');
                $stmt->execute(array($_SESSION["_ID"]));
                $stmt = $stmt->fetch();
                // Verifie user password 
                if (password_verify($_POST['password'], $stmt['Password'])) {
                    $stmt = $dbh->prepare("UPDATE User SET Pseudo = ?, Mail = ? WHERE _ID = ?");
                    $stmt->execute(
                        array(
                            $_POST["username"],
                            $_POST["mail"],
                            $_SESSION["_ID"]
                        )
                    );
                    // Store user data
                    $_SESSION["pseudo"] = $_POST["username"];
                    $_SESSION["Mail"] =  $_POST["mail"];
                    echo "<script> window.location.href = 'User.php'; </script>";
                // Show error message
                } else echo "<script>document.getElementById('formInfo').innerHTML = 'Wrong password'; </script>";
            } else echo "<script>document.getElementById('formInfo').innerHTML = 'The two passwords do not match'; </script>";;
        }
        // If acion is set on "disconnection"
        if (isset($_GET['action']) && $_GET['action'] == "disconnection") {
            // Distroy session
            session_destroy();
            echo "<script> document.location.reload(); </script>";
        }
        // If user has selected the checkbox and clic and delete button
        if(isset($_GET["checkbox"]) && isset($_GET["delete"])) {
            // Prepare the user deletion in database and remove his box
            $stmt = $dbh->prepare("DELETE FROM User WHERE _ID = ?");
            $stmt->execute(array($_SESSION['_ID']));

            $stmt = $dbh->prepare("DELETE FROM Box WHERE _IDUser = ?");
            $stmt->execute(array($_SESSION['_ID']));
            // Destroy the user session  
            session_destroy();

            echo "<script> window.location.href = 'index.php'; </script>";
        }

    ?>

</html>